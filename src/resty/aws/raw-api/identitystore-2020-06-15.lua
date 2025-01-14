local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2020-06-15",
    "endpointPrefix": "identitystore",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "IdentityStore",
    "serviceFullName": "AWS SSO Identity Store",
    "serviceId": "identitystore",
    "signatureVersion": "v4",
    "signingName": "identitystore",
    "targetPrefix": "AWSIdentityStore",
    "uid": "identitystore-2020-06-15"
  },
  "operations": {
    "DescribeGroup": {
      "name": "DescribeGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGroupRequest"
      },
      "output": {
        "shape": "DescribeGroupResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Retrieves the group metadata and attributes from <code>GroupId</code> in an identity store.</p>"
    },
    "DescribeUser": {
      "name": "DescribeUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeUserRequest"
      },
      "output": {
        "shape": "DescribeUserResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Retrieves the user metadata and attributes from <code>UserId</code> in an identity store.</p>"
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
        "shape": "ListGroupsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the attribute name and value of the group that you specified in the search. We only support <code>DisplayName</code> as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including <code>GroupId</code> and group <code>DisplayName</code> in the response.</p>"
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
        "shape": "ListUsersResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the attribute name and value of the user that you specified in the search. We only support <code>UserName</code> as a valid filter attribute path currently, and filter is required. This API returns minimum attributes, including <code>UserId</code> and <code>UserName</code> in the response.</p>"
    }
  },
  "shapes": {
    "AttributePath": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}  ]+"
    },
    "DescribeGroupRequest": {
      "type": "structure",
      "required": [
        "IdentityStoreId",
        "GroupId"
      ],
      "members": {
        "IdentityStoreId": {
          "shape": "IdentityStoreId",
          "documentation": "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
        },
        "GroupId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier for a group in the identity store.</p>"
        }
      }
    },
    "DescribeGroupResponse": {
      "type": "structure",
      "required": [
        "GroupId",
        "DisplayName"
      ],
      "members": {
        "GroupId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier for a group in the identity store.</p>"
        },
        "DisplayName": {
          "shape": "GroupDisplayName",
          "documentation": "<p>Contains the group’s display name value. The length limit is 1024 characters. This value can consist of letters, accented characters, symbols, numbers, punctuation, tab, new line, carriage return, space and non breaking space in this attribute. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the group is created and stored as an attribute of the group object in the identity store.</p>"
        }
      }
    },
    "DescribeUserRequest": {
      "type": "structure",
      "required": [
        "IdentityStoreId",
        "UserId"
      ],
      "members": {
        "IdentityStoreId": {
          "shape": "IdentityStoreId",
          "documentation": "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
        },
        "UserId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier for a user in the identity store.</p>"
        }
      }
    },
    "DescribeUserResponse": {
      "type": "structure",
      "required": [
        "UserName",
        "UserId"
      ],
      "members": {
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>Contains the user’s username value. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers and punctuation. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store.</p>"
        },
        "UserId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier for a user in the identity store.</p>"
        }
      }
    },
    "Filter": {
      "type": "structure",
      "required": [
        "AttributePath",
        "AttributeValue"
      ],
      "members": {
        "AttributePath": {
          "shape": "AttributePath",
          "documentation": "<p>The attribute path used to specify which attribute name to search. Length limit is 255 characters. For example, <code>UserName</code> is a valid attribute path for the <code>ListUsers</code> API, and <code>DisplayName</code> is a valid attribute path for the <code>ListGroups</code> API.</p>"
        },
        "AttributeValue": {
          "shape": "SensitiveStringType",
          "documentation": "<p>Represents the data for an attribute. Each attribute value is described as a name-value pair. </p>"
        }
      },
      "documentation": "<p>A query filter used by <code>ListUsers</code> and <code>ListGroup</code>. This filter object provides the attribute name and attribute value to search users or groups.</p>"
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "Filter"
      }
    },
    "Group": {
      "type": "structure",
      "required": [
        "GroupId",
        "DisplayName"
      ],
      "members": {
        "GroupId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier for a group in the identity store.</p>"
        },
        "DisplayName": {
          "shape": "GroupDisplayName",
          "documentation": "<p>Contains the group’s display name value. The length limit is 1024 characters. This value can consist of letters, accented characters, symbols, numbers, punctuation, tab, new line, carriage return, space and non breaking space in this attribute. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the group is created and stored as an attribute of the group object in the identity store.</p>"
        }
      },
      "documentation": "<p>A group object, which contains a specified group’s metadata and attributes.</p>"
    },
    "GroupDisplayName": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+"
    },
    "Groups": {
      "type": "list",
      "member": {
        "shape": "Group"
      }
    },
    "IdentityStoreId": {
      "type": "string",
      "max": 12,
      "min": 1,
      "pattern": "^d-[0-9a-f]{10}$"
    },
    "ListGroupsRequest": {
      "type": "structure",
      "required": [
        "IdentityStoreId"
      ],
      "members": {
        "IdentityStoreId": {
          "shape": "IdentityStoreId",
          "documentation": "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request to specify how many results to return in one page. The length limit is 50 characters.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request. </p>"
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
          "shape": "Groups",
          "documentation": "<p>A list of <code>Group</code> objects in the identity store.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
        }
      }
    },
    "ListUsersRequest": {
      "type": "structure",
      "required": [
        "IdentityStoreId"
      ],
      "members": {
        "IdentityStoreId": {
          "shape": "IdentityStoreId",
          "documentation": "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request to specify how many results to return in one page. The length limit is 50 characters.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request. </p>"
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
          "shape": "Users",
          "documentation": "<p>A list of <code>User</code> objects in the identity store.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 65535,
      "min": 1,
      "pattern": "^[-a-zA-Z0-9+=/:]*"
    },
    "ResourceId": {
      "type": "string",
      "max": 47,
      "min": 1,
      "pattern": "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"
    },
    "SensitiveStringType": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+",
      "sensitive": true
    },
    "User": {
      "type": "structure",
      "required": [
        "UserName",
        "UserId"
      ],
      "members": {
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>Contains the user’s username value. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers and punctuation. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store.</p>"
        },
        "UserId": {
          "shape": "ResourceId",
          "documentation": "<p>The identifier for a user in the identity store.</p>"
        }
      },
      "documentation": "<p>A user object, which contains a specified user’s metadata and attributes.</p>"
    },
    "UserName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+",
      "sensitive": true
    },
    "Users": {
      "type": "list",
      "member": {
        "shape": "User"
      }
    }
  }
}
]===]))
