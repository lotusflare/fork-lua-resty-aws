local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata":{
    "apiVersion":"2009-04-15",
    "endpointPrefix":"sdb",
    "serviceFullName":"Amazon SimpleDB",
    "serviceId":"SimpleDB",
    "signatureVersion":"v2",
    "xmlNamespace":"http://sdb.amazonaws.com/doc/2009-04-15/",
    "protocol":"query"
  },
  "documentation":"Amazon SimpleDB is a web service providing the core database functions of data indexing and querying in the cloud. By offloading the time and effort associated with building and operating a web-scale database, SimpleDB provides developers the freedom to focus on application development. <p> A traditional, clustered relational database requires a sizable upfront capital outlay, is complex to design, and often requires extensive and repetitive database administration. Amazon SimpleDB is dramatically simpler, requiring no schema, automatically indexing your data and providing a simple API for storage and access. This approach eliminates the administrative burden of data modeling, index maintenance, and performance tuning. Developers gain access to this functionality within Amazon's proven computing environment, are able to scale instantly, and pay only for what they use. </p> <p> Visit <a href=\"http://aws.amazon.com/simpledb/\">http://aws.amazon.com/simpledb/</a> for more information. </p>",
  "operations":{
    "BatchDeleteAttributes":{
      "name":"BatchDeleteAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"BatchDeleteAttributesRequest"},
      "documentation":"<p> Performs multiple DeleteAttributes operations in a single call, which reduces round trips and latencies. This enables Amazon SimpleDB to optimize requests, which generally yields better throughput. </p> <note> <p> If you specify BatchDeleteAttributes without attributes or values, all the attributes for the item are deleted. </p> <p> BatchDeleteAttributes is an idempotent operation; running it multiple times on the same item or attribute doesn't result in an error. </p> <p> The BatchDeleteAttributes operation succeeds or fails in its entirety. There are no partial deletes. You can execute multiple BatchDeleteAttributes operations and other operations in parallel. However, large numbers of concurrent BatchDeleteAttributes calls can result in Service Unavailable (503) responses. </p> <p> This operation is vulnerable to exceeding the maximum URL size when making a REST request using the HTTP GET method. </p> <p> This operation does not support conditions using Expected.X.Name, Expected.X.Value, or Expected.X.Exists. </p> </note> <p> The following limitations are enforced for this operation: <ul> <li>1 MB request size</li> <li>25 item limit per BatchDeleteAttributes operation</li> </ul> </p>"
    },
    "BatchPutAttributes":{
      "name":"BatchPutAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"BatchPutAttributesRequest"},
      "errors":[
        {
          "shape":"DuplicateItemName",
          "error":{
            "code":"DuplicateItemName",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The item name was specified more than once. </p>"
        },
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NoSuchDomain",
          "error":{
            "code":"NoSuchDomain",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified domain does not exist.</p>"
        },
        {
          "shape":"NumberItemAttributesExceeded",
          "error":{
            "code":"NumberItemAttributesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many attributes in this item.</p>"
        },
        {
          "shape":"NumberDomainAttributesExceeded",
          "error":{
            "code":"NumberDomainAttributesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many attributes in this domain.</p>"
        },
        {
          "shape":"NumberDomainBytesExceeded",
          "error":{
            "code":"NumberDomainBytesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many bytes in this domain.</p>"
        },
        {
          "shape":"NumberSubmittedItemsExceeded",
          "error":{
            "code":"NumberSubmittedItemsExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many items exist in a single call.</p>"
        },
        {
          "shape":"NumberSubmittedAttributesExceeded",
          "error":{
            "code":"NumberSubmittedAttributesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many attributes exist in a single call.</p>"
        }
      ],
      "documentation":"<p> The <code>BatchPutAttributes</code> operation creates or replaces attributes within one or more items. By using this operation, the client can perform multiple <a>PutAttribute</a> operation with a single call. This helps yield savings in round trips and latencies, enabling Amazon SimpleDB to optimize requests and generally produce better throughput. </p> <p> The client may specify the item name with the <code>Item.X.ItemName</code> parameter. The client may specify new attributes using a combination of the <code>Item.X.Attribute.Y.Name</code> and <code>Item.X.Attribute.Y.Value</code> parameters. The client may specify the first attribute for the first item using the parameters <code>Item.0.Attribute.0.Name</code> and <code>Item.0.Attribute.0.Value</code>, and for the second attribute for the first item by the parameters <code>Item.0.Attribute.1.Name</code> and <code>Item.0.Attribute.1.Value</code>, and so on. </p> <p> Attributes are uniquely identified within an item by their name/value combination. For example, a single item can have the attributes <code>{ \"first_name\", \"first_value\" }</code> and <code>{ \"first_name\", \"second_value\" }</code>. However, it cannot have two attribute instances where both the <code>Item.X.Attribute.Y.Name</code> and <code>Item.X.Attribute.Y.Value</code> are the same. </p> <p> Optionally, the requester can supply the <code>Replace</code> parameter for each individual value. Setting this value to <code>true</code> will cause the new attribute values to replace the existing attribute values. For example, if an item <code>I</code> has the attributes <code>{ 'a', '1' }, { 'b', '2'}</code> and <code>{ 'b', '3' }</code> and the requester does a BatchPutAttributes of <code>{'I', 'b', '4' }</code> with the Replace parameter set to true, the final attributes of the item will be <code>{ 'a', '1' }</code> and <code>{ 'b', '4' }</code>, replacing the previous values of the 'b' attribute with the new value. </p> <note> You cannot specify an empty string as an item or as an attribute name. The <code>BatchPutAttributes</code> operation succeeds or fails in its entirety. There are no partial puts. </note> <important> This operation is vulnerable to exceeding the maximum URL size when making a REST request using the HTTP GET method. This operation does not support conditions using <code>Expected.X.Name</code>, <code>Expected.X.Value</code>, or <code>Expected.X.Exists</code>. </important> <p> You can execute multiple <code>BatchPutAttributes</code> operations and other operations in parallel. However, large numbers of concurrent <code>BatchPutAttributes</code> calls can result in Service Unavailable (503) responses. </p> <p> The following limitations are enforced for this operation: <ul> <li>256 attribute name-value pairs per item</li> <li>1 MB request size</li> <li>1 billion attributes per domain</li> <li>10 GB of total user data storage per domain</li> <li>25 item limit per <code>BatchPutAttributes</code> operation</li> </ul> </p>"
    },
    "CreateDomain":{
      "name":"CreateDomain",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"CreateDomainRequest"},
      "errors":[
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NumberDomainsExceeded",
          "error":{
            "code":"NumberDomainsExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many domains exist per this account.</p>"
        }
      ],
      "documentation":"<p> The <code>CreateDomain</code> operation creates a new domain. The domain name should be unique among the domains associated with the Access Key ID provided in the request. The <code>CreateDomain</code> operation may take 10 or more seconds to complete. </p> <note> CreateDomain is an idempotent operation; running it multiple times using the same domain name will not result in an error response. </note> <p> The client can create up to 100 domains per account. </p> <p> If the client requires additional domains, go to <a href=\"http://aws.amazon.com/contact-us/simpledb-limit-request/\"> http://aws.amazon.com/contact-us/simpledb-limit-request/</a>. </p>"
    },
    "DeleteAttributes":{
      "name":"DeleteAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DeleteAttributesRequest"},
      "errors":[
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NoSuchDomain",
          "error":{
            "code":"NoSuchDomain",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified domain does not exist.</p>"
        },
        {
          "shape":"AttributeDoesNotExist",
          "error":{
            "code":"AttributeDoesNotExist",
            "httpStatusCode":404,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified attribute does not exist.</p>"
        }
      ],
      "documentation":"<p> Deletes one or more attributes associated with an item. If all attributes of the item are deleted, the item is deleted. </p> <note> If <code>DeleteAttributes</code> is called without being passed any attributes or values specified, all the attributes for the item are deleted. </note> <p> <code>DeleteAttributes</code> is an idempotent operation; running it multiple times on the same item or attribute does not result in an error response. </p> <p> Because Amazon SimpleDB makes multiple copies of item data and uses an eventual consistency update model, performing a <a>GetAttributes</a> or <a>Select</a> operation (read) immediately after a <code>DeleteAttributes</code> or <a>PutAttributes</a> operation (write) might not return updated item data. </p>"
    },
    "DeleteDomain":{
      "name":"DeleteDomain",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DeleteDomainRequest"},
      "errors":[
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        }
      ],
      "documentation":"<p> The <code>DeleteDomain</code> operation deletes a domain. Any items (and their attributes) in the domain are deleted as well. The <code>DeleteDomain</code> operation might take 10 or more seconds to complete. </p> <note> Running <code>DeleteDomain</code> on a domain that does not exist or running the function multiple times using the same domain name will not result in an error response. </note>"
    },
    "DomainMetadata":{
      "name":"DomainMetadata",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DomainMetadataRequest"},
      "output":{
        "shape":"DomainMetadataResult",
        "resultWrapper":"DomainMetadataResult"
      },
      "errors":[
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NoSuchDomain",
          "error":{
            "code":"NoSuchDomain",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified domain does not exist.</p>"
        }
      ],
      "documentation":"<p> Returns information about the domain, including when the domain was created, the number of items and attributes in the domain, and the size of the attribute names and values. </p>"
    },
    "GetAttributes":{
      "name":"GetAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"GetAttributesRequest"},
      "output":{
        "shape":"GetAttributesResult",
        "resultWrapper":"GetAttributesResult"
      },
      "errors":[
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NoSuchDomain",
          "error":{
            "code":"NoSuchDomain",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified domain does not exist.</p>"
        }
      ],
      "documentation":"<p> Returns all of the attributes associated with the specified item. Optionally, the attributes returned can be limited to one or more attributes by specifying an attribute name parameter. </p> <p> If the item does not exist on the replica that was accessed for this operation, an empty set is returned. The system does not return an error as it cannot guarantee the item does not exist on other replicas. </p> <note> If GetAttributes is called without being passed any attribute names, all the attributes for the item are returned. </note>"
    },
    "ListDomains":{
      "name":"ListDomains",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"ListDomainsRequest"},
      "output":{
        "shape":"ListDomainsResult",
        "resultWrapper":"ListDomainsResult"
      },
      "errors":[
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"InvalidNextToken",
          "error":{
            "code":"InvalidNextToken",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified NextToken is not valid. </p>"
        }
      ],
      "documentation":"<p> The <code>ListDomains</code> operation lists all domains associated with the Access Key ID. It returns domain names up to the limit set by <a href=\"#MaxNumberOfDomains\">MaxNumberOfDomains</a>. A <a href=\"#NextToken\">NextToken</a> is returned if there are more than <code>MaxNumberOfDomains</code> domains. Calling <code>ListDomains</code> successive times with the <code>NextToken</code> provided by the operation returns up to <code>MaxNumberOfDomains</code> more domain names with each successive operation call. </p>"
    },
    "PutAttributes":{
      "name":"PutAttributes",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"PutAttributesRequest"},
      "errors":[
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NoSuchDomain",
          "error":{
            "code":"NoSuchDomain",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified domain does not exist.</p>"
        },
        {
          "shape":"NumberDomainAttributesExceeded",
          "error":{
            "code":"NumberDomainAttributesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many attributes in this domain.</p>"
        },
        {
          "shape":"NumberDomainBytesExceeded",
          "error":{
            "code":"NumberDomainBytesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many bytes in this domain.</p>"
        },
        {
          "shape":"NumberItemAttributesExceeded",
          "error":{
            "code":"NumberItemAttributesExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many attributes in this item.</p>"
        },
        {
          "shape":"AttributeDoesNotExist",
          "error":{
            "code":"AttributeDoesNotExist",
            "httpStatusCode":404,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified attribute does not exist.</p>"
        }
      ],
      "documentation":"<p> The PutAttributes operation creates or replaces attributes in an item. The client may specify new attributes using a combination of the <code>Attribute.X.Name</code> and <code>Attribute.X.Value</code> parameters. The client specifies the first attribute by the parameters <code>Attribute.0.Name</code> and <code>Attribute.0.Value</code>, the second attribute by the parameters <code>Attribute.1.Name</code> and <code>Attribute.1.Value</code>, and so on. </p> <p> Attributes are uniquely identified in an item by their name/value combination. For example, a single item can have the attributes <code>{ \"first_name\", \"first_value\" }</code> and <code>{ \"first_name\", second_value\" }</code>. However, it cannot have two attribute instances where both the <code>Attribute.X.Name</code> and <code>Attribute.X.Value</code> are the same. </p> <p> Optionally, the requestor can supply the <code>Replace</code> parameter for each individual attribute. Setting this value to <code>true</code> causes the new attribute value to replace the existing attribute value(s). For example, if an item has the attributes <code>{ 'a', '1' }</code>, <code>{ 'b', '2'}</code> and <code>{ 'b', '3' }</code> and the requestor calls <code>PutAttributes</code> using the attributes <code>{ 'b', '4' }</code> with the <code>Replace</code> parameter set to true, the final attributes of the item are changed to <code>{ 'a', '1' }</code> and <code>{ 'b', '4' }</code>, which replaces the previous values of the 'b' attribute with the new value. </p> <note> Using <code>PutAttributes</code> to replace attribute values that do not exist will not result in an error response. </note> <p> You cannot specify an empty string as an attribute name. </p> <p> Because Amazon SimpleDB makes multiple copies of client data and uses an eventual consistency update model, an immediate <a>GetAttributes</a> or <a>Select</a> operation (read) immediately after a <a>PutAttributes</a> or <a>DeleteAttributes</a> operation (write) might not return the updated data. </p> <p> The following limitations are enforced for this operation: <ul> <li>256 total attribute name-value pairs per item</li> <li>One billion attributes per domain</li> <li>10 GB of total user data storage per domain</li> </ul> </p>"
    },
    "Select":{
      "name":"Select",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"SelectRequest"},
      "output":{
        "shape":"SelectResult",
        "resultWrapper":"SelectResult"
      },
      "errors":[
        {
          "shape":"InvalidParameterValue",
          "error":{
            "code":"InvalidParameterValue",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The value for a parameter is invalid.</p>"
        },
        {
          "shape":"InvalidNextToken",
          "error":{
            "code":"InvalidNextToken",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified NextToken is not valid. </p>"
        },
        {
          "shape":"InvalidNumberPredicates",
          "error":{
            "code":"InvalidNumberPredicates",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many predicates exist in the query expression.</p>"
        },
        {
          "shape":"InvalidNumberValueTests",
          "error":{
            "code":"InvalidNumberValueTests",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many predicates exist in the query expression.</p>"
        },
        {
          "shape":"InvalidQueryExpression",
          "error":{
            "code":"InvalidQueryExpression",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified query expression syntax is not valid.</p>"
        },
        {
          "shape":"MissingParameter",
          "error":{
            "code":"MissingParameter",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request must contain the specified missing parameter.</p>"
        },
        {
          "shape":"NoSuchDomain",
          "error":{
            "code":"NoSuchDomain",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The specified domain does not exist.</p>"
        },
        {
          "shape":"RequestTimeout",
          "error":{
            "code":"RequestTimeout",
            "httpStatusCode":408,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>A timeout occurred when attempting to query the specified domain with specified query expression.</p>"
        },
        {
          "shape":"TooManyRequestedAttributes",
          "error":{
            "code":"TooManyRequestedAttributes",
            "httpStatusCode":400,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>Too many attributes requested.</p>"
        }
      ],
      "documentation":"<p> The <code>Select</code> operation returns a set of attributes for <code>ItemNames</code> that match the select expression. <code>Select</code> is similar to the standard SQL SELECT statement. </p> <p> The total size of the response cannot exceed 1 MB in total size. Amazon SimpleDB automatically adjusts the number of items returned per page to enforce this limit. For example, if the client asks to retrieve 2500 items, but each individual item is 10 kB in size, the system returns 100 items and an appropriate <code>NextToken</code> so the client can access the next page of results. </p> <p> For information on how to construct select expressions, see Using Select to Create Amazon SimpleDB Queries in the Developer Guide. </p>"
    }
  },
  "shapes":{
    "Attribute":{
      "type":"structure",
      "required":[
        "Name",
        "Value"
      ],
      "members":{
        "Name":{
          "shape":"String",
          "documentation":"The name of the attribute."
        },
        "AlternateNameEncoding":{
          "shape":"String",
          "documentation":"<p></p>"
        },
        "Value":{
          "shape":"String",
          "documentation":"The value of the attribute."
        },
        "AlternateValueEncoding":{
          "shape":"String",
          "documentation":"<p></p>"
        }
      },
      "documentation":"<p></p>"
    },
    "AttributeDoesNotExist":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"AttributeDoesNotExist",
        "httpStatusCode":404,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The specified attribute does not exist.</p>"
    },
    "AttributeList":{
      "type":"list",
      "member":{
        "shape":"Attribute",
        "locationName":"Attribute"
      },
      "flattened":true
    },
    "AttributeNameList":{
      "type":"list",
      "member":{
        "shape":"String",
        "locationName":"AttributeName"
      },
      "flattened":true
    },
    "BatchDeleteAttributesRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "Items"
      ],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain in which the attributes are being deleted."
        },
        "Items":{
          "shape":"DeletableItemList",
          "documentation":"A list of items on which to perform the operation."
        }
      }
    },
    "BatchPutAttributesRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "Items"
      ],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain in which the attributes are being stored."
        },
        "Items":{
          "shape":"ReplaceableItemList",
          "documentation":"A list of items on which to perform the operation."
        }
      }
    },
    "Boolean":{"type":"boolean"},
    "CreateDomainRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain to create. The name can range between 3 and 255 characters and can contain the following characters: a-z, A-Z, 0-9, '_', '-', and '.'."
        }
      }
    },
    "DeletableAttribute":{
      "type":"structure",
      "required":["Name"],
      "members":{
        "Name":{
          "shape":"String",
          "documentation":"The name of the attribute."
        },
        "Value":{
          "shape":"String",
          "documentation":"The value of the attribute."
        }
      },
      "documentation":"<p></p>"
    },
    "DeletableAttributeList":{
      "type":"list",
      "member":{
        "shape":"DeletableAttribute",
        "locationName":"Attribute"
      },
      "flattened":true
    },
    "DeletableItem":{
      "type":"structure",
      "required":["Name"],
      "members":{
        "Name":{
          "shape":"String",
          "locationName":"ItemName"
        },
        "Attributes":{"shape":"DeletableAttributeList"}
      }
    },
    "DeletableItemList":{
      "type":"list",
      "member":{
        "shape":"DeletableItem",
        "locationName":"Item"
      },
      "flattened":true
    },
    "DeleteAttributesRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "ItemName"
      ],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain in which to perform the operation."
        },
        "ItemName":{
          "shape":"String",
          "documentation":"The name of the item. Similar to rows on a spreadsheet, items represent individual objects that contain one or more value-attribute pairs."
        },
        "Attributes":{
          "shape":"DeletableAttributeList",
          "documentation":"A list of Attributes. Similar to columns on a spreadsheet, attributes represent categories of data that can be assigned to items."
        },
        "Expected":{
          "shape":"UpdateCondition",
          "documentation":"The update condition which, if specified, determines whether the specified attributes will be deleted or not. The update condition must be satisfied in order for this request to be processed and the attributes to be deleted."
        }
      }
    },
    "DeleteDomainRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain to delete."
        }
      }
    },
    "DomainMetadataRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain for which to display the metadata of."
        }
      }
    },
    "DomainMetadataResult":{
      "type":"structure",
      "members":{
        "ItemCount":{
          "shape":"Integer",
          "documentation":"The number of all items in the domain."
        },
        "ItemNamesSizeBytes":{
          "shape":"Long",
          "documentation":"The total size of all item names in the domain, in bytes."
        },
        "AttributeNameCount":{
          "shape":"Integer",
          "documentation":"The number of unique attribute names in the domain."
        },
        "AttributeNamesSizeBytes":{
          "shape":"Long",
          "documentation":"The total size of all unique attribute names in the domain, in bytes."
        },
        "AttributeValueCount":{
          "shape":"Integer",
          "documentation":"The number of all attribute name/value pairs in the domain."
        },
        "AttributeValuesSizeBytes":{
          "shape":"Long",
          "documentation":"The total size of all attribute values in the domain, in bytes."
        },
        "Timestamp":{
          "shape":"Integer",
          "documentation":"The data and time when metadata was calculated, in Epoch (UNIX) seconds."
        }
      }
    },
    "DomainNameList":{
      "type":"list",
      "member":{
        "shape":"String",
        "locationName":"DomainName"
      },
      "flattened":true
    },
    "DuplicateItemName":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"DuplicateItemName",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The item name was specified more than once. </p>"
    },
    "Float":{"type":"float"},
    "GetAttributesRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "ItemName"
      ],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain in which to perform the operation."
        },
        "ItemName":{
          "shape":"String",
          "documentation":"The name of the item."
        },
        "AttributeNames":{
          "shape":"AttributeNameList",
          "documentation":"The names of the attributes."
        },
        "ConsistentRead":{
          "shape":"Boolean",
          "documentation":"Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read."
        }
      }
    },
    "GetAttributesResult":{
      "type":"structure",
      "members":{
        "Attributes":{
          "shape":"AttributeList",
          "documentation":"The list of attributes returned by the operation."
        }
      }
    },
    "Integer":{"type":"integer"},
    "InvalidNextToken":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"InvalidNextToken",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The specified NextToken is not valid. </p>"
    },
    "InvalidNumberPredicates":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"InvalidNumberPredicates",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many predicates exist in the query expression.</p>"
    },
    "InvalidNumberValueTests":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"InvalidNumberValueTests",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many predicates exist in the query expression.</p>"
    },
    "InvalidParameterValue":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"InvalidParameterValue",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The value for a parameter is invalid.</p>"
    },
    "InvalidQueryExpression":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"InvalidQueryExpression",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The specified query expression syntax is not valid.</p>"
    },
    "Item":{
      "type":"structure",
      "required":[
        "Name",
        "Attributes"
      ],
      "members":{
        "Name":{
          "shape":"String",
          "documentation":"The name of the item."
        },
        "AlternateNameEncoding":{
          "shape":"String",
          "documentation":"<p></p>"
        },
        "Attributes":{
          "shape":"AttributeList",
          "documentation":"A list of attributes."
        }
      },
      "documentation":"<p></p>"
    },
    "ItemList":{
      "type":"list",
      "member":{
        "shape":"Item",
        "locationName":"Item"
      },
      "flattened":true
    },
    "ListDomainsRequest":{
      "type":"structure",
      "members":{
        "MaxNumberOfDomains":{
          "shape":"Integer",
          "documentation":"The maximum number of domain names you want returned. The range is 1 to 100. The default setting is 100."
        },
        "NextToken":{
          "shape":"String",
          "documentation":"A string informing Amazon SimpleDB where to start the next list of domain names."
        }
      }
    },
    "ListDomainsResult":{
      "type":"structure",
      "members":{
        "DomainNames":{
          "shape":"DomainNameList",
          "documentation":"A list of domain names that match the expression."
        },
        "NextToken":{
          "shape":"String",
          "documentation":"An opaque token indicating that there are more domains than the specified <code>MaxNumberOfDomains</code> still available."
        }
      }
    },
    "Long":{"type":"long"},
    "MissingParameter":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"MissingParameter",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The request must contain the specified missing parameter.</p>"
    },
    "NoSuchDomain":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NoSuchDomain",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The specified domain does not exist.</p>"
    },
    "NumberDomainAttributesExceeded":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NumberDomainAttributesExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many attributes in this domain.</p>"
    },
    "NumberDomainBytesExceeded":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NumberDomainBytesExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many bytes in this domain.</p>"
    },
    "NumberDomainsExceeded":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NumberDomainsExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many domains exist per this account.</p>"
    },
    "NumberItemAttributesExceeded":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NumberItemAttributesExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many attributes in this item.</p>"
    },
    "NumberSubmittedAttributesExceeded":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NumberSubmittedAttributesExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many attributes exist in a single call.</p>"
    },
    "NumberSubmittedItemsExceeded":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"NumberSubmittedItemsExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many items exist in a single call.</p>"
    },
    "PutAttributesRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "ItemName",
        "Attributes"
      ],
      "members":{
        "DomainName":{
          "shape":"String",
          "documentation":"The name of the domain in which to perform the operation."
        },
        "ItemName":{
          "shape":"String",
          "documentation":"The name of the item."
        },
        "Attributes":{
          "shape":"ReplaceableAttributeList",
          "documentation":"The list of attributes."
        },
        "Expected":{
          "shape":"UpdateCondition",
          "documentation":"The update condition which, if specified, determines whether the specified attributes will be updated or not. The update condition must be satisfied in order for this request to be processed and the attributes to be updated."
        }
      }
    },
    "ReplaceableAttribute":{
      "type":"structure",
      "required":[
        "Name",
        "Value"
      ],
      "members":{
        "Name":{
          "shape":"String",
          "documentation":"The name of the replaceable attribute."
        },
        "Value":{
          "shape":"String",
          "documentation":"The value of the replaceable attribute."
        },
        "Replace":{
          "shape":"Boolean",
          "documentation":"A flag specifying whether or not to replace the attribute/value pair or to add a new attribute/value pair. The default setting is <code>false</code>."
        }
      },
      "documentation":"<p></p>"
    },
    "ReplaceableAttributeList":{
      "type":"list",
      "member":{
        "shape":"ReplaceableAttribute",
        "locationName":"Attribute"
      },
      "flattened":true
    },
    "ReplaceableItem":{
      "type":"structure",
      "required":[
        "Name",
        "Attributes"
      ],
      "members":{
        "Name":{
          "shape":"String",
          "documentation":"The name of the replaceable item.",
          "locationName":"ItemName"
        },
        "Attributes":{
          "shape":"ReplaceableAttributeList",
          "documentation":"The list of attributes for a replaceable item."
        }
      },
      "documentation":"<p></p>"
    },
    "ReplaceableItemList":{
      "type":"list",
      "member":{
        "shape":"ReplaceableItem",
        "locationName":"Item"
      },
      "flattened":true
    },
    "RequestTimeout":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"RequestTimeout",
        "httpStatusCode":408,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>A timeout occurred when attempting to query the specified domain with specified query expression.</p>"
    },
    "SelectRequest":{
      "type":"structure",
      "required":["SelectExpression"],
      "members":{
        "SelectExpression":{
          "shape":"String",
          "documentation":"The expression used to query the domain."
        },
        "NextToken":{
          "shape":"String",
          "documentation":"A string informing Amazon SimpleDB where to start the next list of <code>ItemNames</code>."
        },
        "ConsistentRead":{
          "shape":"Boolean",
          "documentation":"Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If <code>true</code>, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read."
        }
      }
    },
    "SelectResult":{
      "type":"structure",
      "members":{
        "Items":{
          "shape":"ItemList",
          "documentation":"A list of items that match the select expression."
        },
        "NextToken":{
          "shape":"String",
          "documentation":"An opaque token indicating that more items than <code>MaxNumberOfItems</code> were matched, the response size exceeded 1 megabyte, or the execution time exceeded 5 seconds."
        }
      }
    },
    "String":{"type":"string"},
    "TooManyRequestedAttributes":{
      "type":"structure",
      "members":{
        "BoxUsage":{"shape":"Float"}
      },
      "error":{
        "code":"TooManyRequestedAttributes",
        "httpStatusCode":400,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>Too many attributes requested.</p>"
    },
    "UpdateCondition":{
      "type":"structure",
      "members":{
        "Name":{
          "shape":"String",
          "documentation":"<p>The name of the attribute involved in the condition.</p>"
        },
        "Value":{
          "shape":"String",
          "documentation":"<p>The value of an attribute. This value can only be specified when the <code>Exists</code> parameter is equal to <code>true</code>.</p>"
        },
        "Exists":{
          "shape":"Boolean",
          "documentation":"<p>A value specifying whether or not the specified attribute must exist with the specified value in order for the update condition to be satisfied. Specify <code>true</code> if the attribute must exist for the update condition to be satisfied. Specify <code>false</code> if the attribute should not exist in order for the update condition to be satisfied.</p>"
        }
      },
      "documentation":"<p> Specifies the conditions under which data should be updated. If an update condition is specified for a request, the data will only be updated if the condition is satisfied. For example, if an attribute with a specific name and value exists, or if a specific attribute doesn't exist. </p>"
    }
  }
}

]===]))
