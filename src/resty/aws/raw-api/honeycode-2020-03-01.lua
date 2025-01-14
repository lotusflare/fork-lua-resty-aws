local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2020-03-01",
    "endpointPrefix": "honeycode",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Honeycode",
    "serviceFullName": "Amazon Honeycode",
    "serviceId": "Honeycode",
    "signatureVersion": "v4",
    "signingName": "honeycode",
    "uid": "honeycode-2020-03-01"
  },
  "operations": {
    "GetScreenData": {
      "name": "GetScreenData",
      "http": {
        "method": "POST",
        "requestUri": "/screendata"
      },
      "input": {
        "shape": "GetScreenDataRequest"
      },
      "output": {
        "shape": "GetScreenDataResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "RequestTimeoutException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p> The GetScreenData API allows retrieval of data from a screen in a Honeycode app. The API allows setting local variables in the screen to filter, sort or otherwise affect what will be displayed on the screen. </p>"
    },
    "InvokeScreenAutomation": {
      "name": "InvokeScreenAutomation",
      "http": {
        "method": "POST",
        "requestUri": "/workbooks/{workbookId}/apps/{appId}/screens/{screenId}/automations/{automationId}"
      },
      "input": {
        "shape": "InvokeScreenAutomationRequest"
      },
      "output": {
        "shape": "InvokeScreenAutomationResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "AutomationExecutionException"
        },
        {
          "shape": "AutomationExecutionTimeoutException"
        },
        {
          "shape": "RequestTimeoutException"
        }
      ],
      "documentation": "<p> The InvokeScreenAutomation API allows invoking an action defined in a screen in a Honeycode app. The API allows setting local variables, which can then be used in the automation being invoked. This allows automating the Honeycode app interactions to write, update or delete data in the workbook. </p>"
    }
  },
  "shapes": {
    "ClientRequestToken": {
      "type": "string",
      "max": 64,
      "min": 32
    },
    "ColumnMetadata": {
      "type": "structure",
      "required": [
        "name",
        "format"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the column.</p>"
        },
        "format": {
          "shape": "Format",
          "documentation": "<p>The format of the column.</p>"
        }
      },
      "documentation": "<p>Metadata for column in the table.</p>"
    },
    "DataItem": {
      "type": "structure",
      "members": {
        "overrideFormat": {
          "shape": "Format",
          "documentation": "<p> The overrideFormat is optional and is specified only if a particular row of data has a different format for the data than the default format defined on the screen or the table. </p>"
        },
        "rawValue": {
          "shape": "RawValue",
          "documentation": "<p>The raw value of the data. e.g. jsmith@example.com</p>"
        },
        "formattedValue": {
          "shape": "FormattedValue",
          "documentation": "<p>The formatted value of the data. e.g. John Smith.</p>"
        }
      },
      "documentation": "<p>The data in a particular data cell defined on the screen.</p>",
      "sensitive": true
    },
    "DataItems": {
      "type": "list",
      "member": {
        "shape": "DataItem"
      }
    },
    "Format": {
      "type": "string",
      "enum": [
        "AUTO",
        "NUMBER",
        "CURRENCY",
        "DATE",
        "TIME",
        "DATE_TIME",
        "PERCENTAGE",
        "TEXT",
        "ACCOUNTING",
        "CONTACT",
        "ROWLINK"
      ]
    },
    "FormattedValue": {
      "type": "string"
    },
    "GetScreenDataRequest": {
      "type": "structure",
      "required": [
        "workbookId",
        "appId",
        "screenId"
      ],
      "members": {
        "workbookId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the workbook that contains the screen.</p>"
        },
        "appId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the app that contains the screem.</p>"
        },
        "screenId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the screen.</p>"
        },
        "variables": {
          "shape": "VariableValueMap",
          "documentation": "<p> Variables are optional and are needed only if the screen requires them to render correctly. Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an object which currently has only one property, rawValue, which holds the value of the variable to be passed to the screen. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p> The number of results to be returned on a single page. Specify a number between 1 and 100. The maximum value is 100. </p> <p> This parameter is optional. If you don't specify this parameter, the default page size is 100. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> This parameter is optional. If a nextToken is not specified, the API returns the first page of data. </p> <p> Pagination tokens expire after 1 hour. If you use a token that was returned more than an hour back, the API will throw ValidationException. </p>"
        }
      }
    },
    "GetScreenDataResult": {
      "type": "structure",
      "required": [
        "results",
        "workbookCursor"
      ],
      "members": {
        "results": {
          "shape": "ResultSetMap",
          "documentation": "<p>A map of all the rows on the screen keyed by block name.</p>"
        },
        "workbookCursor": {
          "shape": "WorkbookCursor",
          "documentation": "<p> Indicates the cursor of the workbook at which the data returned by this workbook is read. Workbook cursor keeps increasing with every update and the increments are not sequential. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> Provides the pagination token to load the next page if there are more results matching the request. If a pagination token is not present in the response, it means that all data matching the query has been loaded. </p>"
        }
      }
    },
    "InvokeScreenAutomationRequest": {
      "type": "structure",
      "required": [
        "workbookId",
        "appId",
        "screenId",
        "screenAutomationId"
      ],
      "members": {
        "workbookId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the workbook that contains the screen automation.</p>",
          "location": "uri",
          "locationName": "workbookId"
        },
        "appId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the app that contains the screen automation.</p>",
          "location": "uri",
          "locationName": "appId"
        },
        "screenId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the screen that contains the screen automation.</p>",
          "location": "uri",
          "locationName": "screenId"
        },
        "screenAutomationId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the automation action to be performed.</p>",
          "location": "uri",
          "locationName": "automationId"
        },
        "variables": {
          "shape": "VariableValueMap",
          "documentation": "<p> Variables are optional and are needed only if the screen requires them to render correctly. Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an object which currently has only one property, rawValue, which holds the value of the variable to be passed to the screen. </p>"
        },
        "rowId": {
          "shape": "RowId",
          "documentation": "<p> The row ID for the automation if the automation is defined inside a block with source or list. </p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p> The request token for performing the automation action. Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error like a failed network connection, you can retry the call with the same request token. The service ensures that if the first call using that request token is successfully performed, the second call will return the response of the previous call rather than performing the action again. </p> <p> Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests spanning hours or days. </p>"
        }
      }
    },
    "InvokeScreenAutomationResult": {
      "type": "structure",
      "required": [
        "workbookCursor"
      ],
      "members": {
        "workbookCursor": {
          "shape": "WorkbookCursor",
          "documentation": "<p>The updated workbook cursor after performing the automation action.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "Name": {
      "type": "string",
      "sensitive": true
    },
    "PaginationToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "RawValue": {
      "type": "string"
    },
    "ResourceId": {
      "type": "string",
      "pattern": "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
    },
    "ResultHeader": {
      "type": "list",
      "member": {
        "shape": "ColumnMetadata"
      }
    },
    "ResultRow": {
      "type": "structure",
      "required": [
        "dataItems"
      ],
      "members": {
        "rowId": {
          "shape": "RowId",
          "documentation": "<p>The ID for a particular row.</p>"
        },
        "dataItems": {
          "shape": "DataItems",
          "documentation": "<p>List of all the data cells in a row.</p>"
        }
      },
      "documentation": "<p>A single row in the ResultSet.</p>"
    },
    "ResultRows": {
      "type": "list",
      "member": {
        "shape": "ResultRow"
      }
    },
    "ResultSet": {
      "type": "structure",
      "required": [
        "headers",
        "rows"
      ],
      "members": {
        "headers": {
          "shape": "ResultHeader",
          "documentation": "<p> List of headers for all the data cells in the block. The header identifies the name and default format of the data cell. Data cells appear in the same order in all rows as defined in the header. The names and formats are not repeated in the rows. If a particular row does not have a value for a data cell, a blank value is used. </p> <p> For example, a task list that displays the task name, due date and assigned person might have headers [ { \"name\": \"Task Name\"}, {\"name\": \"Due Date\", \"format\": \"DATE\"}, {\"name\": \"Assigned\", \"format\": \"CONTACT\"} ]. Every row in the result will have the task name as the first item, due date as the second item and assigned person as the third item. If a particular task does not have a due date, that row will still have a blank value in the second element and the assigned person will still be in the third element. </p>"
        },
        "rows": {
          "shape": "ResultRows",
          "documentation": "<p> List of rows returned by the request. Each row has a row Id and a list of data cells in that row. The data cells will be present in the same order as they are defined in the header. </p>"
        }
      },
      "documentation": "<p> ResultSet contains the results of the request for a single block or list defined on the screen. </p>"
    },
    "ResultSetMap": {
      "type": "map",
      "key": {
        "shape": "Name"
      },
      "value": {
        "shape": "ResultSet"
      }
    },
    "RowId": {
      "type": "string",
      "pattern": "row:[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\\/[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
    },
    "VariableName": {
      "type": "string",
      "sensitive": true
    },
    "VariableValue": {
      "type": "structure",
      "required": [
        "rawValue"
      ],
      "members": {
        "rawValue": {
          "shape": "RawValue",
          "documentation": "<p>Raw value of the variable.</p>"
        }
      },
      "documentation": "<p>The input variables to the app to be used by the InvokeScreenAutomation action request.</p>",
      "sensitive": true
    },
    "VariableValueMap": {
      "type": "map",
      "key": {
        "shape": "VariableName"
      },
      "value": {
        "shape": "VariableValue"
      },
      "sensitive": true
    },
    "WorkbookCursor": {
      "type": "long"
    }
  },
  "documentation": "<p> Amazon Honeycode is a fully managed service that allows you to quickly build mobile and web apps for teams—without programming. Build Honeycode apps for managing almost anything, like projects, customers, operations, approvals, resources, and even your team. </p>"
}
]===]))
