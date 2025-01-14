local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata":{
    "apiVersion":"2011-02-01",
    "endpointPrefix":"cloudsearch",
    "serviceFullName":"Amazon CloudSearch",
    "serviceId":"CloudSearch",
    "signatureVersion":"v4",
    "xmlNamespace":"http://cloudsearch.amazonaws.com/doc/2011-02-01/",
    "protocol":"query"
  },
  "documentation":"<fullname>Amazon CloudSearch Configuration Service</fullname> <p>You use the configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p> <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region\">Regions and Endpoints</a>.</p>",
  "operations":{
    "CreateDomain":{
      "name":"CreateDomain",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"CreateDomainRequest"},
      "output":{
        "shape":"CreateDomainResponse",
        "documentation":"<p>A response message that contains the status of a newly created domain.</p>",
        "resultWrapper":"CreateDomainResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        }
      ],
      "documentation":"<p>Creates a new search domain.</p>"
    },
    "DefineIndexField":{
      "name":"DefineIndexField",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DefineIndexFieldRequest"},
      "output":{
        "shape":"DefineIndexFieldResponse",
        "documentation":"<p>A response message that contains the status of an updated index field.</p>",
        "resultWrapper":"DefineIndexFieldResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Configures an <code>IndexField</code> for the search domain. Used to create new fields and modify existing ones. If the field exists, the new configuration replaces the old one. You can configure a maximum of 200 index fields.</p>"
    },
    "DefineRankExpression":{
      "name":"DefineRankExpression",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DefineRankExpressionRequest"},
      "output":{
        "shape":"DefineRankExpressionResponse",
        "documentation":"<p>A response message that contains the status of an updated <code>RankExpression</code>.</p>",
        "resultWrapper":"DefineRankExpressionResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Configures a <code>RankExpression</code> for the search domain. Used to create new rank expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. You can configure a maximum of 50 rank expressions.</p>"
    },
    "DeleteDomain":{
      "name":"DeleteDomain",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DeleteDomainRequest"},
      "output":{
        "shape":"DeleteDomainResponse",
        "documentation":"<p>A response message that contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>",
        "resultWrapper":"DeleteDomainResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        }
      ],
      "documentation":"<p>Permanently deletes a search domain and all of its data.</p>"
    },
    "DeleteIndexField":{
      "name":"DeleteIndexField",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DeleteIndexFieldRequest"},
      "output":{
        "shape":"DeleteIndexFieldResponse",
        "documentation":"<p>A response message that contains the status of a deleted index field.</p>",
        "resultWrapper":"DeleteIndexFieldResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Removes an <code>IndexField</code> from the search domain.</p>"
    },
    "DeleteRankExpression":{
      "name":"DeleteRankExpression",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DeleteRankExpressionRequest"},
      "output":{
        "shape":"DeleteRankExpressionResponse",
        "documentation":"<p>A response message that contains the status of a deleted <code>RankExpression</code>.</p>",
        "resultWrapper":"DeleteRankExpressionResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Removes a <code>RankExpression</code> from the search domain.</p>"
    },
    "DescribeAvailabilityOptions":{
      "name":"DescribeAvailabilityOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"DescribeAvailabilityOptionsRequest",
        "documentation":"<p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>"
      },
      "output":{
        "shape":"DescribeAvailabilityOptionsResponse",
        "documentation":"<p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>",
        "resultWrapper":"DescribeAvailabilityOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        },
        {
          "shape":"DisabledOperationException",
          "error":{
            "code":"DisabledAction",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted an operation which is not enabled.</p>"
        }
      ],
      "documentation":"<p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html\" target=\"_blank\">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>"
    },
    "DescribeDefaultSearchField":{
      "name":"DescribeDefaultSearchField",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeDefaultSearchFieldRequest"},
      "output":{
        "shape":"DescribeDefaultSearchFieldResponse",
        "documentation":"<p>A response message that contains the default search field for a search domain.</p>",
        "resultWrapper":"DescribeDefaultSearchFieldResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets the default search field configured for the search domain.</p>"
    },
    "DescribeDomains":{
      "name":"DescribeDomains",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeDomainsRequest"},
      "output":{
        "shape":"DescribeDomainsResponse",
        "documentation":"<p>A response message that contains the status of one or more domains.</p>",
        "resultWrapper":"DescribeDomainsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        }
      ],
      "documentation":"<p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default.</p>"
    },
    "DescribeIndexFields":{
      "name":"DescribeIndexFields",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeIndexFieldsRequest"},
      "output":{
        "shape":"DescribeIndexFieldsResponse",
        "documentation":"<p>A response message that contains the index fields for a search domain.</p>",
        "resultWrapper":"DescribeIndexFieldsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. Shows all fields by default.</p>"
    },
    "DescribeRankExpressions":{
      "name":"DescribeRankExpressions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeRankExpressionsRequest"},
      "output":{
        "shape":"DescribeRankExpressionsResponse",
        "documentation":"<p>A response message that contains the rank expressions for a search domain.</p>",
        "resultWrapper":"DescribeRankExpressionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets the rank expressions configured for the search domain. Can be limited to specific rank expressions by name. Shows all rank expressions by default. </p>"
    },
    "DescribeServiceAccessPolicies":{
      "name":"DescribeServiceAccessPolicies",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeServiceAccessPoliciesRequest"},
      "output":{
        "shape":"DescribeServiceAccessPoliciesResponse",
        "documentation":"<p>A response message that contains the access policies for a domain.</p>",
        "resultWrapper":"DescribeServiceAccessPoliciesResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets information about the resource-based policies that control access to the domain's document and search services.</p>"
    },
    "DescribeStemmingOptions":{
      "name":"DescribeStemmingOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeStemmingOptionsRequest"},
      "output":{
        "shape":"DescribeStemmingOptionsResponse",
        "documentation":"<p>A response message that contains the stemming options for a search domain.</p>",
        "resultWrapper":"DescribeStemmingOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets the stemming dictionary configured for the search domain.</p>"
    },
    "DescribeStopwordOptions":{
      "name":"DescribeStopwordOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeStopwordOptionsRequest"},
      "output":{
        "shape":"DescribeStopwordOptionsResponse",
        "documentation":"<p>A response message that contains the stopword options for a search domain.</p>",
        "resultWrapper":"DescribeStopwordOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets the stopwords configured for the search domain.</p>"
    },
    "DescribeSynonymOptions":{
      "name":"DescribeSynonymOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeSynonymOptionsRequest"},
      "output":{
        "shape":"DescribeSynonymOptionsResponse",
        "documentation":"<p>A response message that contains the synonym options for a search domain.</p>",
        "resultWrapper":"DescribeSynonymOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Gets the synonym dictionary configured for the search domain.</p>"
    },
    "IndexDocuments":{
      "name":"IndexDocuments",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"IndexDocumentsRequest"},
      "output":{
        "shape":"IndexDocumentsResponse",
        "documentation":"<p>The result of an <code>IndexDocuments</code> action.</p>",
        "resultWrapper":"IndexDocumentsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Tells the search domain to start indexing its documents using the latest text processing options and <code>IndexFields</code>. This operation must be invoked to make options whose <a>OptionStatus</a> has <code>OptionState</code> of <code>RequiresIndexDocuments</code> visible in search results.</p>"
    },
    "UpdateAvailabilityOptions":{
      "name":"UpdateAvailabilityOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{
        "shape":"UpdateAvailabilityOptionsRequest",
        "documentation":"<p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>"
      },
      "output":{
        "shape":"UpdateAvailabilityOptionsResponse",
        "documentation":"<p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>",
        "resultWrapper":"UpdateAvailabilityOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        },
        {
          "shape":"DisabledOperationException",
          "error":{
            "code":"DisabledAction",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted an operation which is not enabled.</p>"
        }
      ],
      "documentation":"<p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html\" target=\"_blank\">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>"
    },
    "UpdateDefaultSearchField":{
      "name":"UpdateDefaultSearchField",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"UpdateDefaultSearchFieldRequest"},
      "output":{
        "shape":"UpdateDefaultSearchFieldResponse",
        "documentation":"<p>A response message that contains the status of an updated default search field.</p>",
        "resultWrapper":"UpdateDefaultSearchFieldResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Configures the default search field for the search domain. The default search field is the text field that is searched when a search request does not specify which fields to search. By default, it is configured to include the contents of all of the domain's text fields. </p>"
    },
    "UpdateServiceAccessPolicies":{
      "name":"UpdateServiceAccessPolicies",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"UpdateServiceAccessPoliciesRequest"},
      "output":{
        "shape":"UpdateServiceAccessPoliciesResponse",
        "documentation":"<p>A response message that contains the status of updated access policies.</p>",
        "resultWrapper":"UpdateServiceAccessPoliciesResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        }
      ],
      "documentation":"<p>Configures the policies that control access to the domain's document and search services. The maximum size of an access policy document is 100 KB.</p>"
    },
    "UpdateStemmingOptions":{
      "name":"UpdateStemmingOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"UpdateStemmingOptionsRequest"},
      "output":{
        "shape":"UpdateStemmingOptionsResponse",
        "documentation":"<p>A response message that contains the status of updated stemming options.</p>",
        "resultWrapper":"UpdateStemmingOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Configures a stemming dictionary for the search domain. The stemming dictionary is used during indexing and when processing search requests. The maximum size of the stemming dictionary is 500 KB.</p>"
    },
    "UpdateStopwordOptions":{
      "name":"UpdateStopwordOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"UpdateStopwordOptionsRequest"},
      "output":{
        "shape":"UpdateStopwordOptionsResponse",
        "documentation":"<p>A response message that contains the status of updated stopword options.</p>",
        "resultWrapper":"UpdateStopwordOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Configures stopwords for the search domain. Stopwords are used during indexing and when processing search requests. The maximum size of the stopwords dictionary is 10 KB.</p>"
    },
    "UpdateSynonymOptions":{
      "name":"UpdateSynonymOptions",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"UpdateSynonymOptionsRequest"},
      "output":{
        "shape":"UpdateSynonymOptionsResponse",
        "documentation":"<p>A response message that contains the status of updated synonym options.</p>",
        "resultWrapper":"UpdateSynonymOptionsResult"
      },
      "errors":[
        {
          "shape":"BaseException",
          "exception":true,
          "documentation":"<p>An error occurred while processing the request.</p>"
        },
        {
          "shape":"InternalException",
          "error":{
            "code":"InternalException",
            "httpStatusCode":500
          },
          "exception":true,
          "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
        },
        {
          "shape":"InvalidTypeException",
          "error":{
            "code":"InvalidType",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
        },
        {
          "shape":"LimitExceededException",
          "error":{
            "code":"LimitExceeded",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{
            "code":"ResourceNotFound",
            "httpStatusCode":409,
            "senderFault":true
          },
          "exception":true,
          "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
        }
      ],
      "documentation":"<p>Configures a synonym dictionary for the search domain. The synonym dictionary is used during indexing to configure mappings for terms that occur in text fields. The maximum size of the synonym dictionary is 100 KB. </p>"
    }
  },
  "shapes":{
    "AccessPoliciesStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{"shape":"PolicyDocument"},
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>A <code>PolicyDocument</code> that specifies access policies for the search domain's services, and the current status of those policies.</p>"
    },
    "Arn":{
      "type":"string",
      "documentation":"<p>An Amazon Resource Name (ARN). See <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html\" target=\"_blank\">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>"
    },
    "AvailabilityOptionsStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{
          "shape":"MultiAZ",
          "documentation":"<p>The availability options configured for the domain.</p>"
        },
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The status and configuration of the domain's availability options.</p>"
    },
    "BaseException":{
      "type":"structure",
      "members":{
        "Code":{"shape":"ErrorCode"},
        "Message":{"shape":"ErrorMessage"}
      },
      "exception":true,
      "documentation":"<p>An error occurred while processing the request.</p>"
    },
    "Boolean":{"type":"boolean"},
    "CreateDomainRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "CreateDomainResponse":{
      "type":"structure",
      "members":{
        "DomainStatus":{"shape":"DomainStatus"}
      },
      "documentation":"<p>A response message that contains the status of a newly created domain.</p>"
    },
    "DefaultSearchFieldStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{
          "shape":"FieldName",
          "documentation":"<p>The name of the <code>IndexField</code> to use as the default search field. The default is an empty string, which automatically searches all text fields.</p>"
        },
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The value of the <code>DefaultSearchField</code> configured for this search domain and its current status.</p>"
    },
    "DefineIndexFieldRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "IndexField"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "IndexField":{"shape":"IndexField"}
      }
    },
    "DefineIndexFieldResponse":{
      "type":"structure",
      "required":["IndexField"],
      "members":{
        "IndexField":{"shape":"IndexFieldStatus"}
      },
      "documentation":"<p>A response message that contains the status of an updated index field.</p>"
    },
    "DefineRankExpressionRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "RankExpression"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "RankExpression":{"shape":"NamedRankExpression"}
      }
    },
    "DefineRankExpressionResponse":{
      "type":"structure",
      "required":["RankExpression"],
      "members":{
        "RankExpression":{"shape":"RankExpressionStatus"}
      },
      "documentation":"<p>A response message that contains the status of an updated <code>RankExpression</code>.</p>"
    },
    "DeleteDomainRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "DeleteDomainResponse":{
      "type":"structure",
      "members":{
        "DomainStatus":{"shape":"DomainStatus"}
      },
      "documentation":"<p>A response message that contains the status of a newly deleted domain, or no status if the domain has already been completely deleted.</p>"
    },
    "DeleteIndexFieldRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "IndexFieldName"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "IndexFieldName":{"shape":"FieldName"}
      }
    },
    "DeleteIndexFieldResponse":{
      "type":"structure",
      "required":["IndexField"],
      "members":{
        "IndexField":{"shape":"IndexFieldStatus"}
      },
      "documentation":"<p>A response message that contains the status of a deleted index field.</p>"
    },
    "DeleteRankExpressionRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "RankName"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "RankName":{
          "shape":"FieldName",
          "documentation":"<p>The name of the <code>RankExpression</code> to delete.</p>"
        }
      }
    },
    "DeleteRankExpressionResponse":{
      "type":"structure",
      "required":["RankExpression"],
      "members":{
        "RankExpression":{"shape":"RankExpressionStatus"}
      },
      "documentation":"<p>A response message that contains the status of a deleted <code>RankExpression</code>.</p>"
    },
    "DescribeAvailabilityOptionsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{
          "shape":"DomainName",
          "documentation":"<p>The name of the domain you want to describe.</p>"
        }
      },
      "documentation":"<p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>"
    },
    "DescribeAvailabilityOptionsResponse":{
      "type":"structure",
      "members":{
        "AvailabilityOptions":{
          "shape":"AvailabilityOptionsStatus",
          "documentation":"<p>The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. </p>"
        }
      },
      "documentation":"<p>The result of a <code>DescribeAvailabilityOptions</code> request. Indicates whether or not the Multi-AZ option is enabled for the domain specified in the request. </p>"
    },
    "DescribeDefaultSearchFieldRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "DescribeDefaultSearchFieldResponse":{
      "type":"structure",
      "required":["DefaultSearchField"],
      "members":{
        "DefaultSearchField":{
          "shape":"DefaultSearchFieldStatus",
          "documentation":"<p>The name of the <code>IndexField</code> to use for search requests issued with the <code>q</code> parameter. The default is the empty string, which automatically searches all text fields.</p>"
        }
      },
      "documentation":"<p>A response message that contains the default search field for a search domain.</p>"
    },
    "DescribeDomainsRequest":{
      "type":"structure",
      "members":{
        "DomainNames":{
          "shape":"DomainNameList",
          "documentation":"<p>Limits the DescribeDomains response to the specified search domains.</p>"
        }
      }
    },
    "DescribeDomainsResponse":{
      "type":"structure",
      "required":["DomainStatusList"],
      "members":{
        "DomainStatusList":{"shape":"DomainStatusList"}
      },
      "documentation":"<p>A response message that contains the status of one or more domains.</p>"
    },
    "DescribeIndexFieldsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "FieldNames":{
          "shape":"FieldNameList",
          "documentation":"<p>Limits the <code>DescribeIndexFields</code> response to the specified fields.</p>"
        }
      }
    },
    "DescribeIndexFieldsResponse":{
      "type":"structure",
      "required":["IndexFields"],
      "members":{
        "IndexFields":{
          "shape":"IndexFieldStatusList",
          "documentation":"<p>The index fields configured for the domain.</p>"
        }
      },
      "documentation":"<p>A response message that contains the index fields for a search domain.</p>"
    },
    "DescribeRankExpressionsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "RankNames":{
          "shape":"FieldNameList",
          "documentation":"<p>Limits the <code>DescribeRankExpressions</code> response to the specified fields.</p>"
        }
      }
    },
    "DescribeRankExpressionsResponse":{
      "type":"structure",
      "required":["RankExpressions"],
      "members":{
        "RankExpressions":{
          "shape":"RankExpressionStatusList",
          "documentation":"<p>The rank expressions configured for the domain.</p>"
        }
      },
      "documentation":"<p>A response message that contains the rank expressions for a search domain.</p>"
    },
    "DescribeServiceAccessPoliciesRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "DescribeServiceAccessPoliciesResponse":{
      "type":"structure",
      "required":["AccessPolicies"],
      "members":{
        "AccessPolicies":{"shape":"AccessPoliciesStatus"}
      },
      "documentation":"<p>A response message that contains the access policies for a domain.</p>"
    },
    "DescribeStemmingOptionsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "DescribeStemmingOptionsResponse":{
      "type":"structure",
      "required":["Stems"],
      "members":{
        "Stems":{"shape":"StemmingOptionsStatus"}
      },
      "documentation":"<p>A response message that contains the stemming options for a search domain.</p>"
    },
    "DescribeStopwordOptionsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "DescribeStopwordOptionsResponse":{
      "type":"structure",
      "required":["Stopwords"],
      "members":{
        "Stopwords":{"shape":"StopwordOptionsStatus"}
      },
      "documentation":"<p>A response message that contains the stopword options for a search domain.</p>"
    },
    "DescribeSynonymOptionsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "DescribeSynonymOptionsResponse":{
      "type":"structure",
      "required":["Synonyms"],
      "members":{
        "Synonyms":{"shape":"SynonymOptionsStatus"}
      },
      "documentation":"<p>A response message that contains the synonym options for a search domain.</p>"
    },
    "DisabledOperationException":{
      "type":"structure",
      "members":{
      },
      "error":{
        "code":"DisabledAction",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The request was rejected because it attempted an operation which is not enabled.</p>"
    },
    "DocumentCount":{
      "type":"long",
      "min":0
    },
    "DomainId":{
      "type":"string",
      "min":1,
      "max":64,
      "documentation":"<p>An internally generated unique identifier for a domain.</p>"
    },
    "DomainName":{
      "type":"string",
      "min":3,
      "max":28,
      "pattern":"[a-z][a-z0-9\\-]+",
      "documentation":"<p>A string that represents the name of a domain. Domain names must be unique across the domains owned by an account within an AWS region. Domain names must start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen). Uppercase letters and underscores are not allowed.</p>"
    },
    "DomainNameList":{
      "type":"list",
      "member":{"shape":"DomainName"},
      "documentation":"<p>A list of domain names.</p>"
    },
    "DomainStatus":{
      "type":"structure",
      "required":[
        "DomainId",
        "DomainName",
        "RequiresIndexDocuments"
      ],
      "members":{
        "DomainId":{"shape":"DomainId"},
        "DomainName":{"shape":"DomainName"},
        "Created":{
          "shape":"Boolean",
          "documentation":"<p>True if the search domain is created. It can take several minutes to initialize a domain when <a>CreateDomain</a> is called. Newly created search domains are returned from <a>DescribeDomains</a> with a false value for Created until domain creation is complete.</p>"
        },
        "Deleted":{
          "shape":"Boolean",
          "documentation":"<p>True if the search domain has been deleted. The system must clean up resources dedicated to the search domain when <a>DeleteDomain</a> is called. Newly deleted search domains are returned from <a>DescribeDomains</a> with a true value for IsDeleted for several minutes until resource cleanup is complete.</p>"
        },
        "NumSearchableDocs":{
          "shape":"DocumentCount",
          "documentation":"<p>The number of documents that have been submitted to the domain and indexed.</p>"
        },
        "DocService":{
          "shape":"ServiceEndpoint",
          "documentation":"<p>The service endpoint for updating documents in a search domain.</p>"
        },
        "SearchService":{
          "shape":"ServiceEndpoint",
          "documentation":"<p>The service endpoint for requesting search results from a search domain.</p>"
        },
        "RequiresIndexDocuments":{
          "shape":"Boolean",
          "documentation":"<p>True if <a>IndexDocuments</a> needs to be called to activate the current domain configuration.</p>"
        },
        "Processing":{
          "shape":"Boolean",
          "documentation":"<p>True if processing is being done to activate the current domain configuration.</p>"
        },
        "SearchInstanceType":{
          "shape":"SearchInstanceType",
          "documentation":"<p>The instance type (such as search.m1.small) that is being used to process search requests.</p>"
        },
        "SearchPartitionCount":{
          "shape":"PartitionCount",
          "documentation":"<p>The number of partitions across which the search index is spread.</p>"
        },
        "SearchInstanceCount":{
          "shape":"InstanceCount",
          "documentation":"<p>The number of search instances that are available to process search requests.</p>"
        }
      },
      "documentation":"<p>The current status of the search domain.</p>"
    },
    "DomainStatusList":{
      "type":"list",
      "member":{"shape":"DomainStatus"},
      "documentation":"<p>The current status of all of your search domains.</p>"
    },
    "ErrorCode":{
      "type":"string",
      "documentation":"<p>A machine-parsable string error or warning code.</p>"
    },
    "ErrorMessage":{
      "type":"string",
      "documentation":"<p>A human-readable string error or warning message.</p>"
    },
    "FieldName":{
      "type":"string",
      "min":1,
      "max":64,
      "pattern":"[a-z][a-z0-9_]*",
      "documentation":"<p>A string that represents the name of an index field. Field names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Uppercase letters and hyphens are not allowed. The names \"body\", \"docid\", and \"text_relevance\" are reserved and cannot be specified as field or rank expression names.</p>"
    },
    "FieldNameList":{
      "type":"list",
      "member":{"shape":"FieldName"}
    },
    "FieldValue":{
      "type":"string",
      "min":0,
      "max":1024,
      "documentation":"<p>The value of a field or source document attribute.</p>"
    },
    "IndexDocumentsRequest":{
      "type":"structure",
      "required":["DomainName"],
      "members":{
        "DomainName":{"shape":"DomainName"}
      }
    },
    "IndexDocumentsResponse":{
      "type":"structure",
      "members":{
        "FieldNames":{
          "shape":"FieldNameList",
          "documentation":"<p>The names of the fields that are currently being processed due to an <code>IndexDocuments</code> action.</p>"
        }
      },
      "documentation":"<p>The result of an <code>IndexDocuments</code> action.</p>"
    },
    "IndexField":{
      "type":"structure",
      "required":[
        "IndexFieldName",
        "IndexFieldType"
      ],
      "members":{
        "IndexFieldName":{
          "shape":"FieldName",
          "documentation":"<p>The name of a field in the search index. Field names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Uppercase letters and hyphens are not allowed. The names \"body\", \"docid\", and \"text_relevance\" are reserved and cannot be specified as field or rank expression names.</p>"
        },
        "IndexFieldType":{
          "shape":"IndexFieldType",
          "documentation":"<p>The type of field. Based on this type, exactly one of the <a>UIntOptions</a>, <a>LiteralOptions</a> or <a>TextOptions</a> must be present.</p>"
        },
        "UIntOptions":{
          "shape":"UIntOptions",
          "documentation":"<p>Options for an unsigned integer field. Present if <code>IndexFieldType</code> specifies the field is of type unsigned integer.</p>"
        },
        "LiteralOptions":{
          "shape":"LiteralOptions",
          "documentation":"<p>Options for literal field. Present if <code>IndexFieldType</code> specifies the field is of type literal.</p>"
        },
        "TextOptions":{
          "shape":"TextOptions",
          "documentation":"<p>Options for text field. Present if <code>IndexFieldType</code> specifies the field is of type text.</p>"
        },
        "SourceAttributes":{
          "shape":"SourceAttributeList",
          "documentation":"<p>An optional list of source attributes that provide data for this index field. If not specified, the data is pulled from a source attribute with the same name as this <code>IndexField</code>. When one or more source attributes are specified, an optional data transformation can be applied to the source data when populating the index field. You can configure a maximum of 20 sources for an <code>IndexField</code>.</p>"
        }
      },
      "documentation":"<p>Defines a field in the index, including its name, type, and the source of its data. The <code>IndexFieldType</code> indicates which of the options will be present. It is invalid to specify options for a type other than the <code>IndexFieldType</code>.</p>"
    },
    "IndexFieldStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{"shape":"IndexField"},
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The value of an <code>IndexField</code> and its current status.</p>"
    },
    "IndexFieldStatusList":{
      "type":"list",
      "member":{"shape":"IndexFieldStatus"}
    },
    "IndexFieldType":{
      "type":"string",
      "enum":[
        "uint",
        "literal",
        "text"
      ],
      "documentation":"<p>The type of <code>IndexField</code>.</p>"
    },
    "InstanceCount":{
      "type":"integer",
      "min":1
    },
    "InternalException":{
      "type":"structure",
      "members":{
      },
      "error":{
        "code":"InternalException",
        "httpStatusCode":500
      },
      "exception":true,
      "documentation":"<p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href=\"http://status.aws.amazon.com/\">Service Health Dashboard</a>.</p>"
    },
    "InvalidTypeException":{
      "type":"structure",
      "members":{
      },
      "error":{
        "code":"InvalidType",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The request was rejected because it specified an invalid type definition.</p>"
    },
    "Language":{
      "type":"string",
      "pattern":"[a-zA-Z]{2,8}(?:-[a-zA-Z]{2,8})*",
      "documentation":"<p>An <a href=\"http://tools.ietf.org/html/rfc4646\">IETF RFC 4646</a> language code. Only the primary language is considered. English (en) is currently the only supported language.</p>"
    },
    "LimitExceededException":{
      "type":"structure",
      "members":{
      },
      "error":{
        "code":"LimitExceeded",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The request was rejected because a resource limit has already been met.</p>"
    },
    "LiteralOptions":{
      "type":"structure",
      "members":{
        "DefaultValue":{
          "shape":"FieldValue",
          "documentation":"<p>The default value for a literal field. Optional.</p>"
        },
        "SearchEnabled":{
          "shape":"Boolean",
          "documentation":"<p>Specifies whether search is enabled for this field. Default: False.</p>"
        },
        "FacetEnabled":{
          "shape":"Boolean",
          "documentation":"<p>Specifies whether facets are enabled for this field. Default: False.</p>"
        },
        "ResultEnabled":{
          "shape":"Boolean",
          "documentation":"<p>Specifies whether values of this field can be returned in search results and used for ranking. Default: False.</p>"
        }
      },
      "documentation":"<p>Options that define a literal field in the search index.</p>"
    },
    "MultiAZ":{"type":"boolean"},
    "NamedRankExpression":{
      "type":"structure",
      "required":[
        "RankName",
        "RankExpression"
      ],
      "members":{
        "RankName":{
          "shape":"FieldName",
          "documentation":"<p>The name of a rank expression. Rank expression names must begin with a letter and can contain the following characters: a-z (lowercase), 0-9, and _ (underscore). Uppercase letters and hyphens are not allowed. The names \"body\", \"docid\", and \"text_relevance\" are reserved and cannot be specified as field or rank expression names.</p>"
        },
        "RankExpression":{
          "shape":"RankExpression",
          "documentation":"<p>The expression to evaluate for ranking or thresholding while processing a search request. The <code>RankExpression</code> syntax is based on JavaScript expressions and supports:</p> <ul> <li>Integer, floating point, hex and octal literals</li> <li>Shortcut evaluation of logical operators such that an expression <code>a || b</code> evaluates to the value <code>a</code>, if <code>a</code> is true, without evaluating <code>b</code> at all</li> <li>JavaScript order of precedence for operators</li> <li>Arithmetic operators: <code>+ - * / %</code> </li> <li>Boolean operators (including the ternary operator)</li> <li>Bitwise operators</li> <li>Comparison operators</li> <li>Common mathematic functions: <code>abs ceil erf exp floor lgamma ln log2 log10 max min sqrt pow</code> </li> <li>Trigonometric library functions: <code>acosh acos asinh asin atanh atan cosh cos sinh sin tanh tan</code> </li> <li>Random generation of a number between 0 and 1: <code>rand</code> </li> <li>Current time in epoch: <code>time</code> </li> <li>The <code>min max</code> functions that operate on a variable argument list</li> </ul> <p>Intermediate results are calculated as double precision floating point values. The final return value of a <code>RankExpression</code> is automatically converted from floating point to a 32-bit unsigned integer by rounding to the nearest integer, with a natural floor of 0 and a ceiling of max(uint32_t), 4294967295. Mathematical errors such as dividing by 0 will fail during evaluation and return a value of 0.</p> <p>The source data for a <code>RankExpression</code> can be the name of an <code>IndexField</code> of type uint, another <code>RankExpression</code> or the reserved name <i>text_relevance</i>. The text_relevance source is defined to return an integer from 0 to 1000 (inclusive) to indicate how relevant a document is to the search request, taking into account repetition of search terms in the document and proximity of search terms to each other in each matching <code>IndexField</code> in the document.</p> <p>For more information about using rank expressions to customize ranking, see the Amazon CloudSearch Developer Guide.</p>"
        }
      },
      "documentation":"<p>A named expression that can be evaluated at search time and used for ranking or thresholding in a search query. </p>"
    },
    "OptionState":{
      "type":"string",
      "enum":[
        "RequiresIndexDocuments",
        "Processing",
        "Active"
      ],
      "documentation":"<p>The state of processing a change to an option.</p>"
    },
    "OptionStatus":{
      "type":"structure",
      "required":[
        "CreationDate",
        "UpdateDate",
        "State"
      ],
      "members":{
        "CreationDate":{
          "shape":"UpdateTimestamp",
          "documentation":"<p>A timestamp for when this option was created.</p>"
        },
        "UpdateDate":{
          "shape":"UpdateTimestamp",
          "documentation":"<p>A timestamp for when this option was last updated.</p>"
        },
        "UpdateVersion":{
          "shape":"UIntValue",
          "documentation":"<p>A unique integer that indicates when this option was last updated.</p>"
        },
        "State":{
          "shape":"OptionState",
          "documentation":"<p>The state of processing a change to an option. Possible values:</p> <ul> <li> <code>RequiresIndexDocuments</code>: the option's latest value will not be visible in searches until <a>IndexDocuments</a> has been called and indexing is complete.</li> <li> <code>Processing</code>: the option's latest value is not yet visible in all searches but is in the process of being activated. </li> <li> <code>Active</code>: the option's latest value is completely visible. Any warnings or messages generated during processing are provided in <code>Diagnostics</code>.</li> </ul>"
        },
        "PendingDeletion":{
          "shape":"Boolean",
          "documentation":"<p>Indicates that the option will be deleted once processing is complete.</p>"
        }
      },
      "documentation":"<p>The status of an option, including when it was last updated and whether it is actively in use for searches.</p>"
    },
    "PartitionCount":{
      "type":"integer",
      "min":1
    },
    "PolicyDocument":{
      "type":"string",
      "documentation":"<p>An IAM access policy as described in <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?AccessPolicyLanguage.html\" target=\"_blank\">The Access Policy Language</a> in <i>Using AWS Identity and Access Management</i>. The maximum size of an access policy document is 100 KB.</p> <p>Example: <code>{\"Statement\": [{\"Effect\":\"Allow\", \"Action\": \"*\", \"Resource\": \"arn:aws:cs:us-east-1:1234567890:search/movies\", \"Condition\": { \"IpAddress\": { \"aws:SourceIp\": [\"203.0.113.1/32\"] } }}, {\"Effect\":\"Allow\", \"Action\": \"*\", \"Resource\": \"arn:aws:cs:us-east-1:1234567890:documents/movies\", \"Condition\": { \"IpAddress\": { \"aws:SourceIp\": [\"203.0.113.1/32\"] } }} ] }</code></p>"
    },
    "RankExpression":{
      "type":"string",
      "min":1,
      "max":10240,
      "documentation":"<p>The current status of the rank expression.</p>"
    },
    "RankExpressionStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{
          "shape":"NamedRankExpression",
          "documentation":"<p>The expression that is evaluated for ranking or thresholding while processing a search request.</p>"
        },
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The value of a <code>RankExpression</code> and its current status.</p>"
    },
    "RankExpressionStatusList":{
      "type":"list",
      "member":{"shape":"RankExpressionStatus"}
    },
    "ResourceNotFoundException":{
      "type":"structure",
      "members":{
      },
      "error":{
        "code":"ResourceNotFound",
        "httpStatusCode":409,
        "senderFault":true
      },
      "exception":true,
      "documentation":"<p>The request was rejected because it attempted to reference a resource that does not exist.</p>"
    },
    "SearchInstanceType":{"type":"string"},
    "ServiceEndpoint":{
      "type":"structure",
      "members":{
        "Arn":{"shape":"Arn"},
        "Endpoint":{"shape":"ServiceUrl"}
      },
      "documentation":"<p>The endpoint to which service requests can be submitted, including the actual URL prefix for sending requests and the Amazon Resource Name (ARN) so the endpoint can be referenced in other API calls such as <a>UpdateServiceAccessPolicies</a>.</p>"
    },
    "ServiceUrl":{
      "type":"string",
      "documentation":"<p>The URL (including /version/pathPrefix) to which service requests can be submitted.</p>"
    },
    "SourceAttribute":{
      "type":"structure",
      "required":["SourceDataFunction"],
      "members":{
        "SourceDataFunction":{
          "shape":"SourceDataFunction",
          "documentation":"<p>Identifies the transformation to apply when copying data from a source attribute.</p>"
        },
        "SourceDataCopy":{
          "shape":"SourceData",
          "documentation":"<p>Copies data from a source document attribute to an <code>IndexField</code>.</p>"
        },
        "SourceDataTrimTitle":{
          "shape":"SourceDataTrimTitle",
          "documentation":"<p>Trims common title words from a source document attribute when populating an <code>IndexField</code>. This can be used to create an <code>IndexField</code> you can use for sorting.</p>"
        },
        "SourceDataMap":{
          "shape":"SourceDataMap",
          "documentation":"<p>Maps source document attribute values to new values when populating the <code>IndexField</code>.</p>"
        }
      },
      "documentation":"<p>Identifies the source data for an index field. An optional data transformation can be applied to the source data when populating the index field. By default, the value of the source attribute is copied to the index field.</p>"
    },
    "SourceAttributeList":{
      "type":"list",
      "member":{"shape":"SourceAttribute"}
    },
    "SourceData":{
      "type":"structure",
      "required":["SourceName"],
      "members":{
        "SourceName":{
          "shape":"FieldName",
          "documentation":"<p>The name of the document source field to add to this <code>IndexField</code>.</p>"
        },
        "DefaultValue":{
          "shape":"FieldValue",
          "documentation":"<p>The default value to use if the source attribute is not specified in a document. Optional.</p>"
        }
      },
      "documentation":"<p>The source attribute name and an optional default value to use if a document doesn't have an attribute of that name.</p>"
    },
    "SourceDataFunction":{
      "type":"string",
      "enum":[
        "Copy",
        "TrimTitle",
        "Map"
      ]
    },
    "SourceDataMap":{
      "type":"structure",
      "required":["SourceName"],
      "members":{
        "SourceName":{
          "shape":"FieldName",
          "documentation":"<p>The name of the document source field to add to this <code>IndexField</code>.</p>"
        },
        "DefaultValue":{
          "shape":"FieldValue",
          "documentation":"<p>The default value to use if the source attribute is not specified in a document. Optional.</p>"
        },
        "Cases":{
          "shape":"StringCaseMap",
          "documentation":"<p>A map that translates source field values to custom values.</p>"
        }
      },
      "documentation":"<p>Specifies how to map source attribute values to custom values when populating an <code>IndexField</code>.</p>"
    },
    "SourceDataTrimTitle":{
      "type":"structure",
      "required":["SourceName"],
      "members":{
        "SourceName":{
          "shape":"FieldName",
          "documentation":"<p>The name of the document source field to add to this <code>IndexField</code>.</p>"
        },
        "DefaultValue":{
          "shape":"FieldValue",
          "documentation":"<p>The default value to use if the source attribute is not specified in a document. Optional.</p>"
        },
        "Separator":{
          "shape":"String",
          "documentation":"<p>The separator that follows the text to trim.</p>"
        },
        "Language":{"shape":"Language"}
      },
      "documentation":"<p>Specifies how to trim common words from the beginning of a field to enable title sorting by that field.</p>"
    },
    "StemmingOptionsStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{"shape":"StemsDocument"},
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The stemming options configured for this search domain and the current status of those options.</p>"
    },
    "StemsDocument":{
      "type":"string",
      "documentation":"<p>Maps terms to their stems, serialized as a JSON document. The document has a single object with one property \"stems\" whose value is an object mapping terms to their stems. The maximum size of a stemming document is 500 KB. Example: <code>{ \"stems\": {\"people\": \"person\", \"walking\": \"walk\"} }</code></p>"
    },
    "StopwordOptionsStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{"shape":"StopwordsDocument"},
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The stopword options configured for this search domain and the current status of those options.</p>"
    },
    "StopwordsDocument":{
      "type":"string",
      "documentation":"<p>Lists stopwords serialized as a JSON document. The document has a single object with one property \"stopwords\" whose value is an array of strings. The maximum size of a stopwords document is 10 KB. Example: <code>{ \"stopwords\": [\"a\", \"an\", \"the\", \"of\"] }</code></p>"
    },
    "String":{"type":"string"},
    "StringCaseMap":{
      "type":"map",
      "key":{"shape":"FieldValue"},
      "value":{"shape":"FieldValue"}
    },
    "SynonymOptionsStatus":{
      "type":"structure",
      "required":[
        "Options",
        "Status"
      ],
      "members":{
        "Options":{"shape":"SynonymsDocument"},
        "Status":{"shape":"OptionStatus"}
      },
      "documentation":"<p>The synonym options configured for this search domain and the current status of those options.</p>"
    },
    "SynonymsDocument":{
      "type":"string",
      "documentation":"<p>Maps terms to their synonyms, serialized as a JSON document. The document has a single object with one property \"synonyms\" whose value is an object mapping terms to their synonyms. Each synonym is a simple string or an array of strings. The maximum size of a stopwords document is 100 KB. Example: <code>{ \"synonyms\": {\"cat\": [\"feline\", \"kitten\"], \"puppy\": \"dog\"} }</code></p>"
    },
    "TextOptions":{
      "type":"structure",
      "members":{
        "DefaultValue":{
          "shape":"FieldValue",
          "documentation":"<p>The default value for a text field. Optional.</p>"
        },
        "FacetEnabled":{
          "shape":"Boolean",
          "documentation":"<p>Specifies whether facets are enabled for this field. Default: False.</p>"
        },
        "ResultEnabled":{
          "shape":"Boolean",
          "documentation":"<p>Specifies whether values of this field can be returned in search results and used for ranking. Default: False.</p>"
        },
        "TextProcessor":{
          "shape":"FieldName",
          "documentation":"<p>The text processor to apply to this field. Optional. Possible values:</p> <ul> <li> <code>cs_text_no_stemming</code>: turns off stemming for the field.</li> </ul> <p>Default: none</p>"
        }
      },
      "documentation":"<p>Options that define a text field in the search index.</p>"
    },
    "UIntOptions":{
      "type":"structure",
      "members":{
        "DefaultValue":{
          "shape":"UIntValue",
          "documentation":"<p>The default value for an unsigned integer field. Optional.</p>"
        }
      },
      "documentation":"<p>Options that define a <code>uint</code> field in the search index.</p>"
    },
    "UIntValue":{
      "type":"integer",
      "min":0
    },
    "UpdateAvailabilityOptionsRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "MultiAZ"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "MultiAZ":{
          "shape":"Boolean",
          "documentation":"<p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>"
        }
      },
      "documentation":"<p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>"
    },
    "UpdateAvailabilityOptionsResponse":{
      "type":"structure",
      "members":{
        "AvailabilityOptions":{
          "shape":"AvailabilityOptionsStatus",
          "documentation":"<p>The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. </p>"
        }
      },
      "documentation":"<p>The result of a <code>UpdateAvailabilityOptions</code> request. Contains the status of the domain's availability options. </p>"
    },
    "UpdateDefaultSearchFieldRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "DefaultSearchField"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "DefaultSearchField":{
          "shape":"String",
          "documentation":"<p>The text field to search if the search request does not specify which field to search. The default search field is used when search terms are specified with the <code>q</code> parameter, or if a match expression specified with the <code>bq</code> parameter does not constrain the search to a particular field. The default is an empty string, which automatically searches all text fields.</p>"
        }
      }
    },
    "UpdateDefaultSearchFieldResponse":{
      "type":"structure",
      "required":["DefaultSearchField"],
      "members":{
        "DefaultSearchField":{"shape":"DefaultSearchFieldStatus"}
      },
      "documentation":"<p>A response message that contains the status of an updated default search field.</p>"
    },
    "UpdateServiceAccessPoliciesRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "AccessPolicies"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "AccessPolicies":{"shape":"PolicyDocument"}
      }
    },
    "UpdateServiceAccessPoliciesResponse":{
      "type":"structure",
      "required":["AccessPolicies"],
      "members":{
        "AccessPolicies":{"shape":"AccessPoliciesStatus"}
      },
      "documentation":"<p>A response message that contains the status of updated access policies.</p>"
    },
    "UpdateStemmingOptionsRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "Stems"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "Stems":{"shape":"StemsDocument"}
      }
    },
    "UpdateStemmingOptionsResponse":{
      "type":"structure",
      "required":["Stems"],
      "members":{
        "Stems":{"shape":"StemmingOptionsStatus"}
      },
      "documentation":"<p>A response message that contains the status of updated stemming options.</p>"
    },
    "UpdateStopwordOptionsRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "Stopwords"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "Stopwords":{"shape":"StopwordsDocument"}
      }
    },
    "UpdateStopwordOptionsResponse":{
      "type":"structure",
      "required":["Stopwords"],
      "members":{
        "Stopwords":{"shape":"StopwordOptionsStatus"}
      },
      "documentation":"<p>A response message that contains the status of updated stopword options.</p>"
    },
    "UpdateSynonymOptionsRequest":{
      "type":"structure",
      "required":[
        "DomainName",
        "Synonyms"
      ],
      "members":{
        "DomainName":{"shape":"DomainName"},
        "Synonyms":{"shape":"SynonymsDocument"}
      }
    },
    "UpdateSynonymOptionsResponse":{
      "type":"structure",
      "required":["Synonyms"],
      "members":{
        "Synonyms":{"shape":"SynonymOptionsStatus"}
      },
      "documentation":"<p>A response message that contains the status of updated synonym options.</p>"
    },
    "UpdateTimestamp":{"type":"timestamp"}
  }
}

]===]))
