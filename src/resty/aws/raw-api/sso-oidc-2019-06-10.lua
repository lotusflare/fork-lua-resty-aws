local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-06-10",
    "endpointPrefix": "oidc",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "SSO OIDC",
    "serviceFullName": "AWS SSO OIDC",
    "serviceId": "SSO OIDC",
    "signatureVersion": "v4",
    "signingName": "awsssooidc",
    "uid": "sso-oidc-2019-06-10"
  },
  "operations": {
    "CreateToken": {
      "name": "CreateToken",
      "http": {
        "method": "POST",
        "requestUri": "/token"
      },
      "input": {
        "shape": "CreateTokenRequest"
      },
      "output": {
        "shape": "CreateTokenResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidClientException"
        },
        {
          "shape": "InvalidGrantException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "UnsupportedGrantTypeException"
        },
        {
          "shape": "InvalidScopeException"
        },
        {
          "shape": "AuthorizationPendingException"
        },
        {
          "shape": "SlowDownException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ExpiredTokenException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.</p>",
      "authtype": "none"
    },
    "RegisterClient": {
      "name": "RegisterClient",
      "http": {
        "method": "POST",
        "requestUri": "/client/register"
      },
      "input": {
        "shape": "RegisterClientRequest"
      },
      "output": {
        "shape": "RegisterClientResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidScopeException"
        },
        {
          "shape": "InvalidClientMetadataException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.</p>",
      "authtype": "none"
    },
    "StartDeviceAuthorization": {
      "name": "StartDeviceAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/device_authorization"
      },
      "input": {
        "shape": "StartDeviceAuthorizationRequest"
      },
      "output": {
        "shape": "StartDeviceAuthorizationResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidClientException"
        },
        {
          "shape": "UnauthorizedClientException"
        },
        {
          "shape": "SlowDownException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Initiates device authorization by requesting a pair of verification codes from the authorization service.</p>",
      "authtype": "none"
    }
  },
  "shapes": {
    "AccessToken": {
      "type": "string"
    },
    "AuthCode": {
      "type": "string"
    },
    "ClientId": {
      "type": "string"
    },
    "ClientName": {
      "type": "string"
    },
    "ClientSecret": {
      "type": "string"
    },
    "ClientType": {
      "type": "string"
    },
    "CreateTokenRequest": {
      "type": "structure",
      "required": [
        "clientId",
        "clientSecret",
        "grantType",
        "deviceCode"
      ],
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p>The unique identifier string for each client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p>A secret string generated for the client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>"
        },
        "grantType": {
          "shape": "GrantType",
          "documentation": "<p>Supports grant types for authorization code, refresh token, and device code request.</p>"
        },
        "deviceCode": {
          "shape": "DeviceCode",
          "documentation": "<p>Used only when calling this API for the device code grant type. This short-term code is used to identify this authentication attempt. This should come from an in-memory reference to the result of the <a>StartDeviceAuthorization</a> API.</p>"
        },
        "code": {
          "shape": "AuthCode",
          "documentation": "<p>The authorization code received from the authorization service. This parameter is required to perform an authorization grant request to get access to a token.</p>"
        },
        "refreshToken": {
          "shape": "RefreshToken",
          "documentation": "<p>The token used to obtain an access token in the event that the access token is invalid or expired. This token is not issued by the service.</p>"
        },
        "scope": {
          "shape": "Scopes",
          "documentation": "<p>The list of scopes that is defined by the client. Upon authorization, this list is used to restrict permissions when granting an access token.</p>"
        },
        "redirectUri": {
          "shape": "URI",
          "documentation": "<p>The location of the application that will receive the authorization code. Users authorize the service to send the request to this location.</p>"
        }
      }
    },
    "CreateTokenResponse": {
      "type": "structure",
      "members": {
        "accessToken": {
          "shape": "AccessToken",
          "documentation": "<p>An opaque token to access AWS SSO resources assigned to a user.</p>"
        },
        "tokenType": {
          "shape": "TokenType",
          "documentation": "<p>Used to notify the client that the returned token is an access token. The supported type is <code>BearerToken</code>.</p>"
        },
        "expiresIn": {
          "shape": "ExpirationInSeconds",
          "documentation": "<p>Indicates the time in seconds when an access token will expire.</p>"
        },
        "refreshToken": {
          "shape": "RefreshToken",
          "documentation": "<p>A token that, if present, can be used to refresh a previously issued access token that might have expired.</p>"
        },
        "idToken": {
          "shape": "IdToken",
          "documentation": "<p>The identifier of the user that associated with the access token, if present.</p>"
        }
      }
    },
    "DeviceCode": {
      "type": "string"
    },
    "ExpirationInSeconds": {
      "type": "integer"
    },
    "GrantType": {
      "type": "string"
    },
    "IdToken": {
      "type": "string"
    },
    "IntervalInSeconds": {
      "type": "integer"
    },
    "LongTimeStampType": {
      "type": "long"
    },
    "RefreshToken": {
      "type": "string"
    },
    "RegisterClientRequest": {
      "type": "structure",
      "required": [
        "clientName",
        "clientType"
      ],
      "members": {
        "clientName": {
          "shape": "ClientName",
          "documentation": "<p>The friendly name of the client.</p>"
        },
        "clientType": {
          "shape": "ClientType",
          "documentation": "<p>The type of client. The service supports only <code>public</code> as a client type. Anything other than public will be rejected by the service.</p>"
        },
        "scopes": {
          "shape": "Scopes",
          "documentation": "<p>The list of scopes that are defined by the client. Upon authorization, this list is used to restrict permissions when granting an access token.</p>"
        }
      }
    },
    "RegisterClientResponse": {
      "type": "structure",
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p>The unique identifier string for each client. This client uses this identifier to get authenticated by the service in subsequent calls.</p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p>A secret string generated for the client. The client will use this string to get authenticated by the service in subsequent calls.</p>"
        },
        "clientIdIssuedAt": {
          "shape": "LongTimeStampType",
          "documentation": "<p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> were issued.</p>"
        },
        "clientSecretExpiresAt": {
          "shape": "LongTimeStampType",
          "documentation": "<p>Indicates the time at which the <code>clientId</code> and <code>clientSecret</code> will become invalid.</p>"
        },
        "authorizationEndpoint": {
          "shape": "URI",
          "documentation": "<p>The endpoint where the client can request authorization.</p>"
        },
        "tokenEndpoint": {
          "shape": "URI",
          "documentation": "<p>The endpoint where the client can get an access token.</p>"
        }
      }
    },
    "Scope": {
      "type": "string"
    },
    "Scopes": {
      "type": "list",
      "member": {
        "shape": "Scope"
      }
    },
    "StartDeviceAuthorizationRequest": {
      "type": "structure",
      "required": [
        "clientId",
        "clientSecret",
        "startUrl"
      ],
      "members": {
        "clientId": {
          "shape": "ClientId",
          "documentation": "<p>The unique identifier string for the client that is registered with AWS SSO. This value should come from the persisted result of the <a>RegisterClient</a> API operation.</p>"
        },
        "clientSecret": {
          "shape": "ClientSecret",
          "documentation": "<p>A secret string that is generated for the client. This value should come from the persisted result of the <a>RegisterClient</a> API operation.</p>"
        },
        "startUrl": {
          "shape": "URI",
          "documentation": "<p>The URL for the AWS SSO user portal. For more information, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html\">Using the User Portal</a> in the <i>AWS Single Sign-On User Guide</i>.</p>"
        }
      }
    },
    "StartDeviceAuthorizationResponse": {
      "type": "structure",
      "members": {
        "deviceCode": {
          "shape": "DeviceCode",
          "documentation": "<p>The short-lived code that is used by the device when polling for a session token.</p>"
        },
        "userCode": {
          "shape": "UserCode",
          "documentation": "<p>A one-time user verification code. This is needed to authorize an in-use device.</p>"
        },
        "verificationUri": {
          "shape": "URI",
          "documentation": "<p>The URI of the verification page that takes the <code>userCode</code> to authorize the device.</p>"
        },
        "verificationUriComplete": {
          "shape": "URI",
          "documentation": "<p>An alternate URL that the client can use to automatically launch a browser. This process skips the manual step in which the user visits the verification page and enters their code.</p>"
        },
        "expiresIn": {
          "shape": "ExpirationInSeconds",
          "documentation": "<p>Indicates the number of seconds in which the verification code will become invalid.</p>"
        },
        "interval": {
          "shape": "IntervalInSeconds",
          "documentation": "<p>Indicates the number of seconds the client must wait between attempts when polling for a session.</p>"
        }
      }
    },
    "TokenType": {
      "type": "string"
    },
    "URI": {
      "type": "string"
    },
    "UserCode": {
      "type": "string"
    }
  },
  "documentation": "<p>AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that enables a client (such as AWS CLI or a native application) to register with AWS SSO. The service also enables the client to fetch the user’s access token upon successful authentication and authorization with AWS SSO. This service conforms with the OAuth 2.0 based implementation of the device authorization grant standard (<a href=\"https://tools.ietf.org/html/rfc8628\">https://tools.ietf.org/html/rfc8628</a>).</p> <p>For general information about AWS SSO, see <a href=\"https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html\">What is AWS Single Sign-On?</a> in the <i>AWS SSO User Guide</i>.</p> <p>This API reference guide describes the AWS SSO OIDC operations that you can call programatically and includes detailed information on data types and errors.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms such as Java, Ruby, .Net, iOS, and Android. The SDKs provide a convenient way to create programmatic access to AWS SSO and other AWS services. For more information about the AWS SDKs, including how to download and install them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p> </note>"
}
]===]))
