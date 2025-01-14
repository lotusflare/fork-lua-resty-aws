local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-09-01",
    "endpointPrefix": "data.mediastore",
    "protocol": "rest-json",
    "serviceAbbreviation": "MediaStore Data",
    "serviceFullName": "AWS Elemental MediaStore Data Plane",
    "serviceId": "MediaStore Data",
    "signatureVersion": "v4",
    "signingName": "mediastore",
    "uid": "mediastore-data-2017-09-01"
  },
  "operations": {
    "DeleteObject": {
      "name": "DeleteObject",
      "http": {
        "method": "DELETE",
        "requestUri": "/{Path+}"
      },
      "input": {
        "shape": "DeleteObjectRequest"
      },
      "output": {
        "shape": "DeleteObjectResponse"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "ObjectNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes an object at the specified path.</p>"
    },
    "DescribeObject": {
      "name": "DescribeObject",
      "http": {
        "method": "HEAD",
        "requestUri": "/{Path+}"
      },
      "input": {
        "shape": "DescribeObjectRequest"
      },
      "output": {
        "shape": "DescribeObjectResponse"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "ObjectNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Gets the headers for an object at the specified path.</p>"
    },
    "GetObject": {
      "name": "GetObject",
      "http": {
        "method": "GET",
        "requestUri": "/{Path+}"
      },
      "input": {
        "shape": "GetObjectRequest"
      },
      "output": {
        "shape": "GetObjectResponse"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "ObjectNotFoundException"
        },
        {
          "shape": "RequestedRangeNotSatisfiableException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Downloads the object at the specified path. If the object’s upload availability is set to <code>streaming</code>, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.</p>"
    },
    "ListItems": {
      "name": "ListItems",
      "http": {
        "method": "GET",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListItemsRequest"
      },
      "output": {
        "shape": "ListItemsResponse"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Provides a list of metadata entries about folders and objects in the specified folder.</p>"
    },
    "PutObject": {
      "name": "PutObject",
      "http": {
        "method": "PUT",
        "requestUri": "/{Path+}"
      },
      "input": {
        "shape": "PutObjectRequest"
      },
      "output": {
        "shape": "PutObjectResponse"
      },
      "errors": [
        {
          "shape": "ContainerNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.</p>",
      "authtype": "v4-unsigned-body"
    }
  },
  "shapes": {
    "ContentRangePattern": {
      "type": "string",
      "pattern": "^bytes=\\d+\\-\\d+/\\d+$"
    },
    "ContentType": {
      "type": "string",
      "pattern": "^[\\w\\-\\/\\.\\+]{1,255}$"
    },
    "DeleteObjectRequest": {
      "type": "structure",
      "required": [
        "Path"
      ],
      "members": {
        "Path": {
          "shape": "PathNaming",
          "documentation": "<p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p>",
          "location": "uri",
          "locationName": "Path"
        }
      }
    },
    "DeleteObjectResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeObjectRequest": {
      "type": "structure",
      "required": [
        "Path"
      ],
      "members": {
        "Path": {
          "shape": "PathNaming",
          "documentation": "<p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p>",
          "location": "uri",
          "locationName": "Path"
        }
      }
    },
    "DescribeObjectResponse": {
      "type": "structure",
      "members": {
        "ETag": {
          "shape": "ETag",
          "documentation": "<p>The ETag that represents a unique instance of the object.</p>",
          "location": "header",
          "locationName": "ETag"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p>The content type of the object.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "ContentLength": {
          "shape": "NonNegativeLong",
          "documentation": "<p>The length of the object in bytes.</p>",
          "location": "header",
          "locationName": "Content-Length"
        },
        "CacheControl": {
          "shape": "StringPrimitive",
          "documentation": "<p>An optional <code>CacheControl</code> header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p> <p>Headers with a custom user-defined value are also accepted.</p>",
          "location": "header",
          "locationName": "Cache-Control"
        },
        "LastModified": {
          "shape": "TimeStamp",
          "documentation": "<p>The date and time that the object was last modified.</p>",
          "location": "header",
          "locationName": "Last-Modified"
        }
      }
    },
    "ETag": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[0-9A-Fa-f]+"
    },
    "GetObjectRequest": {
      "type": "structure",
      "required": [
        "Path"
      ],
      "members": {
        "Path": {
          "shape": "PathNaming",
          "documentation": "<p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p> <p>For example, to upload the file <code>mlaw.avi</code> to the folder path <code>premium\\canada</code> in the container <code>movies</code>, enter the path <code>premium/canada/mlaw.avi</code>.</p> <p>Do not include the container name in this path.</p> <p>If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the <code>premium</code> folder. You then have two subfolders, <code>usa</code> and <code>canada</code>, in the <code>premium</code> folder. </p> <p>There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.</p> <p>For more information about folders and how they exist in a container, see the <a href=\"http://docs.aws.amazon.com/mediastore/latest/ug/\">AWS Elemental MediaStore User Guide</a>.</p> <p>The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. </p>",
          "location": "uri",
          "locationName": "Path"
        },
        "Range": {
          "shape": "RangePattern",
          "documentation": "<p>The range bytes of an object to retrieve. For more information about the <code>Range</code> header, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.</p>",
          "location": "header",
          "locationName": "Range"
        }
      }
    },
    "GetObjectResponse": {
      "type": "structure",
      "required": [
        "StatusCode"
      ],
      "members": {
        "Body": {
          "shape": "PayloadBlob",
          "documentation": "<p>The bytes of the object. </p>"
        },
        "CacheControl": {
          "shape": "StringPrimitive",
          "documentation": "<p>An optional <code>CacheControl</code> header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p> <p>Headers with a custom user-defined value are also accepted.</p>",
          "location": "header",
          "locationName": "Cache-Control"
        },
        "ContentRange": {
          "shape": "ContentRangePattern",
          "documentation": "<p>The range of bytes to retrieve.</p>",
          "location": "header",
          "locationName": "Content-Range"
        },
        "ContentLength": {
          "shape": "NonNegativeLong",
          "documentation": "<p>The length of the object in bytes.</p>",
          "location": "header",
          "locationName": "Content-Length"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p>The content type of the object.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "ETag": {
          "shape": "ETag",
          "documentation": "<p>The ETag that represents a unique instance of the object.</p>",
          "location": "header",
          "locationName": "ETag"
        },
        "LastModified": {
          "shape": "TimeStamp",
          "documentation": "<p>The date and time that the object was last modified.</p>",
          "location": "header",
          "locationName": "Last-Modified"
        },
        "StatusCode": {
          "shape": "statusCode",
          "documentation": "<p>The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.</p>",
          "location": "statusCode"
        }
      },
      "payload": "Body"
    },
    "Item": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ItemName",
          "documentation": "<p>The name of the item.</p>"
        },
        "Type": {
          "shape": "ItemType",
          "documentation": "<p>The item type (folder or object).</p>"
        },
        "ETag": {
          "shape": "ETag",
          "documentation": "<p>The ETag that represents a unique instance of the item.</p>"
        },
        "LastModified": {
          "shape": "TimeStamp",
          "documentation": "<p>The date and time that the item was last modified.</p>"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p>The content type of the item.</p>"
        },
        "ContentLength": {
          "shape": "NonNegativeLong",
          "documentation": "<p>The length of the item in bytes.</p>"
        }
      },
      "documentation": "<p>A metadata entry for a folder or object.</p>"
    },
    "ItemList": {
      "type": "list",
      "member": {
        "shape": "Item"
      }
    },
    "ItemName": {
      "type": "string",
      "pattern": "[A-Za-z0-9_\\.\\-\\~]+"
    },
    "ItemType": {
      "type": "string",
      "enum": [
        "OBJECT",
        "FOLDER"
      ]
    },
    "ListItemsRequest": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "ListPathNaming",
          "documentation": "<p>The path in the container from which to retrieve items. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p>",
          "location": "querystring",
          "locationName": "Path"
        },
        "MaxResults": {
          "shape": "ListLimit",
          "documentation": "<p>The maximum number of results to return per API request. For example, you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. Although 2,000 items match your request, the service returns no more than the first 500 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) The service might return fewer results than the <code>MaxResults</code> value.</p> <p>If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 1,000 results per page.</p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token that identifies which batch of results that you want to see. For example, you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. The service returns the first batch of results (up to 500) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListItems</code> request a second time and specify the <code>NextToken</code> value.</p> <p>Tokens expire after 15 minutes.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        }
      }
    },
    "ListItemsResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "ItemList",
          "documentation": "<p>The metadata entries for the folders and objects at the requested path.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token that can be used in a request to view the next set of results. For example, you submit a <code>ListItems</code> request that matches 2,000 items with <code>MaxResults</code> set at 500. The service returns the first batch of results (up to 500) and a <code>NextToken</code> value that can be used to fetch the next batch of results.</p>"
        }
      }
    },
    "ListLimit": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "ListPathNaming": {
      "type": "string",
      "max": 900,
      "min": 0,
      "pattern": "/?(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}(?:[A-Za-z0-9_\\.\\-\\~]+)?/?"
    },
    "NonNegativeLong": {
      "type": "long",
      "min": 0
    },
    "PaginationToken": {
      "type": "string"
    },
    "PathNaming": {
      "type": "string",
      "max": 900,
      "min": 1,
      "pattern": "(?:[A-Za-z0-9_\\.\\-\\~]+/){0,10}[A-Za-z0-9_\\.\\-\\~]+"
    },
    "PayloadBlob": {
      "type": "blob",
      "streaming": true
    },
    "PutObjectRequest": {
      "type": "structure",
      "required": [
        "Body",
        "Path"
      ],
      "members": {
        "Body": {
          "shape": "PayloadBlob",
          "documentation": "<p>The bytes to be stored. </p>"
        },
        "Path": {
          "shape": "PathNaming",
          "documentation": "<p>The path (including the file name) where the object is stored in the container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;</p> <p>For example, to upload the file <code>mlaw.avi</code> to the folder path <code>premium\\canada</code> in the container <code>movies</code>, enter the path <code>premium/canada/mlaw.avi</code>.</p> <p>Do not include the container name in this path.</p> <p>If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the <code>premium</code> folder. You then have two subfolders, <code>usa</code> and <code>canada</code>, in the <code>premium</code> folder. </p> <p>There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore.</p> <p>For more information about folders and how they exist in a container, see the <a href=\"http://docs.aws.amazon.com/mediastore/latest/ug/\">AWS Elemental MediaStore User Guide</a>.</p> <p>The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension. </p>",
          "location": "uri",
          "locationName": "Path"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p>The content type of the object.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "CacheControl": {
          "shape": "StringPrimitive",
          "documentation": "<p>An optional <code>CacheControl</code> header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP at <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p> <p>Headers with a custom user-defined value are also accepted.</p>",
          "location": "header",
          "locationName": "Cache-Control"
        },
        "StorageClass": {
          "shape": "StorageClass",
          "documentation": "<p>Indicates the storage class of a <code>Put</code> request. Defaults to high-performance temporal storage class, and objects are persisted into durable storage shortly after being received.</p>",
          "location": "header",
          "locationName": "x-amz-storage-class"
        },
        "UploadAvailability": {
          "shape": "UploadAvailability",
          "documentation": "<p>Indicates the availability of an object while it is still uploading. If the value is set to <code>streaming</code>, the object is available for downloading after some initial buffering but before the object is uploaded completely. If the value is set to <code>standard</code>, the object is available for downloading only when it is uploaded completely. The default value for this header is <code>standard</code>.</p> <p>To use this header, you must also set the HTTP <code>Transfer-Encoding</code> header to <code>chunked</code>.</p>",
          "location": "header",
          "locationName": "x-amz-upload-availability"
        }
      },
      "payload": "Body"
    },
    "PutObjectResponse": {
      "type": "structure",
      "members": {
        "ContentSHA256": {
          "shape": "SHA256Hash",
          "documentation": "<p>The SHA256 digest of the object that is persisted.</p>"
        },
        "ETag": {
          "shape": "ETag",
          "documentation": "<p>Unique identifier of the object in the container.</p>"
        },
        "StorageClass": {
          "shape": "StorageClass",
          "documentation": "<p>The storage class where the object was persisted. The class should be “Temporal”.</p>"
        }
      }
    },
    "RangePattern": {
      "type": "string",
      "pattern": "^bytes=(?:\\d+\\-\\d*|\\d*\\-\\d+)$"
    },
    "SHA256Hash": {
      "type": "string",
      "max": 64,
      "min": 64,
      "pattern": "[0-9A-Fa-f]{64}"
    },
    "StorageClass": {
      "type": "string",
      "enum": [
        "TEMPORAL"
      ],
      "max": 16,
      "min": 1
    },
    "StringPrimitive": {
      "type": "string"
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "UploadAvailability": {
      "type": "string",
      "enum": [
        "STANDARD",
        "STREAMING"
      ],
      "max": 16,
      "min": 1
    },
    "statusCode": {
      "type": "integer"
    }
  },
  "documentation": "<p>An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.</p>"
}
]===]))
