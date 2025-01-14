local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2011-12-05",
    "endpointPrefix": "dynamodb",
    "jsonVersion": "1.0",
    "protocol": "json",
    "serviceAbbreviation": "DynamoDB",
    "serviceFullName": "Amazon DynamoDB",
    "serviceId": "DynamoDB",
    "signatureVersion": "v4",
    "targetPrefix": "DynamoDB_20111205",
    "uid": "dynamodb-2011-12-05"
  },
  "operations": {
    "BatchGetItem": {
      "name": "BatchGetItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetItemInput"
      },
      "output": {
        "shape": "BatchGetItemOutput"
      },
      "errors": [
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves the attributes for multiple items from multiple tables using their primary keys.</p> <p>The maximum number of item attributes that can be retrieved for a single operation is 100. Also, the number of items retrieved is constrained by a 1 MB the size limit. If the response size limit is exceeded or a partial result is returned due to an internal processing failure, Amazon DynamoDB returns an <code>UnprocessedKeys</code> value so you can retry the operation starting with the next item to get.</p> <p>Amazon DynamoDB automatically adjusts the number of items returned per page to enforce this limit. For example, even if you ask to retrieve 100 items, but each individual item is 50k in size, the system returns 20 items and an appropriate <code>UnprocessedKeys</code> value so you can get the next page of results. If necessary, your application needs its own logic to assemble the pages of results into one set.</p>"
    },
    "BatchWriteItem": {
      "name": "BatchWriteItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchWriteItemInput"
      },
      "output": {
        "shape": "BatchWriteItemOutput"
      },
      "errors": [
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Allows to execute a batch of Put and/or Delete Requests for many tables in a single call. A total of 25 requests are allowed.</p> <p>There are no transaction guarantees provided by this API. It does not allow conditional puts nor does it support return values.</p>"
    },
    "CreateTable": {
      "name": "CreateTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTableInput"
      },
      "output": {
        "shape": "CreateTableOutput"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Adds a new table to your account.</p> <p>The table name must be unique among those associated with the AWS Account issuing the request, and the AWS Region that receives the request (e.g. <code>us-east-1</code>).</p> <p>The <code>CreateTable</code> operation triggers an asynchronous workflow to begin creating the table. Amazon DynamoDB immediately returns the state of the table (<code>CREATING</code>) until the table is in the <code>ACTIVE</code> state. Once the table is in the <code>ACTIVE</code> state, you can perform data plane operations.</p>"
    },
    "DeleteItem": {
      "name": "DeleteItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteItemInput"
      },
      "output": {
        "shape": "DeleteItemOutput"
      },
      "errors": [
        {
          "shape": "ConditionalCheckFailedException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes a single item in a table by primary key.</p> <p>You can perform a conditional delete operation that deletes the item if it exists, or if it has an expected attribute value.</p>"
    },
    "DeleteTable": {
      "name": "DeleteTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTableInput"
      },
      "output": {
        "shape": "DeleteTableOutput"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Deletes a table and all of its items.</p> <p>If the table is in the <code>ACTIVE</code> state, you can delete it. If a table is in <code>CREATING</code> or <code>UPDATING</code> states then Amazon DynamoDB returns a <code>ResourceInUseException</code>. If the specified table does not exist, Amazon DynamoDB returns a <code>ResourceNotFoundException</code>.</p>"
    },
    "DescribeTable": {
      "name": "DescribeTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTableInput"
      },
      "output": {
        "shape": "DescribeTableOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves information about the table, including the current status of the table, the primary key schema and when the table was created.</p> <p>If the table does not exist, Amazon DynamoDB returns a <code>ResourceNotFoundException</code>.</p>"
    },
    "GetItem": {
      "name": "GetItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetItemInput"
      },
      "output": {
        "shape": "GetItemOutput"
      },
      "errors": [
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves a set of Attributes for an item that matches the primary key.</p> <p>The <code>GetItem</code> operation provides an eventually-consistent read by default. If eventually-consistent reads are not acceptable for your application, use <code>ConsistentRead</code>. Although this operation might take longer than a standard read, it always returns the last updated value.</p>"
    },
    "ListTables": {
      "name": "ListTables",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTablesInput"
      },
      "output": {
        "shape": "ListTablesOutput"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of table names created by the AWS Account of the caller in the AWS Region (e.g. <code>us-east-1</code>).</p>"
    },
    "PutItem": {
      "name": "PutItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutItemInput"
      },
      "output": {
        "shape": "PutItemOutput"
      },
      "errors": [
        {
          "shape": "ConditionalCheckFailedException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Creates a new item, or replaces an old item with a new item (including all the attributes).</p> <p>If an item already exists in the specified table with the same primary key, the new item completely replaces the existing item. You can perform a conditional put (insert a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values.</p>"
    },
    "Query": {
      "name": "Query",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "QueryInput"
      },
      "output": {
        "shape": "QueryOutput"
      },
      "errors": [
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Gets the values of one or more items and its attributes by primary key (composite primary key, only).</p> <p>Narrow the scope of the query using comparison operators on the <code>RangeKeyValue</code> of the composite key. Use the <code>ScanIndexForward</code> parameter to get results in forward or reverse order by range key.</p>"
    },
    "Scan": {
      "name": "Scan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ScanInput"
      },
      "output": {
        "shape": "ScanOutput"
      },
      "errors": [
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Retrieves one or more items and its attributes by performing a full scan of a table.</p> <p>Provide a <code>ScanFilter</code> to get more specific results.</p>"
    },
    "UpdateItem": {
      "name": "UpdateItem",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateItemInput"
      },
      "output": {
        "shape": "UpdateItemOutput"
      },
      "errors": [
        {
          "shape": "ConditionalCheckFailedException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "RequestLimitExceeded"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Edits an existing item's attributes.</p> <p>You can perform a conditional update (insert a new attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected attribute values).</p>"
    },
    "UpdateTable": {
      "name": "UpdateTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTableInput"
      },
      "output": {
        "shape": "UpdateTableOutput"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerError"
        }
      ],
      "documentation": "<p>Updates the provisioned throughput for the given table.</p> <p>Setting the throughput for a table helps you manage performance and is part of the Provisioned Throughput feature of Amazon DynamoDB.</p>"
    }
  },
  "shapes": {
    "AttributeAction": {
      "type": "string",
      "documentation": "<p>The type of action for an item update operation. Only use the add action for numbers or sets; the specified value is added to the existing value. If a set of values is specified, the values are added to the existing set. Adds the specified attribute. If the attribute exists, it is replaced by the new value. If no value is specified, this removes the attribute and its value. If a set of values is specified, then the values in the specified set are removed from the old set.</p>",
      "enum": [
        "ADD",
        "PUT",
        "DELETE"
      ]
    },
    "AttributeMap": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      }
    },
    "AttributeName": {
      "type": "string",
      "max": 65535
    },
    "AttributeNameList": {
      "type": "list",
      "member": {
        "shape": "AttributeName"
      },
      "documentation": "<p>List of <code>Attribute</code> names. If attribute names are not specified then all attributes will be returned. If some attributes are not found, they will not appear in the result.</p>",
      "min": 1
    },
    "AttributeUpdates": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValueUpdate"
      },
      "documentation": "<p>Map of attribute name to the new value and action for the update. The attribute names specify the attributes to modify, and cannot contain any primary key attributes.</p>"
    },
    "AttributeValue": {
      "type": "structure",
      "members": {
        "S": {
          "shape": "StringAttributeValue",
          "documentation": "<p>Strings are Unicode with UTF-8 binary encoding. The maximum size is limited by the size of the primary key (1024 bytes as a range part of a key or 2048 bytes as a single part hash key) or the item size (64k).</p>"
        },
        "N": {
          "shape": "NumberAttributeValue",
          "documentation": "<p>Numbers are positive or negative exact-value decimals and integers. A number can have up to 38 digits precision and can be between 10^-128 to 10^+126.</p>"
        },
        "B": {
          "shape": "BinaryAttributeValue",
          "documentation": "<p>Binary attributes are sequences of unsigned bytes.</p>"
        },
        "SS": {
          "shape": "StringSetAttributeValue",
          "documentation": "<p>A set of strings.</p>"
        },
        "NS": {
          "shape": "NumberSetAttributeValue",
          "documentation": "<p>A set of numbers.</p>"
        },
        "BS": {
          "shape": "BinarySetAttributeValue",
          "documentation": "<p>A set of binary attributes.</p>"
        }
      },
      "documentation": "<p>AttributeValue can be <code>String</code>, <code>Number</code>, <code>Binary</code>, <code>StringSet</code>, <code>NumberSet</code>, <code>BinarySet</code>.</p>"
    },
    "AttributeValueList": {
      "type": "list",
      "member": {
        "shape": "AttributeValue"
      },
      "documentation": "<p>A list of attribute values to be used with a comparison operator for a scan or query operation. For comparisons that require more than one value, such as a <code>BETWEEN</code> comparison, the AttributeValueList contains two attribute values and the comparison operator.</p>"
    },
    "AttributeValueUpdate": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "AttributeValue"
        },
        "Action": {
          "shape": "AttributeAction"
        }
      },
      "documentation": "<p>Specifies the attribute to update and how to perform the update. Possible values: <code>PUT</code> (default), <code>ADD</code> or <code>DELETE</code>.</p>"
    },
    "BatchGetItemInput": {
      "type": "structure",
      "required": [
        "RequestItems"
      ],
      "members": {
        "RequestItems": {
          "shape": "BatchGetRequestMap"
        }
      }
    },
    "BatchGetItemOutput": {
      "type": "structure",
      "members": {
        "Responses": {
          "shape": "BatchGetResponseMap"
        },
        "UnprocessedKeys": {
          "shape": "BatchGetRequestMap",
          "documentation": "<p>Contains a map of tables and their respective keys that were not processed with the current response, possibly due to reaching a limit on the response size. The <code>UnprocessedKeys</code> value is in the same form as a <code>RequestItems</code> parameter (so the value can be provided directly to a subsequent <code>BatchGetItem</code> operation). For more information, see the above <code>RequestItems</code> parameter.</p>"
        }
      }
    },
    "BatchGetRequestMap": {
      "type": "map",
      "key": {
        "shape": "TableName"
      },
      "value": {
        "shape": "KeysAndAttributes"
      },
      "documentation": "<p>A map of the table name and corresponding items to get by primary key. While requesting items, each table name can be invoked only once per operation.</p>",
      "max": 100,
      "min": 1
    },
    "BatchGetResponseMap": {
      "type": "map",
      "key": {
        "shape": "TableName"
      },
      "value": {
        "shape": "BatchResponse"
      },
      "documentation": "<p>Table names and the respective item attributes from the tables.</p>"
    },
    "BatchResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "ItemList"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      },
      "documentation": "<p>The item attributes from a response in a specific table, along with the read resources consumed on the table during the request.</p>"
    },
    "BatchWriteItemInput": {
      "type": "structure",
      "required": [
        "RequestItems"
      ],
      "members": {
        "RequestItems": {
          "shape": "BatchWriteItemRequestMap",
          "documentation": "<p>A map of table name to list-of-write-requests. Used as input to the <code>BatchWriteItem</code> API call</p>"
        }
      }
    },
    "BatchWriteItemOutput": {
      "type": "structure",
      "members": {
        "Responses": {
          "shape": "BatchWriteResponseMap",
          "documentation": "<p>The response object as a result of <code>BatchWriteItem</code> call. This is essentially a map of table name to <code>ConsumedCapacityUnits</code>.</p>"
        },
        "UnprocessedItems": {
          "shape": "BatchWriteItemRequestMap",
          "documentation": "<p>The Items which we could not successfully process in a <code>BatchWriteItem</code> call is returned as <code>UnprocessedItems</code></p>"
        }
      },
      "documentation": "<p>A container for <code>BatchWriteItem</code> response</p>"
    },
    "BatchWriteItemRequestMap": {
      "type": "map",
      "key": {
        "shape": "TableName"
      },
      "value": {
        "shape": "WriteRequests"
      },
      "documentation": "<p>A map of table name to list-of-write-requests.</p> <p>Key: The table name corresponding to the list of requests</p> <p>Value: Essentially a list of request items. Each request item could contain either a <code>PutRequest</code> or <code>DeleteRequest</code>. Never both.</p>",
      "max": 25,
      "min": 1
    },
    "BatchWriteResponse": {
      "type": "structure",
      "members": {
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "BatchWriteResponseMap": {
      "type": "map",
      "key": {
        "shape": "TableName"
      },
      "value": {
        "shape": "BatchWriteResponse"
      }
    },
    "BinaryAttributeValue": {
      "type": "blob"
    },
    "BinarySetAttributeValue": {
      "type": "list",
      "member": {
        "shape": "BinaryAttributeValue"
      }
    },
    "BooleanObject": {
      "type": "boolean"
    },
    "ComparisonOperator": {
      "type": "string",
      "documentation": "<p>A comparison operator is an enumeration of several operations:</p> <ul> <li><code>EQ</code> for <em>equal</em>.</li> <li><code>NE</code> for <em>not equal</em>.</li> <li><code>IN</code> checks for exact matches.</li> <li><code>LE</code> for <em>less than or equal to</em>.</li> <li><code>LT</code> for <em>less than</em>.</li> <li><code>GE</code> for <em>greater than or equal to</em>.</li> <li><code>GT</code> for <em>greater than</em>.</li> <li><code>BETWEEN</code> for <em>between</em>.</li> <li><code>NOT_NULL</code> for <em>exists</em>.</li> <li><code>NULL</code> for <em>not exists</em>.</li> <li><code>CONTAINS</code> for substring or value in a set.</li> <li><code>NOT_CONTAINS</code> for absence of a substring or absence of a value in a set.</li> <li><code>BEGINS_WITH</code> for a substring prefix.</li> </ul> <p>Scan operations support all available comparison operators.</p> <p>Query operations support a subset of the available comparison operators: EQ, LE, LT, GE, GT, BETWEEN, and BEGINS_WITH.</p>",
      "enum": [
        "EQ",
        "NE",
        "IN",
        "LE",
        "LT",
        "GE",
        "GT",
        "BETWEEN",
        "NOT_NULL",
        "NULL",
        "CONTAINS",
        "NOT_CONTAINS",
        "BEGINS_WITH"
      ]
    },
    "Condition": {
      "type": "structure",
      "required": [
        "ComparisonOperator"
      ],
      "members": {
        "AttributeValueList": {
          "shape": "AttributeValueList"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperator"
        }
      }
    },
    "ConsistentRead": {
      "type": "boolean",
      "documentation": "<p>If set to <code>true</code>, then a consistent read is issued. Otherwise eventually-consistent is used.</p>"
    },
    "ConsumedCapacityUnits": {
      "type": "double",
      "documentation": "<p>The number of Capacity Units of the provisioned throughput of the table consumed during the operation. <code>GetItem</code>, <code>BatchGetItem</code>, <code>BatchWriteItem</code>, <code>Query</code>, and <code>Scan</code> operations consume <code>ReadCapacityUnits</code>, while <code>PutItem</code>, <code>UpdateItem</code>, and <code>DeleteItem</code> operations consume <code>WriteCapacityUnits</code>.</p>"
    },
    "CreateTableInput": {
      "type": "structure",
      "required": [
        "TableName",
        "KeySchema",
        "ProvisionedThroughput"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table you want to create. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "KeySchema": {
          "shape": "KeySchema"
        },
        "ProvisionedThroughput": {
          "shape": "ProvisionedThroughput"
        }
      }
    },
    "CreateTableOutput": {
      "type": "structure",
      "members": {
        "TableDescription": {
          "shape": "TableDescription"
        }
      }
    },
    "Date": {
      "type": "timestamp"
    },
    "DeleteItemInput": {
      "type": "structure",
      "required": [
        "TableName",
        "Key"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table in which you want to delete an item. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "Key": {
          "shape": "Key"
        },
        "Expected": {
          "shape": "ExpectedAttributeMap"
        },
        "ReturnValues": {
          "shape": "ReturnValue"
        }
      }
    },
    "DeleteItemOutput": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "AttributeMap",
          "documentation": "<p>If the <code>ReturnValues</code> parameter is provided as <code>ALL_OLD</code> in the request, Amazon DynamoDB returns an array of attribute name-value pairs (essentially, the deleted item). Otherwise, the response contains an empty set.</p>"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "DeleteRequest": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "Key",
          "documentation": "<p>The item's key to be delete</p>"
        }
      },
      "documentation": "<p>A container for a Delete BatchWrite request</p>"
    },
    "DeleteTableInput": {
      "type": "structure",
      "required": [
        "TableName"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table you want to delete. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        }
      }
    },
    "DeleteTableOutput": {
      "type": "structure",
      "members": {
        "TableDescription": {
          "shape": "TableDescription"
        }
      }
    },
    "DescribeTableInput": {
      "type": "structure",
      "required": [
        "TableName"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table you want to describe. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        }
      }
    },
    "DescribeTableOutput": {
      "type": "structure",
      "members": {
        "Table": {
          "shape": "TableDescription"
        }
      }
    },
    "ExpectedAttributeMap": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "ExpectedAttributeValue"
      },
      "documentation": "<p>Designates an attribute for a conditional modification. The <code>Expected</code> parameter allows you to provide an attribute name, and whether or not Amazon DynamoDB should check to see if the attribute has a particular value before modifying it.</p>"
    },
    "ExpectedAttributeValue": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "AttributeValue",
          "documentation": "<p>Specify whether or not a value already exists and has a specific content for the attribute name-value pair.</p>"
        },
        "Exists": {
          "shape": "BooleanObject",
          "documentation": "<p>Specify whether or not a value already exists for the attribute name-value pair.</p>"
        }
      },
      "documentation": "<p>Allows you to provide an attribute name, and whether or not Amazon DynamoDB should check to see if the attribute value already exists; or if the attribute value exists and has a particular value before changing it.</p>"
    },
    "FilterConditionMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "Condition"
      }
    },
    "GetItemInput": {
      "type": "structure",
      "required": [
        "TableName",
        "Key"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table in which you want to get an item. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "Key": {
          "shape": "Key"
        },
        "AttributesToGet": {
          "shape": "AttributeNameList"
        },
        "ConsistentRead": {
          "shape": "ConsistentRead"
        }
      }
    },
    "GetItemOutput": {
      "type": "structure",
      "members": {
        "Item": {
          "shape": "AttributeMap",
          "documentation": "<p>Contains the requested attributes.</p>"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "Integer": {
      "type": "integer"
    },
    "ItemList": {
      "type": "list",
      "member": {
        "shape": "AttributeMap"
      }
    },
    "Key": {
      "type": "structure",
      "required": [
        "HashKeyElement"
      ],
      "members": {
        "HashKeyElement": {
          "shape": "AttributeValue",
          "documentation": "<p>A hash key element is treated as the primary key, and can be a string or a number. Single attribute primary keys have one index value. The value can be <code>String</code>, <code>Number</code>, <code>StringSet</code>, <code>NumberSet</code>.</p>"
        },
        "RangeKeyElement": {
          "shape": "AttributeValue",
          "documentation": "<p>A range key element is treated as a secondary key (used in conjunction with the primary key), and can be a string or a number, and is only used for hash-and-range primary keys. The value can be <code>String</code>, <code>Number</code>, <code>StringSet</code>, <code>NumberSet</code>.</p>"
        }
      },
      "documentation": "<p>The primary key that uniquely identifies each item in a table. A primary key can be a one attribute (hash) primary key or a two attribute (hash-and-range) primary key.</p>"
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "Key"
      },
      "max": 100,
      "min": 1
    },
    "KeySchema": {
      "type": "structure",
      "required": [
        "HashKeyElement"
      ],
      "members": {
        "HashKeyElement": {
          "shape": "KeySchemaElement",
          "documentation": "<p>A hash key element is treated as the primary key, and can be a string or a number. Single attribute primary keys have one index value. The value can be <code>String</code>, <code>Number</code>, <code>StringSet</code>, <code>NumberSet</code>.</p>"
        },
        "RangeKeyElement": {
          "shape": "KeySchemaElement",
          "documentation": "<p>A range key element is treated as a secondary key (used in conjunction with the primary key), and can be a string or a number, and is only used for hash-and-range primary keys. The value can be <code>String</code>, <code>Number</code>, <code>StringSet</code>, <code>NumberSet</code>.</p>"
        }
      },
      "documentation": "<p>The KeySchema identifies the primary key as a one attribute primary key (hash) or a composite two attribute (hash-and-range) primary key. Single attribute primary keys have one index value: a <code>HashKeyElement</code>. A composite hash-and-range primary key contains two attribute values: a <code>HashKeyElement</code> and a <code>RangeKeyElement</code>.</p>"
    },
    "KeySchemaAttributeName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "KeySchemaElement": {
      "type": "structure",
      "required": [
        "AttributeName",
        "AttributeType"
      ],
      "members": {
        "AttributeName": {
          "shape": "KeySchemaAttributeName",
          "documentation": "<p>The <code>AttributeName</code> of the <code>KeySchemaElement</code>.</p>"
        },
        "AttributeType": {
          "shape": "ScalarAttributeType",
          "documentation": "<p>The <code>AttributeType</code> of the <code>KeySchemaElement</code> which can be a <code>String</code> or a <code>Number</code>.</p>"
        }
      },
      "documentation": "<p><code>KeySchemaElement</code> is the primary key (hash or hash-and-range) structure for the table.</p>"
    },
    "KeysAndAttributes": {
      "type": "structure",
      "required": [
        "Keys"
      ],
      "members": {
        "Keys": {
          "shape": "KeyList"
        },
        "AttributesToGet": {
          "shape": "AttributeNameList"
        },
        "ConsistentRead": {
          "shape": "ConsistentRead"
        }
      }
    },
    "ListTablesInput": {
      "type": "structure",
      "members": {
        "ExclusiveStartTableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table that starts the list. If you already ran a <code>ListTables</code> operation and received a <code>LastEvaluatedTableName</code> value in the response, use that value here to continue the list.</p>"
        },
        "Limit": {
          "shape": "ListTablesInputLimit"
        }
      }
    },
    "ListTablesInputLimit": {
      "type": "integer",
      "documentation": "<p>A number of maximum table names to return.</p>",
      "max": 100,
      "min": 1
    },
    "ListTablesOutput": {
      "type": "structure",
      "members": {
        "TableNames": {
          "shape": "TableNameList"
        },
        "LastEvaluatedTableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the last table in the current list. Use this value as the <code>ExclusiveStartTableName</code> in a new request to continue the list until all the table names are returned. If this value is null, all table names have been returned.</p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "NumberAttributeValue": {
      "type": "string"
    },
    "NumberSetAttributeValue": {
      "type": "list",
      "member": {
        "shape": "NumberAttributeValue"
      }
    },
    "PositiveIntegerObject": {
      "type": "integer",
      "min": 1
    },
    "PositiveLongObject": {
      "type": "long",
      "min": 1
    },
    "ProvisionedThroughput": {
      "type": "structure",
      "required": [
        "ReadCapacityUnits",
        "WriteCapacityUnits"
      ],
      "members": {
        "ReadCapacityUnits": {
          "shape": "PositiveLongObject",
          "documentation": "<p><code>ReadCapacityUnits</code> are in terms of strictly consistent reads, assuming items of 1k. 2k items require twice the <code>ReadCapacityUnits</code>. Eventually-consistent reads only require half the <code>ReadCapacityUnits</code> of stirctly consistent reads.</p>"
        },
        "WriteCapacityUnits": {
          "shape": "PositiveLongObject",
          "documentation": "<p><code>WriteCapacityUnits</code> are in terms of strictly consistent reads, assuming items of 1k. 2k items require twice the <code>WriteCapacityUnits</code>.</p>"
        }
      },
      "documentation": "<p>Provisioned throughput reserves the required read and write resources for your table in terms of <code>ReadCapacityUnits</code> and <code>WriteCapacityUnits</code>. Values for provisioned throughput depend upon your expected read/write rates, item size, and consistency. Provide the expected number of read and write operations, assuming an item size of 1k and strictly consistent reads. For 2k item size, double the value. For 3k, triple the value, etc. Eventually-consistent reads consume half the resources of strictly consistent reads.</p>"
    },
    "ProvisionedThroughputDescription": {
      "type": "structure",
      "members": {
        "LastIncreaseDateTime": {
          "shape": "Date"
        },
        "LastDecreaseDateTime": {
          "shape": "Date"
        },
        "NumberOfDecreasesToday": {
          "shape": "PositiveLongObject"
        },
        "ReadCapacityUnits": {
          "shape": "PositiveLongObject"
        },
        "WriteCapacityUnits": {
          "shape": "PositiveLongObject"
        }
      }
    },
    "PutItemInput": {
      "type": "structure",
      "required": [
        "TableName",
        "Item"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table in which you want to put an item. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "Item": {
          "shape": "PutItemInputAttributeMap"
        },
        "Expected": {
          "shape": "ExpectedAttributeMap"
        },
        "ReturnValues": {
          "shape": "ReturnValue"
        }
      }
    },
    "PutItemInputAttributeMap": {
      "type": "map",
      "key": {
        "shape": "AttributeName"
      },
      "value": {
        "shape": "AttributeValue"
      },
      "documentation": "<p>A map of the attributes for the item, and must include the primary key values that define the item. Other attribute name-value pairs can be provided for the item.</p>"
    },
    "PutItemOutput": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "AttributeMap",
          "documentation": "<p>Attribute values before the put operation, but only if the <code>ReturnValues</code> parameter is specified as <code>ALL_OLD</code> in the request.</p>"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "PutRequest": {
      "type": "structure",
      "required": [
        "Item"
      ],
      "members": {
        "Item": {
          "shape": "PutItemInputAttributeMap",
          "documentation": "<p>The item to put</p>"
        }
      },
      "documentation": "<p>A container for a Put BatchWrite request</p>"
    },
    "QueryInput": {
      "type": "structure",
      "required": [
        "TableName",
        "HashKeyValue"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table in which you want to query. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "AttributesToGet": {
          "shape": "AttributeNameList"
        },
        "Limit": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The maximum number of items to return. If Amazon DynamoDB hits this limit while querying the table, it stops the query and returns the matching values up to the limit, and a <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the query. Also, if the result set size exceeds 1MB before Amazon DynamoDB hits this limit, it stops the query and returns the matching values, and a <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the query.</p>"
        },
        "ConsistentRead": {
          "shape": "ConsistentRead"
        },
        "Count": {
          "shape": "BooleanObject",
          "documentation": "<p>If set to <code>true</code>, Amazon DynamoDB returns a total number of items that match the query parameters, instead of a list of the matching items and their attributes. Do not set <code>Count</code> to <code>true</code> while providing a list of <code>AttributesToGet</code>, otherwise Amazon DynamoDB returns a validation error.</p>"
        },
        "HashKeyValue": {
          "shape": "AttributeValue",
          "documentation": "<p>Attribute value of the hash component of the composite primary key.</p>"
        },
        "RangeKeyCondition": {
          "shape": "Condition",
          "documentation": "<p>A container for the attribute values and comparison operators to use for the query.</p>"
        },
        "ScanIndexForward": {
          "shape": "BooleanObject",
          "documentation": "<p>Specifies forward or backward traversal of the index. Amazon DynamoDB returns results reflecting the requested order, determined by the range key. The default value is <code>true</code> (forward).</p>"
        },
        "ExclusiveStartKey": {
          "shape": "Key",
          "documentation": "<p>Primary key of the item from which to continue an earlier query. An earlier query might provide this value as the <code>LastEvaluatedKey</code> if that query operation was interrupted before completing the query; either because of the result set size or the <code>Limit</code> parameter. The <code>LastEvaluatedKey</code> can be passed back in a new query request to continue the operation from that point.</p>"
        }
      }
    },
    "QueryOutput": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "ItemList"
        },
        "Count": {
          "shape": "Integer",
          "documentation": "<p>Number of items in the response.</p>"
        },
        "LastEvaluatedKey": {
          "shape": "Key",
          "documentation": "<p>Primary key of the item where the query operation stopped, inclusive of the previous result set. Use this value to start a new operation excluding this value in the new request. The <code>LastEvaluatedKey</code> is null when the entire query result set is complete (i.e. the operation processed the \"last page\").</p>"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "ReturnValue": {
      "type": "string",
      "documentation": "<p>Use this parameter if you want to get the attribute name-value pairs before or after they are modified. For <code>PUT</code> operations, the possible parameter values are <code>NONE</code> (default) or <code>ALL_OLD</code>. For update operations, the possible parameter values are <code>NONE</code> (default) or <code>ALL_OLD</code>, <code>UPDATED_OLD</code>, <code>ALL_NEW</code> or <code>UPDATED_NEW</code>.</p> <ul> <li><code>NONE</code>: Nothing is returned.</li> <li><code>ALL_OLD</code>: Returns the attributes of the item as they were before the operation.</li> <li><code>UPDATED_OLD</code>: Returns the values of the updated attributes, only, as they were before the operation.</li> <li><code>ALL_NEW</code>: Returns all the attributes and their new values after the operation.</li> <li><code>UPDATED_NEW</code>: Returns the values of the updated attributes, only, as they are after the operation.</li> </ul>",
      "enum": [
        "NONE",
        "ALL_OLD",
        "UPDATED_OLD",
        "ALL_NEW",
        "UPDATED_NEW"
      ]
    },
    "ScalarAttributeType": {
      "type": "string",
      "enum": [
        "S",
        "N",
        "B"
      ]
    },
    "ScanInput": {
      "type": "structure",
      "required": [
        "TableName"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table in which you want to scan. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "AttributesToGet": {
          "shape": "AttributeNameList"
        },
        "Limit": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The maximum number of items to return. If Amazon DynamoDB hits this limit while scanning the table, it stops the scan and returns the matching values up to the limit, and a <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the scan. Also, if the scanned data set size exceeds 1 MB before Amazon DynamoDB hits this limit, it stops the scan and returns the matching values up to the limit, and a <code>LastEvaluatedKey</code> to apply in a subsequent operation to continue the scan.</p>"
        },
        "Count": {
          "shape": "BooleanObject",
          "documentation": "<p>If set to <code>true</code>, Amazon DynamoDB returns a total number of items for the <code>Scan</code> operation, even if the operation has no matching items for the assigned filter. Do not set <code>Count</code> to <code>true</code> while providing a list of <code>AttributesToGet</code>, otherwise Amazon DynamoDB returns a validation error.</p>"
        },
        "ScanFilter": {
          "shape": "FilterConditionMap",
          "documentation": "<p>Evaluates the scan results and returns only the desired values.</p>"
        },
        "ExclusiveStartKey": {
          "shape": "Key",
          "documentation": "<p>Primary key of the item from which to continue an earlier scan. An earlier scan might provide this value if that scan operation was interrupted before scanning the entire table; either because of the result set size or the <code>Limit</code> parameter. The <code>LastEvaluatedKey</code> can be passed back in a new scan request to continue the operation from that point.</p>"
        }
      }
    },
    "ScanOutput": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "ItemList"
        },
        "Count": {
          "shape": "Integer",
          "documentation": "<p>Number of items in the response.</p>"
        },
        "ScannedCount": {
          "shape": "Integer",
          "documentation": "<p>Number of items in the complete scan before any filters are applied. A high <code>ScannedCount</code> value with few, or no, <code>Count</code> results indicates an inefficient <code>Scan</code> operation.</p>"
        },
        "LastEvaluatedKey": {
          "shape": "Key",
          "documentation": "<p>Primary key of the item where the scan operation stopped. Provide this value in a subsequent scan operation to continue the operation from that point. The <code>LastEvaluatedKey</code> is null when the entire scan result set is complete (i.e. the operation processed the \"last page\").</p>"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "StringAttributeValue": {
      "type": "string"
    },
    "StringSetAttributeValue": {
      "type": "list",
      "member": {
        "shape": "StringAttributeValue"
      }
    },
    "TableDescription": {
      "type": "structure",
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table being described.</p>"
        },
        "KeySchema": {
          "shape": "KeySchema"
        },
        "TableStatus": {
          "shape": "TableStatus"
        },
        "CreationDateTime": {
          "shape": "Date"
        },
        "ProvisionedThroughput": {
          "shape": "ProvisionedThroughputDescription"
        },
        "TableSizeBytes": {
          "shape": "Long"
        },
        "ItemCount": {
          "shape": "Long"
        }
      }
    },
    "TableName": {
      "type": "string",
      "max": 255,
      "min": 3,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "TableNameList": {
      "type": "list",
      "member": {
        "shape": "TableName"
      }
    },
    "TableStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "UPDATING",
        "DELETING",
        "ACTIVE"
      ]
    },
    "UpdateItemInput": {
      "type": "structure",
      "required": [
        "TableName",
        "Key",
        "AttributeUpdates"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table in which you want to update an item. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "Key": {
          "shape": "Key"
        },
        "AttributeUpdates": {
          "shape": "AttributeUpdates"
        },
        "Expected": {
          "shape": "ExpectedAttributeMap"
        },
        "ReturnValues": {
          "shape": "ReturnValue"
        }
      }
    },
    "UpdateItemOutput": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "AttributeMap",
          "documentation": "<p>A map of attribute name-value pairs, but only if the <code>ReturnValues</code> parameter is specified as something other than <code>NONE</code> in the request.</p>"
        },
        "ConsumedCapacityUnits": {
          "shape": "ConsumedCapacityUnits"
        }
      }
    },
    "UpdateTableInput": {
      "type": "structure",
      "required": [
        "TableName",
        "ProvisionedThroughput"
      ],
      "members": {
        "TableName": {
          "shape": "TableName",
          "documentation": "<p>The name of the table you want to update. Allowed characters are <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, <code>_</code> (underscore), <code>-</code> (hyphen) and <code>.</code> (period).</p>"
        },
        "ProvisionedThroughput": {
          "shape": "ProvisionedThroughput"
        }
      }
    },
    "UpdateTableOutput": {
      "type": "structure",
      "members": {
        "TableDescription": {
          "shape": "TableDescription"
        }
      }
    },
    "WriteRequest": {
      "type": "structure",
      "members": {
        "PutRequest": {
          "shape": "PutRequest"
        },
        "DeleteRequest": {
          "shape": "DeleteRequest"
        }
      },
      "documentation": "<p>This structure is a Union of PutRequest and DeleteRequest. It can contain exactly one of <code>PutRequest</code> or <code>DeleteRequest</code>. Never Both. This is enforced in the code.</p>"
    },
    "WriteRequests": {
      "type": "list",
      "member": {
        "shape": "WriteRequest"
      },
      "max": 25,
      "min": 1
    }
  },
  "documentation": "<p>Amazon DynamoDB is a fast, highly scalable, highly available, cost-effective non-relational database service.</p> <p>Amazon DynamoDB removes traditional scalability limitations on data storage while maintaining low latency and predictable performance.</p>"
}
]===]))
