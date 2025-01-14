local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2018-02-27",
    "endpointPrefix":"pi",
    "jsonVersion":"1.1",
    "protocol":"json",
    "serviceAbbreviation":"AWS PI",
    "serviceFullName":"AWS Performance Insights",
    "serviceId":"PI",
    "signatureVersion":"v4",
    "signingName":"pi",
    "targetPrefix":"PerformanceInsightsv20180227",
    "uid":"pi-2018-02-27"
  },
  "operations":{
    "DescribeDimensionKeys":{
      "name":"DescribeDimensionKeys",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"DescribeDimensionKeysRequest"},
      "output":{"shape":"DescribeDimensionKeysResponse"},
      "errors":[
        {"shape":"InvalidArgumentException"},
        {"shape":"InternalServiceError"},
        {"shape":"NotAuthorizedException"}
      ],
      "documentation":"<p>For a specific time period, retrieve the top <code>N</code> dimension keys for a metric.</p>"
    },
    "GetResourceMetrics":{
      "name":"GetResourceMetrics",
      "http":{
        "method":"POST",
        "requestUri":"/"
      },
      "input":{"shape":"GetResourceMetricsRequest"},
      "output":{"shape":"GetResourceMetricsResponse"},
      "errors":[
        {"shape":"InvalidArgumentException"},
        {"shape":"InternalServiceError"},
        {"shape":"NotAuthorizedException"}
      ],
      "documentation":"<p>Retrieve Performance Insights metrics for a set of data sources, over a time period. You can provide specific dimension groups and dimensions, and provide aggregation and filtering criteria for each group.</p>"
    }
  },
  "shapes":{
    "DataPoint":{
      "type":"structure",
      "required":[
        "Timestamp",
        "Value"
      ],
      "members":{
        "Timestamp":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The time, in epoch format, associated with a particular <code>Value</code>.</p>"
        },
        "Value":{
          "shape":"Double",
          "documentation":"<p>The actual value associated with a particular <code>Timestamp</code>.</p>"
        }
      },
      "documentation":"<p>A timestamp, and a single numerical value, which together represent a measurement at a particular point in time.</p>"
    },
    "DataPointsList":{
      "type":"list",
      "member":{"shape":"DataPoint"}
    },
    "DescribeDimensionKeysRequest":{
      "type":"structure",
      "required":[
        "ServiceType",
        "Identifier",
        "StartTime",
        "EndTime",
        "Metric",
        "GroupBy"
      ],
      "members":{
        "ServiceType":{
          "shape":"ServiceType",
          "documentation":"<p>The AWS service for which Performance Insights will return metrics. The only valid value for <i>ServiceType</i> is: <code>RDS</code> </p>"
        },
        "Identifier":{
          "shape":"String",
          "documentation":"<p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.</p> <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value - for example: <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code> </p>"
        },
        "StartTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The date and time specifying the beginning of the requested time series data. You can't specify a <code>StartTime</code> that's earlier than 7 days ago. The value specified is <i>inclusive</i> - data points equal to or greater than <code>StartTime</code> will be returned.</p> <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>"
        },
        "EndTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The date and time specifying the end of the requested time series data. The value specified is <i>exclusive</i> - data points less than (but not equal to) <code>EndTime</code> will be returned.</p> <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>"
        },
        "Metric":{
          "shape":"String",
          "documentation":"<p>The name of a Performance Insights metric to be measured.</p> <p>Valid values for <code>Metric</code> are:</p> <ul> <li> <p> <code>db.load.avg</code> - a scaled representation of the number of active sessions for the database engine.</p> </li> <li> <p> <code>db.sampledload.avg</code> - the raw number of active sessions for the database engine.</p> </li> </ul>"
        },
        "PeriodInSeconds":{
          "shape":"Integer",
          "documentation":"<p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:</p> <ul> <li> <p> <code>1</code> (one second)</p> </li> <li> <p> <code>60</code> (one minute)</p> </li> <li> <p> <code>300</code> (five minutes)</p> </li> <li> <p> <code>3600</code> (one hour)</p> </li> <li> <p> <code>86400</code> (twenty-four hours)</p> </li> </ul> <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.</p>"
        },
        "GroupBy":{
          "shape":"DimensionGroup",
          "documentation":"<p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.</p>"
        },
        "PartitionBy":{
          "shape":"DimensionGroup",
          "documentation":"<p>For each dimension specified in <code>GroupBy</code>, specify a secondary dimension to further subdivide the partition keys in the response.</p>"
        },
        "Filter":{
          "shape":"MetricQueryFilterMap",
          "documentation":"<p>One or more filters to apply in the request. Restrictions:</p> <ul> <li> <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> or <code>Partition</code> parameters.</p> </li> <li> <p>A single filter for any other dimension in this dimension group.</p> </li> </ul>"
        },
        "MaxResults":{
          "shape":"MaxResults",
          "documentation":"<p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining results can be retrieved. </p>"
        },
        "NextToken":{
          "shape":"String",
          "documentation":"<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DescribeDimensionKeysResponse":{
      "type":"structure",
      "members":{
        "AlignedStartTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The start time for the returned dimension keys, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedStartTime</code> will be less than or equal to the value of the user-specified <code>StartTime</code>.</p>"
        },
        "AlignedEndTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The end time for the returned dimension keys, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedEndTime</code> will be greater than or equal to the value of the user-specified <code>Endtime</code>.</p>"
        },
        "PartitionKeys":{
          "shape":"ResponsePartitionKeyList",
          "documentation":"<p>If <code>PartitionBy</code> was present in the request, <code>PartitionKeys</code> contains the breakdown of dimension keys by the specified partitions.</p>"
        },
        "Keys":{
          "shape":"DimensionKeyDescriptionList",
          "documentation":"<p>The dimension keys that were requested.</p>"
        },
        "NextToken":{
          "shape":"String",
          "documentation":"<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DimensionGroup":{
      "type":"structure",
      "required":["Group"],
      "members":{
        "Group":{
          "shape":"String",
          "documentation":"<p>The name of the dimension group. Valid values are:</p> <ul> <li> <p> <code>db.user</code> </p> </li> <li> <p> <code>db.host</code> </p> </li> <li> <p> <code>db.sql</code> </p> </li> <li> <p> <code>db.sql_tokenized</code> </p> </li> <li> <p> <code>db.wait_event</code> </p> </li> <li> <p> <code>db.wait_event_type</code> </p> </li> </ul>"
        },
        "Dimensions":{
          "shape":"StringList",
          "documentation":"<p>A list of specific dimensions from a dimension group. If this parameter is not present, then it signifies that all of the dimensions in the group were requested, or are present in the response.</p> <p>Valid values for elements in the <code>Dimensions</code> array are:</p> <ul> <li> <p>db.user.id</p> </li> <li> <p>db.user.name</p> </li> <li> <p>db.host.id</p> </li> <li> <p>db.host.name</p> </li> <li> <p>db.sql.id</p> </li> <li> <p>db.sql.db_id</p> </li> <li> <p>db.sql.statement</p> </li> <li> <p>db.sql.tokenized_id</p> </li> <li> <p>db.sql_tokenized.id</p> </li> <li> <p>db.sql_tokenized.db_id</p> </li> <li> <p>db.sql_tokenized.statement</p> </li> <li> <p>db.wait_event.name</p> </li> <li> <p>db.wait_event.type</p> </li> <li> <p>db.wait_event_type.name</p> </li> </ul>"
        },
        "Limit":{
          "shape":"Limit",
          "documentation":"<p>The maximum number of items to fetch for this dimension group.</p>"
        }
      },
      "documentation":"<p>A logical grouping of Performance Insights metrics for a related subject area. For example, the <code>db.sql</code> dimension group consists of the following dimensions: <code>db.sql.id</code>, <code>db.sql.db_id</code>, <code>db.sql.statement</code>, and <code>db.sql.tokenized_id</code>.</p>"
    },
    "DimensionKeyDescription":{
      "type":"structure",
      "members":{
        "Dimensions":{
          "shape":"DimensionMap",
          "documentation":"<p>A map of name-value pairs for the dimensions in the group.</p>"
        },
        "Total":{
          "shape":"Double",
          "documentation":"<p>The aggregated metric value for the dimension(s), over the requested time range.</p>"
        },
        "Partitions":{
          "shape":"MetricValuesList",
          "documentation":"<p>If <code>PartitionBy</code> was specified, <code>PartitionKeys</code> contains the dimensions that were.</p>"
        }
      },
      "documentation":"<p>An array of descriptions and aggregated values for each dimension within a dimension group.</p>"
    },
    "DimensionKeyDescriptionList":{
      "type":"list",
      "member":{"shape":"DimensionKeyDescription"}
    },
    "DimensionMap":{
      "type":"map",
      "key":{"shape":"String"},
      "value":{"shape":"String"}
    },
    "Double":{"type":"double"},
    "GetResourceMetricsRequest":{
      "type":"structure",
      "required":[
        "ServiceType",
        "Identifier",
        "MetricQueries",
        "StartTime",
        "EndTime"
      ],
      "members":{
        "ServiceType":{
          "shape":"ServiceType",
          "documentation":"<p>The AWS service for which Performance Insights will return metrics. The only valid value for <i>ServiceType</i> is: <code>RDS</code> </p>"
        },
        "Identifier":{
          "shape":"String",
          "documentation":"<p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.</p> <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value - for example: <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code> </p>"
        },
        "MetricQueries":{
          "shape":"MetricQueryList",
          "documentation":"<p>An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering criteria.</p>"
        },
        "StartTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The date and time specifying the beginning of the requested time series data. You can't specify a <code>StartTime</code> that's earlier than 7 days ago. The value specified is <i>inclusive</i> - data points equal to or greater than <code>StartTime</code> will be returned.</p> <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>"
        },
        "EndTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The date and time specifiying the end of the requested time series data. The value specified is <i>exclusive</i> - data points less than (but not equal to) <code>EndTime</code> will be returned.</p> <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>"
        },
        "PeriodInSeconds":{
          "shape":"Integer",
          "documentation":"<p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:</p> <ul> <li> <p> <code>1</code> (one second)</p> </li> <li> <p> <code>60</code> (one minute)</p> </li> <li> <p> <code>300</code> (five minutes)</p> </li> <li> <p> <code>3600</code> (one hour)</p> </li> <li> <p> <code>86400</code> (twenty-four hours)</p> </li> </ul> <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.</p>"
        },
        "MaxResults":{
          "shape":"MaxResults",
          "documentation":"<p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining results can be retrieved. </p>"
        },
        "NextToken":{
          "shape":"String",
          "documentation":"<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "GetResourceMetricsResponse":{
      "type":"structure",
      "members":{
        "AlignedStartTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The start time for the returned metrics, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedStartTime</code> will be less than or equal to the value of the user-specified <code>StartTime</code>.</p>"
        },
        "AlignedEndTime":{
          "shape":"ISOTimestamp",
          "documentation":"<p>The end time for the returned metrics, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedEndTime</code> will be greater than or equal to the value of the user-specified <code>Endtime</code>.</p>"
        },
        "Identifier":{
          "shape":"String",
          "documentation":"<p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.</p> <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value - for example: <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code> </p>"
        },
        "MetricList":{
          "shape":"MetricKeyDataPointsList",
          "documentation":"<p>An array of metric results,, where each array element contains all of the data points for a particular dimension.</p>"
        },
        "NextToken":{
          "shape":"String",
          "documentation":"<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "ISOTimestamp":{"type":"timestamp"},
    "Integer":{"type":"integer"},
    "InternalServiceError":{
      "type":"structure",
      "members":{
        "Message":{"shape":"String"}
      },
      "documentation":"<p>The request failed due to an unknown error.</p>",
      "exception":true,
      "fault":true
    },
    "InvalidArgumentException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"String"}
      },
      "documentation":"<p>One of the arguments provided is invalid for this request.</p>",
      "exception":true
    },
    "Limit":{
      "type":"integer",
      "max":10,
      "min":1
    },
    "MaxResults":{
      "type":"integer",
      "max":20,
      "min":0
    },
    "MetricKeyDataPoints":{
      "type":"structure",
      "members":{
        "Key":{
          "shape":"ResponseResourceMetricKey",
          "documentation":"<p>The dimension(s) to which the data points apply.</p>"
        },
        "DataPoints":{
          "shape":"DataPointsList",
          "documentation":"<p>An array of timestamp-value pairs, representing measurements over a period of time.</p>"
        }
      },
      "documentation":"<p>A time-ordered series of data points, correpsonding to a dimension of a Performance Insights metric.</p>"
    },
    "MetricKeyDataPointsList":{
      "type":"list",
      "member":{"shape":"MetricKeyDataPoints"}
    },
    "MetricQuery":{
      "type":"structure",
      "required":["Metric"],
      "members":{
        "Metric":{
          "shape":"String",
          "documentation":"<p>The name of a Performance Insights metric to be measured.</p> <p>Valid values for <code>Metric</code> are:</p> <ul> <li> <p> <code>db.load.avg</code> - a scaled representation of the number of active sessions for the database engine.</p> </li> <li> <p> <code>db.sampledload.avg</code> - the raw number of active sessions for the database engine.</p> </li> </ul>"
        },
        "GroupBy":{
          "shape":"DimensionGroup",
          "documentation":"<p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.</p>"
        },
        "Filter":{
          "shape":"MetricQueryFilterMap",
          "documentation":"<p>One or more filters to apply in the request. Restrictions:</p> <ul> <li> <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> parameter.</p> </li> <li> <p>A single filter for any other dimension in this dimension group.</p> </li> </ul>"
        }
      },
      "documentation":"<p>A single query to be processed. You must provide the metric to query. If no other parameters are specified, Performance Insights returns all of the data points for that metric. You can optionally request that the data points be aggregated by dimension group ( <code>GroupBy</code>), and return only those data points that match your criteria (<code>Filter</code>).</p>"
    },
    "MetricQueryFilterMap":{
      "type":"map",
      "key":{"shape":"String"},
      "value":{"shape":"String"}
    },
    "MetricQueryList":{
      "type":"list",
      "member":{"shape":"MetricQuery"},
      "max":15,
      "min":1
    },
    "MetricValuesList":{
      "type":"list",
      "member":{"shape":"Double"}
    },
    "NotAuthorizedException":{
      "type":"structure",
      "members":{
        "Message":{"shape":"String"}
      },
      "documentation":"<p>The user is not authorized to perform this request.</p>",
      "exception":true
    },
    "ResponsePartitionKey":{
      "type":"structure",
      "required":["Dimensions"],
      "members":{
        "Dimensions":{
          "shape":"DimensionMap",
          "documentation":"<p>A dimension map that contains the dimension(s) for this partition.</p>"
        }
      },
      "documentation":"<p>If <code>PartitionBy</code> was specified in a <code>DescribeDimensionKeys</code> request, the dimensions are returned in an array. Each element in the array specifies one dimension. </p>"
    },
    "ResponsePartitionKeyList":{
      "type":"list",
      "member":{"shape":"ResponsePartitionKey"}
    },
    "ResponseResourceMetricKey":{
      "type":"structure",
      "required":["Metric"],
      "members":{
        "Metric":{
          "shape":"String",
          "documentation":"<p>The name of a Performance Insights metric to be measured.</p> <p>Valid values for <code>Metric</code> are:</p> <ul> <li> <p> <code>db.load.avg</code> - a scaled representation of the number of active sessions for the database engine.</p> </li> <li> <p> <code>db.sampledload.avg</code> - the raw number of active sessions for the database engine.</p> </li> </ul>"
        },
        "Dimensions":{
          "shape":"DimensionMap",
          "documentation":"<p>The valid dimensions for the metric.</p>"
        }
      },
      "documentation":"<p>An object describing a Performance Insights metric and one or more dimensions for that metric.</p>"
    },
    "ServiceType":{
      "type":"string",
      "enum":["RDS"]
    },
    "String":{"type":"string"},
    "StringList":{
      "type":"list",
      "member":{"shape":"String"},
      "max":10,
      "min":1
    }
  },
  "documentation":"<p>AWS Performance Insights enables you to monitor and explore different dimensions of database load based on data captured from a running RDS instance. The guide provides detailed information about Performance Insights data types, parameters and errors. For more information about Performance Insights capabilities see <a href=\"http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon RDS Performance Insights </a> in the <i>Amazon RDS User Guide</i>.</p> <p> The AWS Performance Insights API provides visibility into the performance of your RDS instance, when Performance Insights is enabled for supported engine types. While Amazon CloudWatch provides the authoritative source for AWS service vended monitoring metrics, AWS Performance Insights offers a domain-specific view of database load measured as Average Active Sessions and provided to API consumers as a 2-dimensional time-series dataset. The time dimension of the data provides DB load data for each time point in the queried time range, and each time point decomposes overall load in relation to the requested dimensions, such as SQL, Wait-event, User or Host, measured at that time point.</p>"
}

]===]))
