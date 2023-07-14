local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-06-10",
    "endpointPrefix": "portal.sso",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "SSO",
    "serviceFullName": "AWS Single Sign-On",
    "serviceId": "SSO",
    "signatureVersion": "v4",
    "signingName": "awsssoportal",
    "uid": "sso-2019-06-10"
  },
  "operations": {
    "GetRoleCredentials": {
      "name": "GetRoleCredentials",
      "http": {
        "method": "GET",
        "requestUri": "/federation/credentials"
      },
      "input": {
        "shape": "GetRoleCredentialsRequest"
      },
      "output": {
        "shape": "GetRoleCredentialsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns the STS short-term credentials for a given role name that is assigned to the user.</p>",
      "authtype": "none"
    },
    "ListAccountRoles": {
      "name": "ListAccountRoles",
      "http": {
        "method": "GET",
        "requestUri": "/assignment/roles"
      },
      "input": {
        "shape": "ListAccountRolesRequest"
      },
      "output": {
        "shape": "ListAccountRolesResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists all roles that are assigned to the user for a given AWS account.</p>",
      "authtype": "none"
    },
    "ListAccounts": {
      "name": "ListAccounts",
      "http": {
        "method": "GET",
        "requestUri": "/assignment/accounts"
      },
      "input": {
        "shape": "ListAccountsRequest"
      },
      "output": {
        "shape": "ListAccountsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the administrator of the account. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers\">Assign User Access</a> in the <i>AWS SSO User Guide</i>. This operation returns a paginated response.</p>",
      "authtype": "none"
    },
    "Logout": {
      "name": "Logout",
      "http": {
        "method": "POST",
        "requestUri": "/logout"
      },
      "input": {
        "shape": "LogoutRequest"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes the client- and server-side session that is associated with the user.</p>",
      "authtype": "none"
    }
  },
  "shapes": {
    "AccessKeyType": {
      "type": "string"
    },
    "AccessTokenType": {
      "type": "string",
      "sensitive": true
    },
    "AccountIdType": {
      "type": "string"
    },
    "AccountInfo": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "AccountIdType",
          "documentation": "<p>The identifier of the AWS account that is assigned to the user.</p>"
        },
        "accountName": {
          "shape": "AccountNameType",
          "documentation": "<p>The display name of the AWS account that is assigned to the user.</p>"
        },
        "emailAddress": {
          "shape": "EmailAddressType",
          "documentation": "<p>The email address of the AWS account that is assigned to the user.</p>"
        }
      },
      "documentation": "<p>Provides information about your AWS account.</p>"
    },
    "AccountListType": {
      "type": "list",
      "member": {
        "shape": "AccountInfo"
      }
    },
    "AccountNameType": {
      "type": "string"
    },
    "EmailAddressType": {
      "type": "string",
      "max": 254,
      "min": 1
    },
    "ExpirationTimestampType": {
      "type": "long"
    },
    "GetRoleCredentialsRequest": {
      "type": "structure",
      "required": [
        "roleName",
        "accountId",
        "accessToken"
      ],
      "members": {
        "roleName": {
          "shape": "RoleNameType",
          "documentation": "<p>The friendly name of the role that is assigned to the user.</p>",
          "location": "querystring",
          "locationName": "role_name"
        },
        "accountId": {
          "shape": "AccountIdType",
          "documentation": "<p>The identifier for the AWS account that is assigned to the user.</p>",
          "location": "querystring",
          "locationName": "account_id"
        },
        "accessToken": {
          "shape": "AccessTokenType",
          "documentation": "<p>The token issued by the <code>CreateToken</code> API call. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>",
          "location": "header",
          "locationName": "x-amz-sso_bearer_token"
        }
      }
    },
    "GetRoleCredentialsResponse": {
      "type": "structure",
      "members": {
        "roleCredentials": {
          "shape": "RoleCredentials",
          "documentation": "<p>The credentials for the role that is assigned to the user.</p>"
        }
      }
    },
    "ListAccountRolesRequest": {
      "type": "structure",
      "required": [
        "accessToken",
        "accountId"
      ],
      "members": {
        "nextToken": {
          "shape": "NextTokenType",
          "documentation": "<p>The page token from the previous response output when you request subsequent pages.</p>",
          "location": "querystring",
          "locationName": "next_token"
        },
        "maxResults": {
          "shape": "MaxResultType",
          "documentation": "<p>The number of items that clients can request per page.</p>",
          "location": "querystring",
          "locationName": "max_result"
        },
        "accessToken": {
          "shape": "AccessTokenType",
          "documentation": "<p>The token issued by the <code>CreateToken</code> API call. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>",
          "location": "header",
          "locationName": "x-amz-sso_bearer_token"
        },
        "accountId": {
          "shape": "AccountIdType",
          "documentation": "<p>The identifier for the AWS account that is assigned to the user.</p>",
          "location": "querystring",
          "locationName": "account_id"
        }
      }
    },
    "ListAccountRolesResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextTokenType",
          "documentation": "<p>The page token client that is used to retrieve the list of accounts.</p>"
        },
        "roleList": {
          "shape": "RoleListType",
          "documentation": "<p>A paginated response with the list of roles and the next token if more results are available.</p>"
        }
      }
    },
    "ListAccountsRequest": {
      "type": "structure",
      "required": [
        "accessToken"
      ],
      "members": {
        "nextToken": {
          "shape": "NextTokenType",
          "documentation": "<p>(Optional) When requesting subsequent pages, this is the page token from the previous response output.</p>",
          "location": "querystring",
          "locationName": "next_token"
        },
        "maxResults": {
          "shape": "MaxResultType",
          "documentation": "<p>This is the number of items clients can request per page.</p>",
          "location": "querystring",
          "locationName": "max_result"
        },
        "accessToken": {
          "shape": "AccessTokenType",
          "documentation": "<p>The token issued by the <code>CreateToken</code> API call. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>",
          "location": "header",
          "locationName": "x-amz-sso_bearer_token"
        }
      }
    },
    "ListAccountsResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextTokenType",
          "documentation": "<p>The page token client that is used to retrieve the list of accounts.</p>"
        },
        "accountList": {
          "shape": "AccountListType",
          "documentation": "<p>A paginated response with the list of account information and the next token if more results are available.</p>"
        }
      }
    },
    "LogoutRequest": {
      "type": "structure",
      "required": [
        "accessToken"
      ],
      "members": {
        "accessToken": {
          "shape": "AccessTokenType",
          "documentation": "<p>The token issued by the <code>CreateToken</code> API call. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html\">CreateToken</a> in the <i>AWS SSO OIDC API Reference Guide</i>.</p>",
          "location": "header",
          "locationName": "x-amz-sso_bearer_token"
        }
      }
    },
    "MaxResultType": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "NextTokenType": {
      "type": "string"
    },
    "RoleCredentials": {
      "type": "structure",
      "members": {
        "accessKeyId": {
          "shape": "AccessKeyType",
          "documentation": "<p>The identifier used for the temporary security credentials. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the <i>AWS IAM User Guide</i>.</p>"
        },
        "secretAccessKey": {
          "shape": "SecretAccessKeyType",
          "documentation": "<p>The key that is used to sign the request. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the <i>AWS IAM User Guide</i>.</p>"
        },
        "sessionToken": {
          "shape": "SessionTokenType",
          "documentation": "<p>The token used for temporary credentials. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html\">Using Temporary Security Credentials to Request Access to AWS Resources</a> in the <i>AWS IAM User Guide</i>.</p>"
        },
        "expiration": {
          "shape": "ExpirationTimestampType",
          "documentation": "<p>The date on which temporary security credentials expire.</p>"
        }
      },
      "documentation": "<p>Provides information about the role credentials that are assigned to the user.</p>"
    },
    "RoleInfo": {
      "type": "structure",
      "members": {
        "roleName": {
          "shape": "RoleNameType",
          "documentation": "<p>The friendly name of the role that is assigned to the user.</p>"
        },
        "accountId": {
          "shape": "AccountIdType",
          "documentation": "<p>The identifier of the AWS account assigned to the user.</p>"
        }
      },
      "documentation": "<p>Provides information about the role that is assigned to the user.</p>"
    },
    "RoleListType": {
      "type": "list",
      "member": {
        "shape": "RoleInfo"
      }
    },
    "RoleNameType": {
      "type": "string"
    },
    "SecretAccessKeyType": {
      "type": "string",
      "sensitive": true
    },
    "SessionTokenType": {
      "type": "string",
      "sensitive": true
    }
  },
  "documentation": "<p>AWS Single Sign-On Portal is a web service that makes it easy for you to assign user access to AWS SSO resources such as the user portal. Users can get AWS account applications and roles assigned to them and get federated into the application.</p> <p>For general information about AWS SSO, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html\">What is AWS Single Sign-On?</a> in the <i>AWS SSO User Guide</i>.</p> <p>This API reference guide describes the AWS SSO Portal operations that you can call programatically and includes detailed information on data types and errors.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a convenient way to create programmatic access to AWS SSO and other AWS services. For more information about the AWS SDKs, including how to download and install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p> </note>"
}
]===]))
