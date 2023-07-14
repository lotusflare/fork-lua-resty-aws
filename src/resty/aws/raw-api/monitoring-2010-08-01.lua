local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2010-08-01",
    "endpointPrefix": "monitoring",
    "protocol": "query",
    "serviceAbbreviation": "CloudWatch",
    "serviceFullName": "Amazon CloudWatch",
    "serviceId": "CloudWatch",
    "signatureVersion": "v4",
    "uid": "monitoring-2010-08-01",
    "xmlNamespace": "http://monitoring.amazonaws.com/doc/2010-08-01/"
  },
  "operations": {
    "DeleteAlarms": {
      "name": "DeleteAlarms",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAlarmsInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFound"
        }
      ],
      "documentation": "<p>Deletes the specified alarms. You can delete up to 100 alarms in one operation. However, this total can include no more than one composite alarm. For example, you could delete 99 metric alarms and one composite alarms with one operation, but you can't delete two composite alarms with one operation.</p> <p> In the event of an error, no alarms are deleted.</p> <note> <p>It is possible to create a loop or cycle of composite alarms, where composite alarm A depends on composite alarm B, and composite alarm B also depends on composite alarm A. In this scenario, you can't delete any composite alarm that is part of the cycle because there is always still a composite alarm that depends on that alarm that you want to delete.</p> <p>To get out of such a situation, you must break the cycle by changing the rule of one of the composite alarms in the cycle to remove a dependency that creates the cycle. The simplest change to make to break a cycle is to change the <code>AlarmRule</code> of one of the alarms to <code>False</code>. </p> <p>Additionally, the evaluation of composite alarms stops if CloudWatch detects a cycle in the evaluation path. </p> </note>"
    },
    "DeleteAnomalyDetector": {
      "name": "DeleteAnomalyDetector",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAnomalyDetectorInput"
      },
      "output": {
        "shape": "DeleteAnomalyDetectorOutput",
        "resultWrapper": "DeleteAnomalyDetectorResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServiceFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        }
      ],
      "documentation": "<p>Deletes the specified anomaly detection model from your account.</p>"
    },
    "DeleteDashboards": {
      "name": "DeleteDashboards",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDashboardsInput"
      },
      "output": {
        "shape": "DeleteDashboardsOutput",
        "resultWrapper": "DeleteDashboardsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "DashboardNotFoundError"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Deletes all dashboards that you specify. You can specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are deleted.</p>"
    },
    "DeleteInsightRules": {
      "name": "DeleteInsightRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInsightRulesInput"
      },
      "output": {
        "shape": "DeleteInsightRulesOutput",
        "resultWrapper": "DeleteInsightRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        }
      ],
      "documentation": "<p>Permanently deletes the specified Contributor Insights rules.</p> <p>If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created might not be available.</p>"
    },
    "DescribeAlarmHistory": {
      "name": "DescribeAlarmHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAlarmHistoryInput"
      },
      "output": {
        "shape": "DescribeAlarmHistoryOutput",
        "resultWrapper": "DescribeAlarmHistoryResult"
      },
      "errors": [
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for either all metric alarms or all composite alarms are returned.</p> <p>CloudWatch retains the history of an alarm even if you delete the alarm.</p>"
    },
    "DescribeAlarms": {
      "name": "DescribeAlarms",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAlarmsInput"
      },
      "output": {
        "shape": "DescribeAlarmsOutput",
        "resultWrapper": "DescribeAlarmsResult"
      },
      "errors": [
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Retrieves the specified alarms. You can filter the results by specifying a a prefix for the alarm name, the alarm state, or a prefix for any action.</p>"
    },
    "DescribeAlarmsForMetric": {
      "name": "DescribeAlarmsForMetric",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAlarmsForMetricInput"
      },
      "output": {
        "shape": "DescribeAlarmsForMetricOutput",
        "resultWrapper": "DescribeAlarmsForMetricResult"
      },
      "documentation": "<p>Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.</p>"
    },
    "DescribeAnomalyDetectors": {
      "name": "DescribeAnomalyDetectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAnomalyDetectorsInput"
      },
      "output": {
        "shape": "DescribeAnomalyDetectorsOutput",
        "resultWrapper": "DescribeAnomalyDetectorsResult"
      },
      "errors": [
        {
          "shape": "InvalidNextToken"
        },
        {
          "shape": "InternalServiceFault"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Lists the anomaly detection models that you have created in your account. You can list all models in your account or filter the results to only the models that are related to a certain namespace, metric name, or metric dimension.</p>"
    },
    "DescribeInsightRules": {
      "name": "DescribeInsightRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInsightRulesInput"
      },
      "output": {
        "shape": "DescribeInsightRulesOutput",
        "resultWrapper": "DescribeInsightRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>Returns a list of all the Contributor Insights rules in your account. All rules in your account are returned with a single operation.</p> <p>For more information about Contributor Insights, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html\">Using Contributor Insights to Analyze High-Cardinality Data</a>.</p>"
    },
    "DisableAlarmActions": {
      "name": "DisableAlarmActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableAlarmActionsInput"
      },
      "documentation": "<p>Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.</p>"
    },
    "DisableInsightRules": {
      "name": "DisableInsightRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableInsightRulesInput"
      },
      "output": {
        "shape": "DisableInsightRulesOutput",
        "resultWrapper": "DisableInsightRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        }
      ],
      "documentation": "<p>Disables the specified Contributor Insights rules. When rules are disabled, they do not analyze log groups and do not incur costs.</p>"
    },
    "EnableAlarmActions": {
      "name": "EnableAlarmActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableAlarmActionsInput"
      },
      "documentation": "<p>Enables the actions for the specified alarms.</p>"
    },
    "EnableInsightRules": {
      "name": "EnableInsightRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableInsightRulesInput"
      },
      "output": {
        "shape": "EnableInsightRulesOutput",
        "resultWrapper": "EnableInsightRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Enables the specified Contributor Insights rules. When rules are enabled, they immediately begin analyzing log data.</p>"
    },
    "GetDashboard": {
      "name": "GetDashboard",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDashboardInput"
      },
      "output": {
        "shape": "GetDashboardOutput",
        "resultWrapper": "GetDashboardResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "DashboardNotFoundError"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Displays the details of the dashboard that you specify.</p> <p>To copy an existing dashboard, use <code>GetDashboard</code>, and then use the data returned within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code> to create the copy.</p>"
    },
    "GetInsightRuleReport": {
      "name": "GetInsightRuleReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInsightRuleReportInput"
      },
      "output": {
        "shape": "GetInsightRuleReportOutput",
        "resultWrapper": "GetInsightRuleReportResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>This operation returns the time series data collected by a Contributor Insights rule. The data includes the identity and number of contributors to the log group.</p> <p>You can also optionally return one or more statistics about each data point in the time series. These statistics can include the following:</p> <ul> <li> <p> <code>UniqueContributors</code> -- the number of unique contributors for each data point.</p> </li> <li> <p> <code>MaxContributorValue</code> -- the value of the top contributor for each data point. The identity of the contributor might change for each data point in the graph.</p> <p>If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified by the rule's <code>Value</code>, during that period.</p> </li> <li> <p> <code>SampleCount</code> -- the number of data points matched by the rule.</p> </li> <li> <p> <code>Sum</code> -- the sum of the values from all contributors during the time period represented by that data point.</p> </li> <li> <p> <code>Minimum</code> -- the minimum value from a single observation during the time period represented by that data point.</p> </li> <li> <p> <code>Maximum</code> -- the maximum value from a single observation during the time period represented by that data point.</p> </li> <li> <p> <code>Average</code> -- the average value from all contributors during the time period represented by that data point.</p> </li> </ul>"
    },
    "GetMetricData": {
      "name": "GetMetricData",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMetricDataInput"
      },
      "output": {
        "shape": "GetMetricDataOutput",
        "resultWrapper": "GetMetricDataResult"
      },
      "errors": [
        {
          "shape": "InvalidNextToken"
        }
      ],
      "documentation": "<p>You can use the <code>GetMetricData</code> API to retrieve as many as 500 different metrics in a single request, with a total of as many as 100,800 data points. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax\">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Calls to the <code>GetMetricData</code> API have a different pricing structure than calls to <code>GetMetricStatistics</code>. For more information about pricing, see <a href=\"https://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p> <p>Amazon CloudWatch retains metric data as follows:</p> <ul> <li> <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p> </li> <li> <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p> </li> <li> <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p> </li> <li> <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p> </li> </ul> <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.</p> <p>If you omit <code>Unit</code> in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>"
    },
    "GetMetricStatistics": {
      "name": "GetMetricStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMetricStatisticsInput"
      },
      "output": {
        "shape": "GetMetricStatisticsOutput",
        "resultWrapper": "GetMetricStatisticsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Gets statistics for the specified metric.</p> <p>The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. Data points are not returned in chronological order.</p> <p>CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned.</p> <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:</p> <ul> <li> <p>The SampleCount value of the statistic set is 1.</p> </li> <li> <p>The Min and the Max values of the statistic set are equal.</p> </li> </ul> <p>Percentile statistics are not available for metrics when any of the metric values are negative numbers.</p> <p>Amazon CloudWatch retains metric data as follows:</p> <ul> <li> <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p> </li> <li> <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p> </li> <li> <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p> </li> <li> <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p> </li> </ul> <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.</p> <p>CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016.</p> <p>For information about metrics and dimensions supported by AWS services, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html\">Amazon CloudWatch Metrics and Dimensions Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>"
    },
    "GetMetricWidgetImage": {
      "name": "GetMetricWidgetImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMetricWidgetImageInput"
      },
      "output": {
        "shape": "GetMetricWidgetImageOutput",
        "resultWrapper": "GetMetricWidgetImageResult"
      },
      "documentation": "<p>You can use the <code>GetMetricWidgetImage</code> API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image. You can then embed this image into your services and products, such as wiki pages, reports, and documents. You could also retrieve images regularly, such as every minute, and create your own custom live dashboard.</p> <p>The graph you retrieve can include all CloudWatch metric graph features, including metric math and horizontal and vertical annotations.</p> <p>There is a limit of 20 transactions per second for this API. Each <code>GetMetricWidgetImage</code> action has the following limits:</p> <ul> <li> <p>As many as 100 metrics in the graph.</p> </li> <li> <p>Up to 100 KB uncompressed payload.</p> </li> </ul>"
    },
    "ListDashboards": {
      "name": "ListDashboards",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDashboardsInput"
      },
      "output": {
        "shape": "ListDashboardsOutput",
        "resultWrapper": "ListDashboardsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Returns a list of the dashboards for your account. If you include <code>DashboardNamePrefix</code>, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed. </p> <p> <code>ListDashboards</code> returns up to 1000 results on one page. If there are more than 1000 dashboards, you can call <code>ListDashboards</code> again and include the value you received for <code>NextToken</code> in the first call, to receive the next 1000 results.</p>"
    },
    "ListMetrics": {
      "name": "ListMetrics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListMetricsInput"
      },
      "output": {
        "shape": "ListMetricsOutput",
        "resultWrapper": "ListMetricsResult"
      },
      "errors": [
        {
          "shape": "InternalServiceFault"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>List the specified metrics. You can use the returned metrics with <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html\">GetMetricData</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html\">GetMetricStatistics</a> to obtain statistical data.</p> <p>Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls.</p> <p>After you create a metric, allow up to 15 minutes before the metric appears. You can see statistics about the metric sooner by using <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html\">GetMetricData</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html\">GetMetricStatistics</a>.</p> <p> <code>ListMetrics</code> doesn't return information about metrics if those metrics haven't reported data in the past two weeks. To retrieve those metrics, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html\">GetMetricData</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html\">GetMetricStatistics</a>.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput",
        "resultWrapper": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Displays the tags associated with a CloudWatch resource. Currently, alarms and Contributor Insights rules support tagging.</p>"
    },
    "PutAnomalyDetector": {
      "name": "PutAnomalyDetector",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAnomalyDetectorInput"
      },
      "output": {
        "shape": "PutAnomalyDetectorOutput",
        "resultWrapper": "PutAnomalyDetectorResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        }
      ],
      "documentation": "<p>Creates an anomaly detection model for a CloudWatch metric. You can use the model to display a band of expected normal values when the metric is graphed.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html\">CloudWatch Anomaly Detection</a>.</p>"
    },
    "PutCompositeAlarm": {
      "name": "PutCompositeAlarm",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutCompositeAlarmInput"
      },
      "errors": [
        {
          "shape": "LimitExceededFault"
        }
      ],
      "documentation": "<p>Creates or updates a <i>composite alarm</i>. When you create a composite alarm, you specify a rule expression for the alarm that takes into account the alarm states of other alarms that you have created. The composite alarm goes into ALARM state only if all conditions of the rule are met.</p> <p>The alarms specified in a composite alarm's rule expression can include metric alarms and other composite alarms.</p> <p>Using composite alarms can reduce alarm noise. You can create multiple metric alarms, and also create a composite alarm and set up alerts only for the composite alarm. For example, you could create a composite alarm that goes into ALARM state only when more than one of the underlying metric alarms are in ALARM state.</p> <p>Currently, the only alarm actions that can be taken by composite alarms are notifying SNS topics.</p> <note> <p>It is possible to create a loop or cycle of composite alarms, where composite alarm A depends on composite alarm B, and composite alarm B also depends on composite alarm A. In this scenario, you can't delete any composite alarm that is part of the cycle because there is always still a composite alarm that depends on that alarm that you want to delete.</p> <p>To get out of such a situation, you must break the cycle by changing the rule of one of the composite alarms in the cycle to remove a dependency that creates the cycle. The simplest change to make to break a cycle is to change the <code>AlarmRule</code> of one of the alarms to <code>False</code>. </p> <p>Additionally, the evaluation of composite alarms stops if CloudWatch detects a cycle in the evaluation path. </p> </note> <p>When this operation creates an alarm, the alarm state is immediately set to <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed. For a composite alarm, this initial time after creation is the only time that the alarm can be in <code>INSUFFICIENT_DATA</code> state.</p> <p>When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.</p>"
    },
    "PutDashboard": {
      "name": "PutDashboard",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutDashboardInput"
      },
      "output": {
        "shape": "PutDashboardOutput",
        "resultWrapper": "PutDashboardResult"
      },
      "errors": [
        {
          "shape": "DashboardInvalidInputError"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here.</p> <p>All dashboards in your account are global, not region-specific.</p> <p>A simple way to create a dashboard using <code>PutDashboard</code> is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use <code>GetDashboard</code>, and then use the data returned within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code>.</p> <p>When you create a dashboard with <code>PutDashboard</code>, a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the <code>DashboardBody</code> script or the CloudFormation template used to create the dashboard.</p>"
    },
    "PutInsightRule": {
      "name": "PutInsightRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutInsightRuleInput"
      },
      "output": {
        "shape": "PutInsightRuleOutput",
        "resultWrapper": "PutInsightRuleResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a Contributor Insights rule. Rules evaluate log events in a CloudWatch Logs log group, enabling you to find contributor data for the log events in that log group. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html\">Using Contributor Insights to Analyze High-Cardinality Data</a>.</p> <p>If you create a rule, delete it, and then re-create it with the same name, historical data from the first time the rule was created might not be available.</p>"
    },
    "PutMetricAlarm": {
      "name": "PutMetricAlarm",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutMetricAlarmInput"
      },
      "errors": [
        {
          "shape": "LimitExceededFault"
        }
      ],
      "documentation": "<p>Creates or updates an alarm and associates it with the specified metric, metric math expression, or anomaly detection model.</p> <p>Alarms based on anomaly detection models cannot have Auto Scaling actions.</p> <p>When this operation creates an alarm, the alarm state is immediately set to <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed.</p> <p>When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.</p> <p>If you are an IAM user, you must have Amazon EC2 permissions for some alarm operations:</p> <ul> <li> <p> <code>iam:CreateServiceLinkedRole</code> for all alarms with EC2 actions</p> </li> <li> <p> <code>ec2:DescribeInstanceStatus</code> and <code>ec2:DescribeInstances</code> for all alarms on EC2 instance status metrics</p> </li> <li> <p> <code>ec2:StopInstances</code> for alarms with stop actions</p> </li> <li> <p> <code>ec2:TerminateInstances</code> for alarms with terminate actions</p> </li> <li> <p>No specific permissions are needed for alarms with recover actions</p> </li> </ul> <p>If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions are not performed. However, if you are later granted the required permissions, the alarm actions that you created earlier are performed.</p> <p>If you are using an IAM role (for example, an EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies.</p> <p>If you are using temporary security credentials granted using AWS STS, you cannot stop or terminate an EC2 instance using alarm actions.</p> <p>The first time you create an alarm in the AWS Management Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates the necessary service-linked role for you. The service-linked role is called <code>AWSServiceRoleForCloudWatchEvents</code>. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role\">AWS service-linked role</a>.</p>"
    },
    "PutMetricData": {
      "name": "PutMetricData",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutMetricDataInput"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Publishes metric data points to Amazon CloudWatch. CloudWatch associates the data points with the specified metric. If the specified metric does not exist, CloudWatch creates the metric. When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html\">ListMetrics</a>.</p> <p>You can publish either individual data points in the <code>Value</code> field, or arrays of values and the number of times each value occurred during the period by using the <code>Values</code> and <code>Counts</code> fields in the <code>MetricDatum</code> structure. Using the <code>Values</code> and <code>Counts</code> method enables you to publish up to 150 values per metric with one <code>PutMetricData</code> request, and supports retrieving percentile statistics on this data.</p> <p>Each <code>PutMetricData</code> request is limited to 40 KB in size for HTTP POST requests. You can send a payload compressed by gzip. Each request is also limited to no more than 20 different metrics.</p> <p>Although the <code>Value</code> parameter accepts numbers of type <code>Double</code>, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p> <p>You can use up to 10 dimensions per metric to further clarify what data the metric collects. Each dimension consists of a Name and Value pair. For more information about specifying dimensions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html\">GetMetricData</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html\">GetMetricStatistics</a> from the time they are submitted. Data points with time stamps between 3 and 24 hours ago can take as much as 2 hours to become available for for <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html\">GetMetricData</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html\">GetMetricStatistics</a>.</p> <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:</p> <ul> <li> <p>The <code>SampleCount</code> value of the statistic set is 1 and <code>Min</code>, <code>Max</code>, and <code>Sum</code> are all equal.</p> </li> <li> <p>The <code>Min</code> and <code>Max</code> are equal, and <code>Sum</code> is equal to <code>Min</code> multiplied by <code>SampleCount</code>.</p> </li> </ul>"
    },
    "SetAlarmState": {
      "name": "SetAlarmState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetAlarmStateInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFound"
        },
        {
          "shape": "InvalidFormatFault"
        }
      ],
      "documentation": "<p>Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to <code>ALARM</code> sends an SNS message.</p> <p>Metric alarms returns to their actual state quickly, often within seconds. Because the metric alarm state change happens quickly, it is typically only visible in the alarm's <b>History</b> tab in the Amazon CloudWatch console or through <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html\">DescribeAlarmHistory</a>.</p> <p>If you use <code>SetAlarmState</code> on a composite alarm, the composite alarm is not guaranteed to return to its actual state. It returns to its actual state only once any of its children alarms change state. It is also reevaluated if you update its configuration.</p> <p>If an alarm triggers EC2 Auto Scaling policies or application Auto Scaling policies, you must include information in the <code>StateReasonData</code> parameter to enable the policy to take the correct action.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "output": {
        "shape": "TagResourceOutput",
        "resultWrapper": "TagResourceResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Assigns one or more tags (key-value pairs) to the specified CloudWatch resource. Currently, the only CloudWatch resources that can be tagged are alarms and Contributor Insights rules.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters.</p> <p>You can use the <code>TagResource</code> action with an alarm that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a CloudWatch resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "output": {
        "shape": "UntagResourceOutput",
        "resultWrapper": "UntagResourceResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InternalServiceFault"
        }
      ],
      "documentation": "<p>Removes one or more tags from the specified resource.</p>"
    }
  },
  "shapes": {
    "ActionPrefix": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ActionsEnabled": {
      "type": "boolean"
    },
    "AlarmArn": {
      "type": "string",
      "max": 1600,
      "min": 1
    },
    "AlarmDescription": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "AlarmHistoryItem": {
      "type": "structure",
      "members": {
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The descriptive name for the alarm.</p>"
        },
        "AlarmType": {
          "shape": "AlarmType",
          "documentation": "<p>The type of alarm, either metric alarm or composite alarm.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp for the alarm history item.</p>"
        },
        "HistoryItemType": {
          "shape": "HistoryItemType",
          "documentation": "<p>The type of alarm history item.</p>"
        },
        "HistorySummary": {
          "shape": "HistorySummary",
          "documentation": "<p>A summary of the alarm history, in text format.</p>"
        },
        "HistoryData": {
          "shape": "HistoryData",
          "documentation": "<p>Data about the alarm, in JSON format.</p>"
        }
      },
      "documentation": "<p>Represents the history of a specific alarm.</p>"
    },
    "AlarmHistoryItems": {
      "type": "list",
      "member": {
        "shape": "AlarmHistoryItem"
      }
    },
    "AlarmName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "AlarmNamePrefix": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "AlarmNames": {
      "type": "list",
      "member": {
        "shape": "AlarmName"
      },
      "max": 100
    },
    "AlarmRule": {
      "type": "string",
      "max": 10240,
      "min": 1
    },
    "AlarmType": {
      "type": "string",
      "enum": [
        "CompositeAlarm",
        "MetricAlarm"
      ]
    },
    "AlarmTypes": {
      "type": "list",
      "member": {
        "shape": "AlarmType"
      }
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "AnomalyDetector": {
      "type": "structure",
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the metric associated with the anomaly detection model.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric associated with the anomaly detection model.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The metric dimensions associated with the anomaly detection model.</p>"
        },
        "Stat": {
          "shape": "AnomalyDetectorMetricStat",
          "documentation": "<p>The statistic associated with the anomaly detection model.</p>"
        },
        "Configuration": {
          "shape": "AnomalyDetectorConfiguration",
          "documentation": "<p>The configuration specifies details about how the anomaly detection model is to be trained, including time ranges to exclude from use for training the model, and the time zone to use for the metric.</p>"
        },
        "StateValue": {
          "shape": "AnomalyDetectorStateValue",
          "documentation": "<p>The current status of the anomaly detector's training. The possible values are <code>TRAINED | PENDING_TRAINING | TRAINED_INSUFFICIENT_DATA</code> </p>"
        }
      },
      "documentation": "<p>An anomaly detection model associated with a particular CloudWatch metric and statistic. You can use the model to display a band of expected normal values when the metric is graphed.</p>"
    },
    "AnomalyDetectorConfiguration": {
      "type": "structure",
      "members": {
        "ExcludedTimeRanges": {
          "shape": "AnomalyDetectorExcludedTimeRanges",
          "documentation": "<p>An array of time ranges to exclude from use when the anomaly detection model is trained. Use this to make sure that events that could cause unusual values for the metric, such as deployments, aren't used when CloudWatch creates the model.</p>"
        },
        "MetricTimezone": {
          "shape": "AnomalyDetectorMetricTimezone",
          "documentation": "<p>The time zone to use for the metric. This is useful to enable the model to automatically account for daylight savings time changes if the metric is sensitive to such time changes.</p> <p>To specify a time zone, use the name of the time zone as specified in the standard tz database. For more information, see <a href=\"https://en.wikipedia.org/wiki/Tz_database\">tz database</a>.</p>"
        }
      },
      "documentation": "<p>The configuration specifies details about how the anomaly detection model is to be trained, including time ranges to exclude from use for training the model and the time zone to use for the metric.</p>"
    },
    "AnomalyDetectorExcludedTimeRanges": {
      "type": "list",
      "member": {
        "shape": "Range"
      }
    },
    "AnomalyDetectorMetricStat": {
      "type": "string",
      "pattern": "(SampleCount|Average|Sum|Minimum|Maximum|p(\\d{1,2}|100)(\\.\\d{0,2})?|[ou]\\d+(\\.\\d*)?)(_E|_L|_H)?"
    },
    "AnomalyDetectorMetricTimezone": {
      "type": "string",
      "max": 50,
      "pattern": ".*"
    },
    "AnomalyDetectorStateValue": {
      "type": "string",
      "enum": [
        "PENDING_TRAINING",
        "TRAINED_INSUFFICIENT_DATA",
        "TRAINED"
      ]
    },
    "AnomalyDetectors": {
      "type": "list",
      "member": {
        "shape": "AnomalyDetector"
      }
    },
    "BatchFailures": {
      "type": "list",
      "member": {
        "shape": "PartialFailure"
      }
    },
    "ComparisonOperator": {
      "type": "string",
      "enum": [
        "GreaterThanOrEqualToThreshold",
        "GreaterThanThreshold",
        "LessThanThreshold",
        "LessThanOrEqualToThreshold",
        "LessThanLowerOrGreaterThanUpperThreshold",
        "LessThanLowerThreshold",
        "GreaterThanUpperThreshold"
      ]
    },
    "CompositeAlarm": {
      "type": "structure",
      "members": {
        "ActionsEnabled": {
          "shape": "ActionsEnabled",
          "documentation": "<p>Indicates whether actions should be executed during any changes to the alarm state.</p>"
        },
        "AlarmActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
        },
        "AlarmArn": {
          "shape": "AlarmArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the alarm.</p>"
        },
        "AlarmConfigurationUpdatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the last update to the alarm configuration.</p>"
        },
        "AlarmDescription": {
          "shape": "AlarmDescription",
          "documentation": "<p>The description of the alarm.</p>"
        },
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The name of the alarm.</p>"
        },
        "AlarmRule": {
          "shape": "AlarmRule",
          "documentation": "<p>The rule that this alarm uses to evaluate its alarm state.</p>"
        },
        "InsufficientDataActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
        },
        "OKActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
        },
        "StateReason": {
          "shape": "StateReason",
          "documentation": "<p>An explanation for the alarm state, in text format.</p>"
        },
        "StateReasonData": {
          "shape": "StateReasonData",
          "documentation": "<p>An explanation for the alarm state, in JSON format.</p>"
        },
        "StateUpdatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the last update to the alarm state.</p>"
        },
        "StateValue": {
          "shape": "StateValue",
          "documentation": "<p>The state value for the alarm.</p>"
        }
      },
      "documentation": "<p>The details about a composite alarm.</p>",
      "xmlOrder": [
        "ActionsEnabled",
        "AlarmActions",
        "AlarmArn",
        "AlarmConfigurationUpdatedTimestamp",
        "AlarmDescription",
        "AlarmName",
        "AlarmRule",
        "InsufficientDataActions",
        "OKActions",
        "StateReason",
        "StateReasonData",
        "StateUpdatedTimestamp",
        "StateValue"
      ]
    },
    "CompositeAlarms": {
      "type": "list",
      "member": {
        "shape": "CompositeAlarm"
      }
    },
    "Counts": {
      "type": "list",
      "member": {
        "shape": "DatapointValue"
      }
    },
    "DashboardArn": {
      "type": "string"
    },
    "DashboardBody": {
      "type": "string"
    },
    "DashboardEntries": {
      "type": "list",
      "member": {
        "shape": "DashboardEntry"
      }
    },
    "DashboardEntry": {
      "type": "structure",
      "members": {
        "DashboardName": {
          "shape": "DashboardName",
          "documentation": "<p>The name of the dashboard.</p>"
        },
        "DashboardArn": {
          "shape": "DashboardArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dashboard.</p>"
        },
        "LastModified": {
          "shape": "LastModified",
          "documentation": "<p>The time stamp of when the dashboard was last modified, either by an API call or through the console. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>"
        },
        "Size": {
          "shape": "Size",
          "documentation": "<p>The size of the dashboard, in bytes.</p>"
        }
      },
      "documentation": "<p>Represents a specific dashboard.</p>"
    },
    "DashboardName": {
      "type": "string"
    },
    "DashboardNamePrefix": {
      "type": "string"
    },
    "DashboardNames": {
      "type": "list",
      "member": {
        "shape": "DashboardName"
      }
    },
    "DashboardValidationMessage": {
      "type": "structure",
      "members": {
        "DataPath": {
          "shape": "DataPath",
          "documentation": "<p>The data path related to the message.</p>"
        },
        "Message": {
          "shape": "Message",
          "documentation": "<p>A message describing the error or warning.</p>"
        }
      },
      "documentation": "<p>An error or warning for the operation.</p>"
    },
    "DashboardValidationMessages": {
      "type": "list",
      "member": {
        "shape": "DashboardValidationMessage"
      }
    },
    "DataPath": {
      "type": "string"
    },
    "Datapoint": {
      "type": "structure",
      "members": {
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp used for the data point.</p>"
        },
        "SampleCount": {
          "shape": "DatapointValue",
          "documentation": "<p>The number of metric values that contributed to the aggregate value of this data point.</p>"
        },
        "Average": {
          "shape": "DatapointValue",
          "documentation": "<p>The average of the metric values that correspond to the data point.</p>"
        },
        "Sum": {
          "shape": "DatapointValue",
          "documentation": "<p>The sum of the metric values for the data point.</p>"
        },
        "Minimum": {
          "shape": "DatapointValue",
          "documentation": "<p>The minimum metric value for the data point.</p>"
        },
        "Maximum": {
          "shape": "DatapointValue",
          "documentation": "<p>The maximum metric value for the data point.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>The standard unit for the data point.</p>"
        },
        "ExtendedStatistics": {
          "shape": "DatapointValueMap",
          "documentation": "<p>The percentile statistic for the data point.</p>"
        }
      },
      "documentation": "<p>Encapsulates the statistical data that CloudWatch computes from metric data.</p>",
      "xmlOrder": [
        "Timestamp",
        "SampleCount",
        "Average",
        "Sum",
        "Minimum",
        "Maximum",
        "Unit",
        "ExtendedStatistics"
      ]
    },
    "DatapointValue": {
      "type": "double"
    },
    "DatapointValueMap": {
      "type": "map",
      "key": {
        "shape": "ExtendedStatistic"
      },
      "value": {
        "shape": "DatapointValue"
      }
    },
    "DatapointValues": {
      "type": "list",
      "member": {
        "shape": "DatapointValue"
      }
    },
    "Datapoints": {
      "type": "list",
      "member": {
        "shape": "Datapoint"
      }
    },
    "DatapointsToAlarm": {
      "type": "integer",
      "min": 1
    },
    "DeleteAlarmsInput": {
      "type": "structure",
      "required": [
        "AlarmNames"
      ],
      "members": {
        "AlarmNames": {
          "shape": "AlarmNames",
          "documentation": "<p>The alarms to be deleted.</p>"
        }
      }
    },
    "DeleteAnomalyDetectorInput": {
      "type": "structure",
      "required": [
        "Namespace",
        "MetricName",
        "Stat"
      ],
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace associated with the anomaly detection model to delete.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The metric name associated with the anomaly detection model to delete.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The metric dimensions associated with the anomaly detection model to delete.</p>"
        },
        "Stat": {
          "shape": "AnomalyDetectorMetricStat",
          "documentation": "<p>The statistic associated with the anomaly detection model to delete.</p>"
        }
      }
    },
    "DeleteAnomalyDetectorOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteDashboardsInput": {
      "type": "structure",
      "required": [
        "DashboardNames"
      ],
      "members": {
        "DashboardNames": {
          "shape": "DashboardNames",
          "documentation": "<p>The dashboards to be deleted. This parameter is required.</p>"
        }
      }
    },
    "DeleteDashboardsOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteInsightRulesInput": {
      "type": "structure",
      "required": [
        "RuleNames"
      ],
      "members": {
        "RuleNames": {
          "shape": "InsightRuleNames",
          "documentation": "<p>An array of the rule names to delete. If you need to find out the names of your rules, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html\">DescribeInsightRules</a>.</p>"
        }
      }
    },
    "DeleteInsightRulesOutput": {
      "type": "structure",
      "members": {
        "Failures": {
          "shape": "BatchFailures",
          "documentation": "<p>An array listing the rules that could not be deleted. You cannot delete built-in rules.</p>"
        }
      }
    },
    "DescribeAlarmHistoryInput": {
      "type": "structure",
      "members": {
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The name of the alarm.</p>"
        },
        "AlarmTypes": {
          "shape": "AlarmTypes",
          "documentation": "<p>Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, only metric alarms are returned.</p>"
        },
        "HistoryItemType": {
          "shape": "HistoryItemType",
          "documentation": "<p>The type of alarm histories to retrieve.</p>"
        },
        "StartDate": {
          "shape": "Timestamp",
          "documentation": "<p>The starting date to retrieve alarm history.</p>"
        },
        "EndDate": {
          "shape": "Timestamp",
          "documentation": "<p>The ending date to retrieve alarm history.</p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p>The maximum number of alarm history records to retrieve.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to indicate that there is more data available.</p>"
        },
        "ScanBy": {
          "shape": "ScanBy",
          "documentation": "<p>Specified whether to return the newest or oldest alarm history first. Specify <code>TimestampDescending</code> to have the newest event history returned first, and specify <code>TimestampAscending</code> to have the oldest history returned first.</p>"
        }
      }
    },
    "DescribeAlarmHistoryOutput": {
      "type": "structure",
      "members": {
        "AlarmHistoryItems": {
          "shape": "AlarmHistoryItems",
          "documentation": "<p>The alarm histories, in JSON format.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that marks the start of the next batch of returned results.</p>"
        }
      }
    },
    "DescribeAlarmsForMetricInput": {
      "type": "structure",
      "required": [
        "MetricName",
        "Namespace"
      ],
      "members": {
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the metric.</p>"
        },
        "Statistic": {
          "shape": "Statistic",
          "documentation": "<p>The statistic for the metric, other than percentiles. For percentile statistics, use <code>ExtendedStatistics</code>.</p>"
        },
        "ExtendedStatistic": {
          "shape": "ExtendedStatistic",
          "documentation": "<p>The percentile statistic for the metric. Specify a value between p0.0 and p100.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The period, in seconds, over which the statistic is applied.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>The unit for the metric.</p>"
        }
      }
    },
    "DescribeAlarmsForMetricOutput": {
      "type": "structure",
      "members": {
        "MetricAlarms": {
          "shape": "MetricAlarms",
          "documentation": "<p>The information for each alarm with the specified metric.</p>"
        }
      }
    },
    "DescribeAlarmsInput": {
      "type": "structure",
      "members": {
        "AlarmNames": {
          "shape": "AlarmNames",
          "documentation": "<p>The names of the alarms to retrieve information about.</p>"
        },
        "AlarmNamePrefix": {
          "shape": "AlarmNamePrefix",
          "documentation": "<p>An alarm name prefix. If you specify this parameter, you receive information about all alarms that have names that start with this prefix.</p> <p>If this parameter is specified, you cannot specify <code>AlarmNames</code>.</p>"
        },
        "AlarmTypes": {
          "shape": "AlarmTypes",
          "documentation": "<p>Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, only metric alarms are returned.</p>"
        },
        "ChildrenOfAlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>If you use this parameter and specify the name of a composite alarm, the operation returns information about the \"children\" alarms of the alarm you specify. These are the metric alarms and composite alarms referenced in the <code>AlarmRule</code> field of the composite alarm that you specify in <code>ChildrenOfAlarmName</code>. Information about the composite alarm that you name in <code>ChildrenOfAlarmName</code> is not returned.</p> <p>If you specify <code>ChildrenOfAlarmName</code>, you cannot specify any other parameters in the request except for <code>MaxRecords</code> and <code>NextToken</code>. If you do so, you receive a validation error.</p> <note> <p>Only the <code>Alarm Name</code>, <code>ARN</code>, <code>StateValue</code> (OK/ALARM/INSUFFICIENT_DATA), and <code>StateUpdatedTimestamp</code> information are returned by this operation when you use this parameter. To get complete information about these alarms, perform another <code>DescribeAlarms</code> operation and specify the parent alarm names in the <code>AlarmNames</code> parameter.</p> </note>"
        },
        "ParentsOfAlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>If you use this parameter and specify the name of a metric or composite alarm, the operation returns information about the \"parent\" alarms of the alarm you specify. These are the composite alarms that have <code>AlarmRule</code> parameters that reference the alarm named in <code>ParentsOfAlarmName</code>. Information about the alarm that you specify in <code>ParentsOfAlarmName</code> is not returned.</p> <p>If you specify <code>ParentsOfAlarmName</code>, you cannot specify any other parameters in the request except for <code>MaxRecords</code> and <code>NextToken</code>. If you do so, you receive a validation error.</p> <note> <p>Only the Alarm Name and ARN are returned by this operation when you use this parameter. To get complete information about these alarms, perform another <code>DescribeAlarms</code> operation and specify the parent alarm names in the <code>AlarmNames</code> parameter.</p> </note>"
        },
        "StateValue": {
          "shape": "StateValue",
          "documentation": "<p>Specify this parameter to receive information only about alarms that are currently in the state that you specify.</p>"
        },
        "ActionPrefix": {
          "shape": "ActionPrefix",
          "documentation": "<p>Use this parameter to filter the results of the operation to only those alarms that use a certain alarm action. For example, you could specify the ARN of an SNS topic to find all alarms that send notifications to that topic.</p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p>The maximum number of alarm descriptions to retrieve.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to indicate that there is more data available.</p>"
        }
      }
    },
    "DescribeAlarmsOutput": {
      "type": "structure",
      "members": {
        "CompositeAlarms": {
          "shape": "CompositeAlarms",
          "documentation": "<p>The information about any composite alarms returned by the operation.</p>"
        },
        "MetricAlarms": {
          "shape": "MetricAlarms",
          "documentation": "<p>The information about any metric alarms returned by the operation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that marks the start of the next batch of returned results.</p>"
        }
      }
    },
    "DescribeAnomalyDetectorsInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Use the token returned by the previous operation to request the next page of results.</p>"
        },
        "MaxResults": {
          "shape": "MaxReturnedResultsCount",
          "documentation": "<p>The maximum number of results to return in one operation. The maximum value that you can specify is 100.</p> <p>To retrieve the remaining results, make another call with the returned <code>NextToken</code> value. </p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>Limits the results to only the anomaly detection models that are associated with the specified namespace.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>Limits the results to only the anomaly detection models that are associated with the specified metric name. If there are multiple metrics with this name in different namespaces that have anomaly detection models, they're all returned.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>Limits the results to only the anomaly detection models that are associated with the specified metric dimensions. If there are multiple metrics that have these dimensions and have anomaly detection models associated, they're all returned.</p>"
        }
      }
    },
    "DescribeAnomalyDetectorsOutput": {
      "type": "structure",
      "members": {
        "AnomalyDetectors": {
          "shape": "AnomalyDetectors",
          "documentation": "<p>The list of anomaly detection models returned by the operation.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that you can use in a subsequent operation to retrieve the next set of results.</p>"
        }
      }
    },
    "DescribeInsightRulesInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "MaxResults": {
          "shape": "InsightRuleMaxResults",
          "documentation": "<p>This parameter is not currently used. Reserved for future use. If it is used in the future, the maximum value might be different.</p>"
        }
      }
    },
    "DescribeInsightRulesOutput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "InsightRules": {
          "shape": "InsightRules",
          "documentation": "<p>The rules returned by the operation.</p>"
        }
      }
    },
    "Dimension": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "DimensionName",
          "documentation": "<p>The name of the dimension. Dimension names cannot contain blank spaces or non-ASCII characters.</p>"
        },
        "Value": {
          "shape": "DimensionValue",
          "documentation": "<p>The value of the dimension.</p>"
        }
      },
      "documentation": "<p>A dimension is a name/value pair that is part of the identity of a metric. You can assign up to 10 dimensions to a metric. Because dimensions are part of the unique identifier for a metric, whenever you add a unique name/value pair to one of your metrics, you are creating a new variation of that metric. </p>",
      "xmlOrder": [
        "Name",
        "Value"
      ]
    },
    "DimensionFilter": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DimensionName",
          "documentation": "<p>The dimension name to be matched.</p>"
        },
        "Value": {
          "shape": "DimensionValue",
          "documentation": "<p>The value of the dimension to be matched.</p>"
        }
      },
      "documentation": "<p>Represents filters for a dimension.</p>"
    },
    "DimensionFilters": {
      "type": "list",
      "member": {
        "shape": "DimensionFilter"
      },
      "max": 10
    },
    "DimensionName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "DimensionValue": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "Dimensions": {
      "type": "list",
      "member": {
        "shape": "Dimension"
      },
      "max": 10
    },
    "DisableAlarmActionsInput": {
      "type": "structure",
      "required": [
        "AlarmNames"
      ],
      "members": {
        "AlarmNames": {
          "shape": "AlarmNames",
          "documentation": "<p>The names of the alarms.</p>"
        }
      }
    },
    "DisableInsightRulesInput": {
      "type": "structure",
      "required": [
        "RuleNames"
      ],
      "members": {
        "RuleNames": {
          "shape": "InsightRuleNames",
          "documentation": "<p>An array of the rule names to disable. If you need to find out the names of your rules, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html\">DescribeInsightRules</a>.</p>"
        }
      }
    },
    "DisableInsightRulesOutput": {
      "type": "structure",
      "members": {
        "Failures": {
          "shape": "BatchFailures",
          "documentation": "<p>An array listing the rules that could not be disabled. You cannot disable built-in rules.</p>"
        }
      }
    },
    "EnableAlarmActionsInput": {
      "type": "structure",
      "required": [
        "AlarmNames"
      ],
      "members": {
        "AlarmNames": {
          "shape": "AlarmNames",
          "documentation": "<p>The names of the alarms.</p>"
        }
      }
    },
    "EnableInsightRulesInput": {
      "type": "structure",
      "required": [
        "RuleNames"
      ],
      "members": {
        "RuleNames": {
          "shape": "InsightRuleNames",
          "documentation": "<p>An array of the rule names to enable. If you need to find out the names of your rules, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html\">DescribeInsightRules</a>.</p>"
        }
      }
    },
    "EnableInsightRulesOutput": {
      "type": "structure",
      "members": {
        "Failures": {
          "shape": "BatchFailures",
          "documentation": "<p>An array listing the rules that could not be enabled. You cannot disable or enable built-in rules.</p>"
        }
      }
    },
    "EvaluateLowSampleCountPercentile": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "EvaluationPeriods": {
      "type": "integer",
      "min": 1
    },
    "ExceptionType": {
      "type": "string"
    },
    "ExtendedStatistic": {
      "type": "string",
      "pattern": "p(\\d{1,2}(\\.\\d{0,2})?|100)"
    },
    "ExtendedStatistics": {
      "type": "list",
      "member": {
        "shape": "ExtendedStatistic"
      },
      "max": 10,
      "min": 1
    },
    "FailureCode": {
      "type": "string"
    },
    "FailureDescription": {
      "type": "string"
    },
    "FailureResource": {
      "type": "string"
    },
    "GetDashboardInput": {
      "type": "structure",
      "required": [
        "DashboardName"
      ],
      "members": {
        "DashboardName": {
          "shape": "DashboardName",
          "documentation": "<p>The name of the dashboard to be described.</p>"
        }
      }
    },
    "GetDashboardOutput": {
      "type": "structure",
      "members": {
        "DashboardArn": {
          "shape": "DashboardArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dashboard.</p>"
        },
        "DashboardBody": {
          "shape": "DashboardBody",
          "documentation": "<p>The detailed information about the dashboard, including what widgets are included and their location on the dashboard. For more information about the <code>DashboardBody</code> syntax, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html\">Dashboard Body Structure and Syntax</a>. </p>"
        },
        "DashboardName": {
          "shape": "DashboardName",
          "documentation": "<p>The name of the dashboard.</p>"
        }
      }
    },
    "GetInsightRuleReportInput": {
      "type": "structure",
      "required": [
        "RuleName",
        "StartTime",
        "EndTime",
        "Period"
      ],
      "members": {
        "RuleName": {
          "shape": "InsightRuleName",
          "documentation": "<p>The name of the rule that you want to see data from.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the data to use in the report. When used in a raw HTTP Query API, it is formatted as <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, <code>2019-07-01T23:59:59</code>.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end time of the data to use in the report. When used in a raw HTTP Query API, it is formatted as <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, <code>2019-07-01T23:59:59</code>.</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The period, in seconds, to use for the statistics in the <code>InsightRuleMetricDatapoint</code> results.</p>"
        },
        "MaxContributorCount": {
          "shape": "InsightRuleUnboundInteger",
          "documentation": "<p>The maximum number of contributors to include in the report. The range is 1 to 100. If you omit this, the default of 10 is used.</p>"
        },
        "Metrics": {
          "shape": "InsightRuleMetricList",
          "documentation": "<p>Specifies which metrics to use for aggregation of contributor values for the report. You can specify one or more of the following metrics:</p> <ul> <li> <p> <code>UniqueContributors</code> -- the number of unique contributors for each data point.</p> </li> <li> <p> <code>MaxContributorValue</code> -- the value of the top contributor for each data point. The identity of the contributor might change for each data point in the graph.</p> <p>If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified by the rule's <code>Value</code>, during that period.</p> </li> <li> <p> <code>SampleCount</code> -- the number of data points matched by the rule.</p> </li> <li> <p> <code>Sum</code> -- the sum of the values from all contributors during the time period represented by that data point.</p> </li> <li> <p> <code>Minimum</code> -- the minimum value from a single observation during the time period represented by that data point.</p> </li> <li> <p> <code>Maximum</code> -- the maximum value from a single observation during the time period represented by that data point.</p> </li> <li> <p> <code>Average</code> -- the average value from all contributors during the time period represented by that data point.</p> </li> </ul>"
        },
        "OrderBy": {
          "shape": "InsightRuleOrderBy",
          "documentation": "<p>Determines what statistic to use to rank the contributors. Valid values are SUM and MAXIMUM.</p>"
        }
      }
    },
    "GetInsightRuleReportOutput": {
      "type": "structure",
      "members": {
        "KeyLabels": {
          "shape": "InsightRuleContributorKeyLabels",
          "documentation": "<p>An array of the strings used as the keys for this rule. The keys are the dimensions used to classify contributors. If the rule contains more than one key, then each unique combination of values for the keys is counted as a unique contributor.</p>"
        },
        "AggregationStatistic": {
          "shape": "InsightRuleAggregationStatistic",
          "documentation": "<p>Specifies whether this rule aggregates contributor data by COUNT or SUM.</p>"
        },
        "AggregateValue": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The sum of the values from all individual contributors that match the rule.</p>"
        },
        "ApproximateUniqueCount": {
          "shape": "InsightRuleUnboundLong",
          "documentation": "<p>An approximate count of the unique contributors found by this rule in this time period.</p>"
        },
        "Contributors": {
          "shape": "InsightRuleContributors",
          "documentation": "<p>An array of the unique contributors found by this rule in this time period. If the rule contains multiple keys, each combination of values for the keys counts as a unique contributor.</p>"
        },
        "MetricDatapoints": {
          "shape": "InsightRuleMetricDatapoints",
          "documentation": "<p>A time series of metric data points that matches the time period in the rule request.</p>"
        }
      }
    },
    "GetMetricDataInput": {
      "type": "structure",
      "required": [
        "MetricDataQueries",
        "StartTime",
        "EndTime"
      ],
      "members": {
        "MetricDataQueries": {
          "shape": "MetricDataQueries",
          "documentation": "<p>The metric queries to be returned. A single <code>GetMetricData</code> call can include as many as 500 <code>MetricDataQuery</code> structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data. </p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp indicating the earliest data to be returned.</p> <p>The value specified is inclusive; results include data points with the specified time stamp. </p> <p>CloudWatch rounds the specified time stamp as follows:</p> <ul> <li> <p>Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.</p> </li> <li> <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p> </li> <li> <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p> </li> </ul> <p>If you set <code>Period</code> to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15. </p> <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code> values that align with the value of the metric's <code>Period</code> and sync up with the beginning and end of an hour. For example, if the <code>Period</code> of a metric is 5 minutes, specifying 12:05 or 12:30 as <code>StartTime</code> can get a faster response from CloudWatch than setting 12:07 or 12:29 as the <code>StartTime</code>.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp indicating the latest data to be returned.</p> <p>The value specified is exclusive; results include data points up to the specified time stamp.</p> <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code> values that align with the value of the metric's <code>Period</code> and sync up with the beginning and end of an hour. For example, if the <code>Period</code> of a metric is 5 minutes, specifying 12:05 or 12:30 as <code>EndTime</code> can get a faster response from CloudWatch than setting 12:07 or 12:29 as the <code>EndTime</code>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Include this value, if it was returned by the previous call, to get the next set of data points.</p>"
        },
        "ScanBy": {
          "shape": "ScanBy",
          "documentation": "<p>The order in which data points should be returned. <code>TimestampDescending</code> returns the newest data first and paginates when the <code>MaxDatapoints</code> limit is reached. <code>TimestampAscending</code> returns the oldest data first and paginates when the <code>MaxDatapoints</code> limit is reached.</p>"
        },
        "MaxDatapoints": {
          "shape": "GetMetricDataMaxDatapoints",
          "documentation": "<p>The maximum number of data points the request should return before paginating. If you omit this, the default of 100,800 is used.</p>"
        }
      }
    },
    "GetMetricDataMaxDatapoints": {
      "type": "integer"
    },
    "GetMetricDataOutput": {
      "type": "structure",
      "members": {
        "MetricDataResults": {
          "shape": "MetricDataResults",
          "documentation": "<p>The metrics that are returned, including the metric name, namespace, and dimensions.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that marks the next batch of returned results.</p>"
        },
        "Messages": {
          "shape": "MetricDataResultMessages",
          "documentation": "<p>Contains a message about this <code>GetMetricData</code> operation, if the operation results in such a message. An example of a message that might be returned is <code>Maximum number of allowed metrics exceeded</code>. If there is a message, as much of the operation as possible is still executed.</p> <p>A message appears here only if it is related to the global <code>GetMetricData</code> operation. Any message about a specific metric returned by the operation appears in the <code>MetricDataResult</code> object returned for that metric.</p>"
        }
      }
    },
    "GetMetricStatisticsInput": {
      "type": "structure",
      "required": [
        "Namespace",
        "MetricName",
        "StartTime",
        "EndTime",
        "Period"
      ],
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the metric, with or without spaces.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric, with or without spaces.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric. If a specific combination of dimensions was not published, you can't retrieve statistics for it. You must specify the same dimensions that were used when the metrics were created. For an example, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations\">Dimension Combinations</a> in the <i>Amazon CloudWatch User Guide</i>. For more information about specifying dimensions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html\">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp that determines the first data point to return. Start times are evaluated relative to the time that CloudWatch receives the request.</p> <p>The value specified is inclusive; results include data points with the specified time stamp. In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).</p> <p>CloudWatch rounds the specified time stamp as follows:</p> <ul> <li> <p>Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.</p> </li> <li> <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p> </li> <li> <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p> </li> </ul> <p>If you set <code>Period</code> to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15. </p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp that determines the last data point to return.</p> <p>The value specified is exclusive; results include data points up to the specified time stamp. In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p> <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p> <ul> <li> <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p> </li> <li> <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p> </li> <li> <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p> </li> </ul>"
        },
        "Statistics": {
          "shape": "Statistics",
          "documentation": "<p>The metric statistics, other than percentile. For percentile statistics, use <code>ExtendedStatistics</code>. When calling <code>GetMetricStatistics</code>, you must specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not both.</p>"
        },
        "ExtendedStatistics": {
          "shape": "ExtendedStatistics",
          "documentation": "<p>The percentile statistics. Specify values between p0.0 and p100. When calling <code>GetMetricStatistics</code>, you must specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not both. Percentile statistics are not available for metrics when any of the metric values are negative numbers.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>The unit for a given metric. If you omit <code>Unit</code>, all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>"
        }
      }
    },
    "GetMetricStatisticsOutput": {
      "type": "structure",
      "members": {
        "Label": {
          "shape": "MetricLabel",
          "documentation": "<p>A label for the specified metric.</p>"
        },
        "Datapoints": {
          "shape": "Datapoints",
          "documentation": "<p>The data points for the specified metric.</p>"
        }
      }
    },
    "GetMetricWidgetImageInput": {
      "type": "structure",
      "required": [
        "MetricWidget"
      ],
      "members": {
        "MetricWidget": {
          "shape": "MetricWidget",
          "documentation": "<p>A JSON string that defines the bitmap graph to be retrieved. The string includes the metrics to include in the graph, statistics, annotations, title, axis limits, and so on. You can include only one <code>MetricWidget</code> parameter in each <code>GetMetricWidgetImage</code> call.</p> <p>For more information about the syntax of <code>MetricWidget</code> see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Metric-Widget-Structure.html\">GetMetricWidgetImage: Metric Widget Structure and Syntax</a>.</p> <p>If any metric on the graph could not load all the requested data points, an orange triangle with an exclamation point appears next to the graph legend.</p>"
        },
        "OutputFormat": {
          "shape": "OutputFormat",
          "documentation": "<p>The format of the resulting image. Only PNG images are supported.</p> <p>The default is <code>png</code>. If you specify <code>png</code>, the API returns an HTTP response with the content-type set to <code>text/xml</code>. The image data is in a <code>MetricWidgetImage</code> field. For example:</p> <p> <code> &lt;GetMetricWidgetImageResponse xmlns=&lt;URLstring&gt;&gt;</code> </p> <p> <code> &lt;GetMetricWidgetImageResult&gt;</code> </p> <p> <code> &lt;MetricWidgetImage&gt;</code> </p> <p> <code> iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...</code> </p> <p> <code> &lt;/MetricWidgetImage&gt;</code> </p> <p> <code> &lt;/GetMetricWidgetImageResult&gt;</code> </p> <p> <code> &lt;ResponseMetadata&gt;</code> </p> <p> <code> &lt;RequestId&gt;6f0d4192-4d42-11e8-82c1-f539a07e0e3b&lt;/RequestId&gt;</code> </p> <p> <code> &lt;/ResponseMetadata&gt;</code> </p> <p> <code>&lt;/GetMetricWidgetImageResponse&gt;</code> </p> <p>The <code>image/png</code> setting is intended only for custom HTTP requests. For most use cases, and all actions using an AWS SDK, you should use <code>png</code>. If you specify <code>image/png</code>, the HTTP response has a content-type set to <code>image/png</code>, and the body of the response is a PNG image. </p>"
        }
      }
    },
    "GetMetricWidgetImageOutput": {
      "type": "structure",
      "members": {
        "MetricWidgetImage": {
          "shape": "MetricWidgetImage",
          "documentation": "<p>The image of the graph, in the output format specified. The output is base64-encoded.</p>"
        }
      }
    },
    "HistoryData": {
      "type": "string",
      "max": 4095,
      "min": 1
    },
    "HistoryItemType": {
      "type": "string",
      "enum": [
        "ConfigurationUpdate",
        "StateUpdate",
        "Action"
      ]
    },
    "HistorySummary": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "InsightRule": {
      "type": "structure",
      "required": [
        "Name",
        "State",
        "Schema",
        "Definition"
      ],
      "members": {
        "Name": {
          "shape": "InsightRuleName",
          "documentation": "<p>The name of the rule.</p>"
        },
        "State": {
          "shape": "InsightRuleState",
          "documentation": "<p>Indicates whether the rule is enabled or disabled.</p>"
        },
        "Schema": {
          "shape": "InsightRuleSchema",
          "documentation": "<p>For rules that you create, this is always <code>{\"Name\": \"CloudWatchLogRule\", \"Version\": 1}</code>. For built-in rules, this is <code>{\"Name\": \"ServiceLogRule\", \"Version\": 1}</code> </p>"
        },
        "Definition": {
          "shape": "InsightRuleDefinition",
          "documentation": "<p>The definition of the rule, as a JSON object. The definition contains the keywords used to define contributors, the value to aggregate on if this rule returns a sum instead of a count, and the filters. For details on the valid syntax, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html\">Contributor Insights Rule Syntax</a>.</p>"
        }
      },
      "documentation": "<p>This structure contains the definition for a Contributor Insights rule.</p>"
    },
    "InsightRuleAggregationStatistic": {
      "type": "string"
    },
    "InsightRuleContributor": {
      "type": "structure",
      "required": [
        "Keys",
        "ApproximateAggregateValue",
        "Datapoints"
      ],
      "members": {
        "Keys": {
          "shape": "InsightRuleContributorKeys",
          "documentation": "<p>One of the log entry field keywords that is used to define contributors for this rule.</p>"
        },
        "ApproximateAggregateValue": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>An approximation of the aggregate value that comes from this contributor.</p>"
        },
        "Datapoints": {
          "shape": "InsightRuleContributorDatapoints",
          "documentation": "<p>An array of the data points where this contributor is present. Only the data points when this contributor appeared are included in the array.</p>"
        }
      },
      "documentation": "<p>One of the unique contributors found by a Contributor Insights rule. If the rule contains multiple keys, then a unique contributor is a unique combination of values from all the keys in the rule.</p> <p>If the rule contains a single key, then each unique contributor is each unique value for this key.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html\">GetInsightRuleReport</a>.</p>"
    },
    "InsightRuleContributorDatapoint": {
      "type": "structure",
      "required": [
        "Timestamp",
        "ApproximateValue"
      ],
      "members": {
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp of the data point.</p>"
        },
        "ApproximateValue": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The approximate value that this contributor added during this timestamp.</p>"
        }
      },
      "documentation": "<p>One data point related to one contributor.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html\">GetInsightRuleReport</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_InsightRuleContributor.html\">InsightRuleContributor</a>.</p>"
    },
    "InsightRuleContributorDatapoints": {
      "type": "list",
      "member": {
        "shape": "InsightRuleContributorDatapoint"
      }
    },
    "InsightRuleContributorKey": {
      "type": "string"
    },
    "InsightRuleContributorKeyLabel": {
      "type": "string"
    },
    "InsightRuleContributorKeyLabels": {
      "type": "list",
      "member": {
        "shape": "InsightRuleContributorKeyLabel"
      }
    },
    "InsightRuleContributorKeys": {
      "type": "list",
      "member": {
        "shape": "InsightRuleContributorKey"
      }
    },
    "InsightRuleContributors": {
      "type": "list",
      "member": {
        "shape": "InsightRuleContributor"
      }
    },
    "InsightRuleDefinition": {
      "type": "string",
      "max": 8192,
      "min": 1,
      "pattern": "[\\x00-\\x7F]+"
    },
    "InsightRuleMaxResults": {
      "type": "integer",
      "max": 500,
      "min": 1
    },
    "InsightRuleMetricDatapoint": {
      "type": "structure",
      "required": [
        "Timestamp"
      ],
      "members": {
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp of the data point.</p>"
        },
        "UniqueContributors": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The number of unique contributors who published data during this timestamp.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        },
        "MaxContributorValue": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The maximum value provided by one contributor during this timestamp. Each timestamp is evaluated separately, so the identity of the max contributor could be different for each timestamp.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        },
        "SampleCount": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The number of occurrences that matched the rule during this data point.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        },
        "Average": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The average value from all contributors during the time period represented by that data point.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        },
        "Sum": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The sum of the values from all contributors during the time period represented by that data point.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        },
        "Minimum": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The minimum value from a single contributor during the time period represented by that data point.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        },
        "Maximum": {
          "shape": "InsightRuleUnboundDouble",
          "documentation": "<p>The maximum value from a single occurence from a single contributor during the time period represented by that data point.</p> <p>This statistic is returned only if you included it in the <code>Metrics</code> array in your request.</p>"
        }
      },
      "documentation": "<p>One data point from the metric time series returned in a Contributor Insights rule report.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetInsightRuleReport.html\">GetInsightRuleReport</a>.</p>"
    },
    "InsightRuleMetricDatapoints": {
      "type": "list",
      "member": {
        "shape": "InsightRuleMetricDatapoint"
      }
    },
    "InsightRuleMetricList": {
      "type": "list",
      "member": {
        "shape": "InsightRuleMetricName"
      }
    },
    "InsightRuleMetricName": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[\\x20-\\x7E]+"
    },
    "InsightRuleName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\x20-\\x7E]+"
    },
    "InsightRuleNames": {
      "type": "list",
      "member": {
        "shape": "InsightRuleName"
      }
    },
    "InsightRuleOrderBy": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[\\x20-\\x7E]+"
    },
    "InsightRuleSchema": {
      "type": "string"
    },
    "InsightRuleState": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[\\x20-\\x7E]+"
    },
    "InsightRuleUnboundDouble": {
      "type": "double"
    },
    "InsightRuleUnboundInteger": {
      "type": "integer"
    },
    "InsightRuleUnboundLong": {
      "type": "long"
    },
    "InsightRules": {
      "type": "list",
      "member": {
        "shape": "InsightRule"
      }
    },
    "LastModified": {
      "type": "timestamp"
    },
    "ListDashboardsInput": {
      "type": "structure",
      "members": {
        "DashboardNamePrefix": {
          "shape": "DashboardNamePrefix",
          "documentation": "<p>If you specify this parameter, only the dashboards with names starting with the specified string are listed. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, \".\", \"-\", and \"_\". </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to indicate that there is more data available.</p>"
        }
      }
    },
    "ListDashboardsOutput": {
      "type": "structure",
      "members": {
        "DashboardEntries": {
          "shape": "DashboardEntries",
          "documentation": "<p>The list of matching dashboards.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that marks the start of the next batch of returned results.</p>"
        }
      }
    },
    "ListMetricsInput": {
      "type": "structure",
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace to filter against.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric to filter against.</p>"
        },
        "Dimensions": {
          "shape": "DimensionFilters",
          "documentation": "<p>The dimensions to filter against.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token returned by a previous call to indicate that there is more data available.</p>"
        },
        "RecentlyActive": {
          "shape": "RecentlyActive",
          "documentation": "<p>To filter the results to show only metrics that have had data points published in the past three hours, specify this parameter with a value of <code>PT3H</code>. This is the only valid value for this parameter.</p> <p>The results that are returned are an approximation of the value you specify. There is a low probability that the returned results include metrics with last published data as much as 40 minutes more than the specified time interval.</p>"
        }
      }
    },
    "ListMetricsOutput": {
      "type": "structure",
      "members": {
        "Metrics": {
          "shape": "Metrics",
          "documentation": "<p>The metrics that match your request. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that marks the start of the next batch of returned results. </p>"
        }
      },
      "xmlOrder": [
        "Metrics",
        "NextToken"
      ]
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the CloudWatch resource that you want to view tags for.</p> <p>The ARN format of an alarm is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i> </code> </p> <p>The ARN format of a Contributor Insights rule is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule:<i>insight-rule-name</i> </code> </p> <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies\"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tag keys and values associated with the resource you specified.</p>"
        }
      }
    },
    "MaxRecords": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MaxReturnedResultsCount": {
      "type": "integer",
      "min": 1
    },
    "Message": {
      "type": "string"
    },
    "MessageData": {
      "type": "structure",
      "members": {
        "Code": {
          "shape": "MessageDataCode",
          "documentation": "<p>The error code or status code associated with the message.</p>"
        },
        "Value": {
          "shape": "MessageDataValue",
          "documentation": "<p>The message text.</p>"
        }
      },
      "documentation": "<p>A message returned by the <code>GetMetricData</code>API, including a code and a description.</p>"
    },
    "MessageDataCode": {
      "type": "string"
    },
    "MessageDataValue": {
      "type": "string"
    },
    "Metric": {
      "type": "structure",
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the metric.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric. This is a required field.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The dimensions for the metric.</p>"
        }
      },
      "documentation": "<p>Represents a specific metric.</p>",
      "xmlOrder": [
        "Namespace",
        "MetricName",
        "Dimensions"
      ]
    },
    "MetricAlarm": {
      "type": "structure",
      "members": {
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The name of the alarm.</p>"
        },
        "AlarmArn": {
          "shape": "AlarmArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the alarm.</p>"
        },
        "AlarmDescription": {
          "shape": "AlarmDescription",
          "documentation": "<p>The description of the alarm.</p>"
        },
        "AlarmConfigurationUpdatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the last update to the alarm configuration.</p>"
        },
        "ActionsEnabled": {
          "shape": "ActionsEnabled",
          "documentation": "<p>Indicates whether actions should be executed during any changes to the alarm state.</p>"
        },
        "OKActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
        },
        "AlarmActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
        },
        "InsufficientDataActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>"
        },
        "StateValue": {
          "shape": "StateValue",
          "documentation": "<p>The state value for the alarm.</p>"
        },
        "StateReason": {
          "shape": "StateReason",
          "documentation": "<p>An explanation for the alarm state, in text format.</p>"
        },
        "StateReasonData": {
          "shape": "StateReasonData",
          "documentation": "<p>An explanation for the alarm state, in JSON format.</p>"
        },
        "StateUpdatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the last update to the alarm state.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric associated with the alarm, if this is an alarm based on a single metric.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the metric associated with the alarm.</p>"
        },
        "Statistic": {
          "shape": "Statistic",
          "documentation": "<p>The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>"
        },
        "ExtendedStatistic": {
          "shape": "ExtendedStatistic",
          "documentation": "<p>The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The dimensions for the metric associated with the alarm.</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The period, in seconds, over which the statistic is applied.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>The unit of the metric associated with the alarm.</p>"
        },
        "EvaluationPeriods": {
          "shape": "EvaluationPeriods",
          "documentation": "<p>The number of periods over which data is compared to the specified threshold.</p>"
        },
        "DatapointsToAlarm": {
          "shape": "DatapointsToAlarm",
          "documentation": "<p>The number of data points that must be breaching to trigger the alarm.</p>"
        },
        "Threshold": {
          "shape": "Threshold",
          "documentation": "<p>The value to compare with the specified statistic.</p>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperator",
          "documentation": "<p>The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p>"
        },
        "TreatMissingData": {
          "shape": "TreatMissingData",
          "documentation": "<p>Sets how this alarm is to handle missing data points. If this parameter is omitted, the default behavior of <code>missing</code> is used.</p>"
        },
        "EvaluateLowSampleCountPercentile": {
          "shape": "EvaluateLowSampleCountPercentile",
          "documentation": "<p>Used only for alarms based on percentiles. If <code>ignore</code>, the alarm state does not change during periods with too few data points to be statistically significant. If <code>evaluate</code> or this parameter is not used, the alarm is always evaluated and possibly changes state no matter how many data points are available.</p>"
        },
        "Metrics": {
          "shape": "MetricDataQueries",
          "documentation": "<p>An array of MetricDataQuery structures, used in an alarm based on a metric math expression. Each structure either retrieves a metric or performs a math expression. One item in the Metrics array is the math expression that the alarm watches. This expression by designated by having <code>ReturnValue</code> set to true.</p>"
        },
        "ThresholdMetricId": {
          "shape": "MetricId",
          "documentation": "<p>In an alarm based on an anomaly detection model, this is the ID of the <code>ANOMALY_DETECTION_BAND</code> function used as the threshold for the alarm.</p>"
        }
      },
      "documentation": "<p>The details about a metric alarm.</p>",
      "xmlOrder": [
        "AlarmName",
        "AlarmArn",
        "AlarmDescription",
        "AlarmConfigurationUpdatedTimestamp",
        "ActionsEnabled",
        "OKActions",
        "AlarmActions",
        "InsufficientDataActions",
        "StateValue",
        "StateReason",
        "StateReasonData",
        "StateUpdatedTimestamp",
        "MetricName",
        "Namespace",
        "Statistic",
        "Dimensions",
        "Period",
        "Unit",
        "EvaluationPeriods",
        "Threshold",
        "ComparisonOperator",
        "ExtendedStatistic",
        "TreatMissingData",
        "EvaluateLowSampleCountPercentile",
        "DatapointsToAlarm",
        "Metrics",
        "ThresholdMetricId"
      ]
    },
    "MetricAlarms": {
      "type": "list",
      "member": {
        "shape": "MetricAlarm"
      }
    },
    "MetricData": {
      "type": "list",
      "member": {
        "shape": "MetricDatum"
      }
    },
    "MetricDataQueries": {
      "type": "list",
      "member": {
        "shape": "MetricDataQuery"
      }
    },
    "MetricDataQuery": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "MetricId",
          "documentation": "<p>A short name used to tie this object to the results in the response. This name must be unique within a single call to <code>GetMetricData</code>. If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the mathematical expression. The valid characters are letters, numbers, and underscore. The first character must be a lowercase letter.</p>"
        },
        "MetricStat": {
          "shape": "MetricStat",
          "documentation": "<p>The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.</p> <p>Within one MetricDataQuery object, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>"
        },
        "Expression": {
          "shape": "MetricExpression",
          "documentation": "<p>The math expression to be performed on the returned data, if this object is performing a math expression. This expression can use the <code>Id</code> of the other metrics to refer to those metrics, and can also use the <code>Id</code> of other expressions to use the result of those expressions. For more information about metric math expressions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax\">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Within each MetricDataQuery object, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>"
        },
        "Label": {
          "shape": "MetricLabel",
          "documentation": "<p>A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents. If the metric or expression is shown in a CloudWatch dashboard widget, the label is shown. If Label is omitted, CloudWatch generates a default.</p>"
        },
        "ReturnData": {
          "shape": "ReturnData",
          "documentation": "<p>When used in <code>GetMetricData</code>, this option indicates whether to return the timestamps and raw data values of this metric. If you are performing this call just to do math expressions and do not also need the raw data returned, you can specify <code>False</code>. If you omit this, the default of <code>True</code> is used.</p> <p>When used in <code>PutMetricAlarm</code>, specify <code>True</code> for the one expression result to use as the alarm. For all other metrics and expressions in the same <code>PutMetricAlarm</code> operation, specify <code>ReturnData</code> as False.</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a <code>PutMetricData</code> operation that includes a <code>StorageResolution of 1 second</code>.</p>"
        }
      },
      "documentation": "<p>This structure is used in both <code>GetMetricData</code> and <code>PutMetricAlarm</code>. The supported use of this structure is different for those two operations.</p> <p>When used in <code>GetMetricData</code>, it indicates the metric data to return, and whether this call is just retrieving a batch set of data for one metric, or is performing a math expression on metric data. A single <code>GetMetricData</code> call can include up to 500 <code>MetricDataQuery</code> structures.</p> <p>When used in <code>PutMetricAlarm</code>, it enables you to create an alarm based on a metric math expression. Each <code>MetricDataQuery</code> in the array specifies either a metric to retrieve, or a math expression to be performed on retrieved metrics. A single <code>PutMetricAlarm</code> call can include up to 20 <code>MetricDataQuery</code> structures in the array. The 20 structures can include as many as 10 structures that contain a <code>MetricStat</code> parameter to retrieve a metric, and as many as 10 structures that contain the <code>Expression</code> parameter to perform a math expression. Of those <code>Expression</code> structures, one must have <code>True</code> as the value for <code>ReturnData</code>. The result of this expression is the value the alarm watches.</p> <p>Any expression used in a <code>PutMetricAlarm</code> operation must return a single time series. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax\">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Some of the parameters of this structure also have different uses whether you are using this structure in a <code>GetMetricData</code> operation or a <code>PutMetricAlarm</code> operation. These differences are explained in the following parameter list.</p>"
    },
    "MetricDataResult": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "MetricId",
          "documentation": "<p>The short name you specified to represent this metric.</p>"
        },
        "Label": {
          "shape": "MetricLabel",
          "documentation": "<p>The human-readable label associated with the data.</p>"
        },
        "Timestamps": {
          "shape": "Timestamps",
          "documentation": "<p>The timestamps for the data points, formatted in Unix timestamp format. The number of timestamps always matches the number of values and the value for Timestamps[x] is Values[x].</p>"
        },
        "Values": {
          "shape": "DatapointValues",
          "documentation": "<p>The data points for the metric corresponding to <code>Timestamps</code>. The number of values always matches the number of timestamps and the timestamp for Values[x] is Timestamps[x].</p>"
        },
        "StatusCode": {
          "shape": "StatusCode",
          "documentation": "<p>The status of the returned data. <code>Complete</code> indicates that all data points in the requested time range were returned. <code>PartialData</code> means that an incomplete set of data points were returned. You can use the <code>NextToken</code> value that was returned and repeat your request to get more data points. <code>NextToken</code> is not returned if you are performing a math expression. <code>InternalError</code> indicates that an error occurred. Retry your request using <code>NextToken</code>, if present.</p>"
        },
        "Messages": {
          "shape": "MetricDataResultMessages",
          "documentation": "<p>A list of messages with additional information about the data returned.</p>"
        }
      },
      "documentation": "<p>A <code>GetMetricData</code> call returns an array of <code>MetricDataResult</code> structures. Each of these structures includes the data points for that metric, along with the timestamps of those data points and other identifying information.</p>"
    },
    "MetricDataResultMessages": {
      "type": "list",
      "member": {
        "shape": "MessageData"
      }
    },
    "MetricDataResults": {
      "type": "list",
      "member": {
        "shape": "MetricDataResult"
      }
    },
    "MetricDatum": {
      "type": "structure",
      "required": [
        "MetricName"
      ],
      "members": {
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The dimensions associated with the metric.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time the metric data was received, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>"
        },
        "Value": {
          "shape": "DatapointValue",
          "documentation": "<p>The value for the metric.</p> <p>Although the parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p>"
        },
        "StatisticValues": {
          "shape": "StatisticSet",
          "documentation": "<p>The statistical values for the metric.</p>"
        },
        "Values": {
          "shape": "Values",
          "documentation": "<p>Array of numbers representing the values for the metric during the period. Each unique value is listed just once in this array, and the corresponding number in the <code>Counts</code> array specifies the number of times that value occurred during the period. You can include up to 150 unique values in each <code>PutMetricData</code> action that specifies a <code>Values</code> array.</p> <p>Although the <code>Values</code> array accepts numbers of type <code>Double</code>, CloudWatch rejects values that are either too small or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p>"
        },
        "Counts": {
          "shape": "Counts",
          "documentation": "<p>Array of numbers that is used along with the <code>Values</code> array. Each number in the <code>Count</code> array is the number of times the corresponding value in the <code>Values</code> array occurred during the period. </p> <p>If you omit the <code>Counts</code> array, the default of 1 is used as the value for each count. If you include a <code>Counts</code> array, it must include the same amount of values as the <code>Values</code> array.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>When you are using a <code>Put</code> operation, this defines what unit you want to use when storing the metric.</p> <p>In a <code>Get</code> operation, this displays the unit that is used for the metric.</p>"
        },
        "StorageResolution": {
          "shape": "StorageResolution",
          "documentation": "<p>Valid values are 1 and 60. Setting this to 1 specifies this metric as a high-resolution metric, so that CloudWatch stores the metric with sub-minute resolution down to one second. Setting this to 60 specifies this metric as a regular-resolution metric, which CloudWatch stores at 1-minute resolution. Currently, high resolution is available only for custom metrics. For more information about high-resolution metrics, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics\">High-Resolution Metrics</a> in the <i>Amazon CloudWatch User Guide</i>. </p> <p>This field is optional, if you do not specify it the default of 60 is used.</p>"
        }
      },
      "documentation": "<p>Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.</p>"
    },
    "MetricExpression": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "MetricId": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "MetricLabel": {
      "type": "string"
    },
    "MetricName": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "MetricStat": {
      "type": "structure",
      "required": [
        "Metric",
        "Period",
        "Stat"
      ],
      "members": {
        "Metric": {
          "shape": "Metric",
          "documentation": "<p>The metric to return, including the metric name, namespace, and dimensions.</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p> <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p> <ul> <li> <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p> </li> <li> <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p> </li> <li> <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p> </li> </ul>"
        },
        "Stat": {
          "shape": "Stat",
          "documentation": "<p>The statistic to return. It can include any CloudWatch statistic or extended statistic.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>When you are using a <code>Put</code> operation, this defines what unit you want to use when storing the metric.</p> <p>In a <code>Get</code> operation, if you omit <code>Unit</code> then all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>"
        }
      },
      "documentation": "<p>This structure defines the metric to be returned, along with the statistics, period, and units.</p>"
    },
    "MetricWidget": {
      "type": "string"
    },
    "MetricWidgetImage": {
      "type": "blob"
    },
    "Metrics": {
      "type": "list",
      "member": {
        "shape": "Metric"
      }
    },
    "Namespace": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[^:].*"
    },
    "NextToken": {
      "type": "string"
    },
    "OutputFormat": {
      "type": "string"
    },
    "PartialFailure": {
      "type": "structure",
      "members": {
        "FailureResource": {
          "shape": "FailureResource",
          "documentation": "<p>The specified rule that could not be deleted.</p>"
        },
        "ExceptionType": {
          "shape": "ExceptionType",
          "documentation": "<p>The type of error.</p>"
        },
        "FailureCode": {
          "shape": "FailureCode",
          "documentation": "<p>The code of the error.</p>"
        },
        "FailureDescription": {
          "shape": "FailureDescription",
          "documentation": "<p>A description of the error.</p>"
        }
      },
      "documentation": "<p>This array is empty if the API operation was successful for all the rules specified in the request. If the operation could not process one of the rules, the following data is returned for each of those rules.</p>"
    },
    "Period": {
      "type": "integer",
      "min": 1
    },
    "PutAnomalyDetectorInput": {
      "type": "structure",
      "required": [
        "Namespace",
        "MetricName",
        "Stat"
      ],
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the metric to create the anomaly detection model for.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name of the metric to create the anomaly detection model for.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The metric dimensions to create the anomaly detection model for.</p>"
        },
        "Stat": {
          "shape": "AnomalyDetectorMetricStat",
          "documentation": "<p>The statistic to use for the metric and the anomaly detection model.</p>"
        },
        "Configuration": {
          "shape": "AnomalyDetectorConfiguration",
          "documentation": "<p>The configuration specifies details about how the anomaly detection model is to be trained, including time ranges to exclude when training and updating the model. You can specify as many as 10 time ranges.</p> <p>The configuration can also include the time zone to use for the metric.</p> <p>You can in</p>"
        }
      }
    },
    "PutAnomalyDetectorOutput": {
      "type": "structure",
      "members": {}
    },
    "PutCompositeAlarmInput": {
      "type": "structure",
      "required": [
        "AlarmName",
        "AlarmRule"
      ],
      "members": {
        "ActionsEnabled": {
          "shape": "ActionsEnabled",
          "documentation": "<p>Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. The default is <code>TRUE</code>.</p>"
        },
        "AlarmActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> </p>"
        },
        "AlarmDescription": {
          "shape": "AlarmDescription",
          "documentation": "<p>The description for the composite alarm.</p>"
        },
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The name for the composite alarm. This name must be unique within the Region.</p>"
        },
        "AlarmRule": {
          "shape": "AlarmRule",
          "documentation": "<p>An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For each alarm that you reference, you designate a function that specifies whether that alarm needs to be in ALARM state, OK state, or INSUFFICIENT_DATA state. You can use operators (AND, OR and NOT) to combine multiple functions in a single expression. You can use parenthesis to logically group the functions in your expression.</p> <p>You can use either alarm names or ARNs to reference the other alarms that are to be evaluated.</p> <p>Functions can include the following:</p> <ul> <li> <p> <code>ALARM(\"<i>alarm-name</i> or <i>alarm-ARN</i>\")</code> is TRUE if the named alarm is in ALARM state.</p> </li> <li> <p> <code>OK(\"<i>alarm-name</i> or <i>alarm-ARN</i>\")</code> is TRUE if the named alarm is in OK state.</p> </li> <li> <p> <code>INSUFFICIENT_DATA(\"<i>alarm-name</i> or <i>alarm-ARN</i>\")</code> is TRUE if the named alarm is in INSUFFICIENT_DATA state.</p> </li> <li> <p> <code>TRUE</code> always evaluates to TRUE.</p> </li> <li> <p> <code>FALSE</code> always evaluates to FALSE.</p> </li> </ul> <p>TRUE and FALSE are useful for testing a complex <code>AlarmRule</code> structure, and for testing your alarm actions.</p> <p>Alarm names specified in <code>AlarmRule</code> can be surrounded with double-quotes (\"), but do not have to be.</p> <p>The following are some examples of <code>AlarmRule</code>:</p> <ul> <li> <p> <code>ALARM(CPUUtilizationTooHigh) AND ALARM(DiskReadOpsTooHigh)</code> specifies that the composite alarm goes into ALARM state only if both CPUUtilizationTooHigh and DiskReadOpsTooHigh alarms are in ALARM state.</p> </li> <li> <p> <code>ALARM(CPUUtilizationTooHigh) AND NOT ALARM(DeploymentInProgress)</code> specifies that the alarm goes to ALARM state if CPUUtilizationTooHigh is in ALARM state and DeploymentInProgress is not in ALARM state. This example reduces alarm noise during a known deployment window.</p> </li> <li> <p> <code>(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND OK(NetworkOutTooHigh)</code> goes into ALARM state if CPUUtilizationTooHigh OR DiskReadOpsTooHigh is in ALARM state, and if NetworkOutTooHigh is in OK state. This provides another example of using a composite alarm to prevent noise. This rule ensures that you are not notified with an alarm action on high CPU or disk usage if a known network problem is also occurring.</p> </li> </ul> <p>The <code>AlarmRule</code> can specify as many as 100 \"children\" alarms. The <code>AlarmRule</code> expression can have as many as 500 elements. Elements are child alarms, TRUE or FALSE statements, and parentheses.</p>"
        },
        "InsufficientDataActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> </p>"
        },
        "OKActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to an <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of key-value pairs to associate with the composite alarm. You can associate as many as 50 tags with an alarm.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values.</p>"
        }
      }
    },
    "PutDashboardInput": {
      "type": "structure",
      "required": [
        "DashboardName",
        "DashboardBody"
      ],
      "members": {
        "DashboardName": {
          "shape": "DashboardName",
          "documentation": "<p>The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, \"-\", and \"_\". This parameter is required.</p>"
        },
        "DashboardBody": {
          "shape": "DashboardBody",
          "documentation": "<p>The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard. This parameter is required.</p> <p>For more information about the syntax, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html\">Dashboard Body Structure and Syntax</a>.</p>"
        }
      }
    },
    "PutDashboardOutput": {
      "type": "structure",
      "members": {
        "DashboardValidationMessages": {
          "shape": "DashboardValidationMessages",
          "documentation": "<p>If the input for <code>PutDashboard</code> was correct and the dashboard was successfully created or modified, this result is empty.</p> <p>If this result includes only warning messages, then the input was valid enough for the dashboard to be created or modified, but some elements of the dashboard might not render.</p> <p>If this result includes error messages, the input was not valid and the operation failed.</p>"
        }
      }
    },
    "PutInsightRuleInput": {
      "type": "structure",
      "required": [
        "RuleName",
        "RuleDefinition"
      ],
      "members": {
        "RuleName": {
          "shape": "InsightRuleName",
          "documentation": "<p>A unique name for the rule.</p>"
        },
        "RuleState": {
          "shape": "InsightRuleState",
          "documentation": "<p>The state of the rule. Valid values are ENABLED and DISABLED.</p>"
        },
        "RuleDefinition": {
          "shape": "InsightRuleDefinition",
          "documentation": "<p>The definition of the rule, as a JSON object. For details on the valid syntax, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html\">Contributor Insights Rule Syntax</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of key-value pairs to associate with the Contributor Insights rule. You can associate as many as 50 tags with a rule.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only the resources that have certain tag values.</p> <p>To be able to associate tags with a rule, you must have the <code>cloudwatch:TagResource</code> permission in addition to the <code>cloudwatch:PutInsightRule</code> permission.</p> <p>If you are using this operation to update an existing Contributor Insights rule, any tags you specify in this parameter are ignored. To change the tags of an existing rule, use <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html\">TagResource</a>.</p>"
        }
      }
    },
    "PutInsightRuleOutput": {
      "type": "structure",
      "members": {}
    },
    "PutMetricAlarmInput": {
      "type": "structure",
      "required": [
        "AlarmName",
        "EvaluationPeriods",
        "ComparisonOperator"
      ],
      "members": {
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The name for the alarm. This name must be unique within the Region.</p>"
        },
        "AlarmDescription": {
          "shape": "AlarmDescription",
          "documentation": "<p>The description for the alarm.</p>"
        },
        "ActionsEnabled": {
          "shape": "ActionsEnabled",
          "documentation": "<p>Indicates whether actions should be executed during any changes to the alarm state. The default is <code>TRUE</code>.</p>"
        },
        "OKActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to an <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | <code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | <code>arn:aws:automate:<i>region</i>:ec2:recover</code> | <code>arn:aws:automate:<i>region</i>:ec2:reboot</code> | <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> | <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i> </code> </p> <p>Valid Values (for use with IAM roles): <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> </p>"
        },
        "AlarmActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | <code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | <code>arn:aws:automate:<i>region</i>:ec2:recover</code> | <code>arn:aws:automate:<i>region</i>:ec2:reboot</code> | <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> | <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i> </code> </p> <p>Valid Values (for use with IAM roles): <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> </p>"
        },
        "InsufficientDataActions": {
          "shape": "ResourceList",
          "documentation": "<p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | <code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | <code>arn:aws:automate:<i>region</i>:ec2:recover</code> | <code>arn:aws:automate:<i>region</i>:ec2:reboot</code> | <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> | <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i> </code> </p> <p>Valid Values (for use with IAM roles): <code>&gt;arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> </p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>The name for the metric associated with the alarm. For each <code>PutMetricAlarm</code> operation, you must specify either <code>MetricName</code> or a <code>Metrics</code> array.</p> <p>If you are creating an alarm based on a math expression, you cannot specify this parameter, or any of the <code>Dimensions</code>, <code>Period</code>, <code>Namespace</code>, <code>Statistic</code>, or <code>ExtendedStatistic</code> parameters. Instead, you specify all this information in the <code>Metrics</code> array.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace for the metric associated specified in <code>MetricName</code>.</p>"
        },
        "Statistic": {
          "shape": "Statistic",
          "documentation": "<p>The statistic for the metric specified in <code>MetricName</code>, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>. When you call <code>PutMetricAlarm</code> and specify a <code>MetricName</code>, you must specify either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>"
        },
        "ExtendedStatistic": {
          "shape": "ExtendedStatistic",
          "documentation": "<p>The percentile statistic for the metric specified in <code>MetricName</code>. Specify a value between p0.0 and p100. When you call <code>PutMetricAlarm</code> and specify a <code>MetricName</code>, you must specify either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>"
        },
        "Dimensions": {
          "shape": "Dimensions",
          "documentation": "<p>The dimensions for the metric specified in <code>MetricName</code>.</p>"
        },
        "Period": {
          "shape": "Period",
          "documentation": "<p>The length, in seconds, used each time the metric specified in <code>MetricName</code> is evaluated. Valid values are 10, 30, and any multiple of 60.</p> <p> <code>Period</code> is required for alarms based on static thresholds. If you are creating an alarm based on a metric math expression, you specify the period for each metric within the objects in the <code>Metrics</code> array.</p> <p>Be sure to specify 10 or 30 only for metrics that are stored by a <code>PutMetricData</code> call with a <code>StorageResolution</code> of 1. If you specify a period of 10 or 30 for a metric that does not have sub-minute resolution, the alarm still attempts to gather data at the period rate that you specify. In this case, it does not receive data for the attempts that do not correspond to a one-minute data resolution, and the alarm might often lapse into INSUFFICENT_DATA status. Specifying 10 or 30 also sets this alarm as a high-resolution alarm, which has a higher charge than other alarms. For more information about pricing, see <a href=\"https://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p> <p>An alarm's total current evaluation period can be no longer than one day, so <code>Period</code> multiplied by <code>EvaluationPeriods</code> cannot be more than 86,400 seconds.</p>"
        },
        "Unit": {
          "shape": "StandardUnit",
          "documentation": "<p>The unit of measure for the statistic. For example, the units for the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance receives on all network interfaces. You can also specify a unit when you create a custom metric. Units help provide conceptual meaning to your data. Metric data points that specify a unit of measure, such as Percent, are aggregated separately.</p> <p>If you don't specify <code>Unit</code>, CloudWatch retrieves all unit types that have been published for the metric and attempts to evaluate the alarm. Usually, metrics are published with only one unit, so the alarm works as intended.</p> <p>However, if the metric is published with multiple types of units and you don't specify a unit, the alarm's behavior is not defined and it behaves predictably.</p> <p>We recommend omitting <code>Unit</code> so that you don't inadvertently specify an incorrect unit that is not published for this metric. Doing so causes the alarm to be stuck in the <code>INSUFFICIENT DATA</code> state.</p>"
        },
        "EvaluationPeriods": {
          "shape": "EvaluationPeriods",
          "documentation": "<p>The number of periods over which data is compared to the specified threshold. If you are setting an alarm that requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an \"M out of N\" alarm, this value is the N.</p> <p>An alarm's total current evaluation period can be no longer than one day, so this number multiplied by <code>Period</code> cannot be more than 86,400 seconds.</p>"
        },
        "DatapointsToAlarm": {
          "shape": "DatapointsToAlarm",
          "documentation": "<p>The number of data points that must be breaching to trigger the alarm. This is used only if you are setting an \"M out of N\" alarm. In that case, this value is the M. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation\">Evaluating an Alarm</a> in the <i>Amazon CloudWatch User Guide</i>.</p>"
        },
        "Threshold": {
          "shape": "Threshold",
          "documentation": "<p>The value against which the specified statistic is compared.</p> <p>This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.</p>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperator",
          "documentation": "<p> The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p> <p>The values <code>LessThanLowerOrGreaterThanUpperThreshold</code>, <code>LessThanLowerThreshold</code>, and <code>GreaterThanUpperThreshold</code> are used only for alarms based on anomaly detection models.</p>"
        },
        "TreatMissingData": {
          "shape": "TreatMissingData",
          "documentation": "<p> Sets how this alarm is to handle missing data points. If <code>TreatMissingData</code> is omitted, the default behavior of <code>missing</code> is used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data\">Configuring How CloudWatch Alarms Treats Missing Data</a>.</p> <p>Valid Values: <code>breaching | notBreaching | ignore | missing</code> </p>"
        },
        "EvaluateLowSampleCountPercentile": {
          "shape": "EvaluateLowSampleCountPercentile",
          "documentation": "<p> Used only for alarms based on percentiles. If you specify <code>ignore</code>, the alarm state does not change during periods with too few data points to be statistically significant. If you specify <code>evaluate</code> or omit this parameter, the alarm is always evaluated and possibly changes state no matter how many data points are available. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples\">Percentile-Based CloudWatch Alarms and Low Data Samples</a>.</p> <p>Valid Values: <code>evaluate | ignore</code> </p>"
        },
        "Metrics": {
          "shape": "MetricDataQueries",
          "documentation": "<p>An array of <code>MetricDataQuery</code> structures that enable you to create an alarm based on the result of a metric math expression. For each <code>PutMetricAlarm</code> operation, you must specify either <code>MetricName</code> or a <code>Metrics</code> array.</p> <p>Each item in the <code>Metrics</code> array either retrieves a metric or performs a math expression.</p> <p>One item in the <code>Metrics</code> array is the expression that the alarm watches. You designate this expression by setting <code>ReturnValue</code> to true for this object in the array. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html\">MetricDataQuery</a>.</p> <p>If you use the <code>Metrics</code> parameter, you cannot include the <code>MetricName</code>, <code>Dimensions</code>, <code>Period</code>, <code>Namespace</code>, <code>Statistic</code>, or <code>ExtendedStatistic</code> parameters of <code>PutMetricAlarm</code> in the same operation. Instead, you retrieve the metrics you are using in your math expression as part of the <code>Metrics</code> array.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of key-value pairs to associate with the alarm. You can associate as many as 50 tags with an alarm.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p>"
        },
        "ThresholdMetricId": {
          "shape": "MetricId",
          "documentation": "<p>If this is an alarm based on an anomaly detection model, make this value match the ID of the <code>ANOMALY_DETECTION_BAND</code> function.</p> <p>For an example of how to use this parameter, see the <b>Anomaly Detection Model Alarm</b> example on this page.</p> <p>If your alarm uses this parameter, it cannot have Auto Scaling actions.</p>"
        }
      }
    },
    "PutMetricDataInput": {
      "type": "structure",
      "required": [
        "Namespace",
        "MetricData"
      ],
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace for the metric data.</p> <p>To avoid conflicts with AWS service namespaces, you should not specify a namespace that begins with <code>AWS/</code> </p>"
        },
        "MetricData": {
          "shape": "MetricData",
          "documentation": "<p>The data for the metric. The array can include no more than 20 metrics per call.</p>"
        }
      }
    },
    "Range": {
      "type": "structure",
      "required": [
        "StartTime",
        "EndTime"
      ],
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the range to exclude. The format is <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, <code>2019-07-01T23:59:59</code>.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end time of the range to exclude. The format is <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example, <code>2019-07-01T23:59:59</code>.</p>"
        }
      },
      "documentation": "<p>Specifies one range of days or times to exclude from use for training an anomaly detection model.</p>",
      "xmlOrder": [
        "StartTime",
        "EndTime"
      ]
    },
    "RecentlyActive": {
      "type": "string",
      "enum": [
        "PT3H"
      ]
    },
    "ResourceList": {
      "type": "list",
      "member": {
        "shape": "ResourceName"
      },
      "max": 5
    },
    "ResourceName": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ReturnData": {
      "type": "boolean"
    },
    "ScanBy": {
      "type": "string",
      "enum": [
        "TimestampDescending",
        "TimestampAscending"
      ]
    },
    "SetAlarmStateInput": {
      "type": "structure",
      "required": [
        "AlarmName",
        "StateValue",
        "StateReason"
      ],
      "members": {
        "AlarmName": {
          "shape": "AlarmName",
          "documentation": "<p>The name of the alarm.</p>"
        },
        "StateValue": {
          "shape": "StateValue",
          "documentation": "<p>The value of the state.</p>"
        },
        "StateReason": {
          "shape": "StateReason",
          "documentation": "<p>The reason that this alarm is set to this specific state, in text format.</p>"
        },
        "StateReasonData": {
          "shape": "StateReasonData",
          "documentation": "<p>The reason that this alarm is set to this specific state, in JSON format.</p> <p>For SNS or EC2 alarm actions, this is just informational. But for EC2 Auto Scaling or application Auto Scaling alarm actions, the Auto Scaling policy uses the information in this field to take the correct action.</p>"
        }
      }
    },
    "Size": {
      "type": "long"
    },
    "StandardUnit": {
      "type": "string",
      "enum": [
        "Seconds",
        "Microseconds",
        "Milliseconds",
        "Bytes",
        "Kilobytes",
        "Megabytes",
        "Gigabytes",
        "Terabytes",
        "Bits",
        "Kilobits",
        "Megabits",
        "Gigabits",
        "Terabits",
        "Percent",
        "Count",
        "Bytes/Second",
        "Kilobytes/Second",
        "Megabytes/Second",
        "Gigabytes/Second",
        "Terabytes/Second",
        "Bits/Second",
        "Kilobits/Second",
        "Megabits/Second",
        "Gigabits/Second",
        "Terabits/Second",
        "Count/Second",
        "None"
      ]
    },
    "Stat": {
      "type": "string"
    },
    "StateReason": {
      "type": "string",
      "max": 1023,
      "min": 0
    },
    "StateReasonData": {
      "type": "string",
      "max": 4000,
      "min": 0
    },
    "StateValue": {
      "type": "string",
      "enum": [
        "OK",
        "ALARM",
        "INSUFFICIENT_DATA"
      ]
    },
    "Statistic": {
      "type": "string",
      "enum": [
        "SampleCount",
        "Average",
        "Sum",
        "Minimum",
        "Maximum"
      ]
    },
    "StatisticSet": {
      "type": "structure",
      "required": [
        "SampleCount",
        "Sum",
        "Minimum",
        "Maximum"
      ],
      "members": {
        "SampleCount": {
          "shape": "DatapointValue",
          "documentation": "<p>The number of samples used for the statistic set.</p>"
        },
        "Sum": {
          "shape": "DatapointValue",
          "documentation": "<p>The sum of values for the sample set.</p>"
        },
        "Minimum": {
          "shape": "DatapointValue",
          "documentation": "<p>The minimum value of the sample set.</p>"
        },
        "Maximum": {
          "shape": "DatapointValue",
          "documentation": "<p>The maximum value of the sample set.</p>"
        }
      },
      "documentation": "<p>Represents a set of statistics that describes a specific metric. </p>"
    },
    "Statistics": {
      "type": "list",
      "member": {
        "shape": "Statistic"
      },
      "max": 5,
      "min": 1
    },
    "StatusCode": {
      "type": "string",
      "enum": [
        "Complete",
        "InternalError",
        "PartialData"
      ]
    },
    "StorageResolution": {
      "type": "integer",
      "min": 1
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>A string that you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value for the specified tag key.</p>"
        }
      },
      "documentation": "<p>A key-value pair associated with a CloudWatch resource.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the CloudWatch resource that you're adding tags to.</p> <p>The ARN format of an alarm is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i> </code> </p> <p>The ARN format of a Contributor Insights rule is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule:<i>insight-rule-name</i> </code> </p> <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies\"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of key-value pairs to associate with the alarm.</p>"
        }
      }
    },
    "TagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Threshold": {
      "type": "double"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Timestamps": {
      "type": "list",
      "member": {
        "shape": "Timestamp"
      }
    },
    "TreatMissingData": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the CloudWatch resource that you're removing tags from.</p> <p>The ARN format of an alarm is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i> </code> </p> <p>The ARN format of a Contributor Insights rule is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule:<i>insight-rule-name</i> </code> </p> <p>For more information about ARN format, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies\"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of tag keys to remove from the resource.</p>"
        }
      }
    },
    "UntagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "Values": {
      "type": "list",
      "member": {
        "shape": "DatapointValue"
      }
    }
  },
  "documentation": "<p>Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are the variables you want to measure for your resources and applications.</p> <p>CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2 instances. Then, use this data to determine whether you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.</p> <p>In addition to monitoring the built-in metrics that come with AWS, you can monitor your own custom metrics. With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health.</p>"
}
]===]))
