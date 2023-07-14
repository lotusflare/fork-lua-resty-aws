local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-07-18",
    "endpointPrefix": "codeguru-profiler",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon CodeGuru Profiler",
    "serviceId": "CodeGuruProfiler",
    "signatureVersion": "v4",
    "signingName": "codeguru-profiler",
    "uid": "codeguruprofiler-2019-07-18"
  },
  "operations": {
    "AddNotificationChannels": {
      "name": "AddNotificationChannels",
      "http": {
        "method": "POST",
        "requestUri": "/profilingGroups/{profilingGroupName}/notificationConfiguration",
        "responseCode": 200
      },
      "input": {
        "shape": "AddNotificationChannelsRequest"
      },
      "output": {
        "shape": "AddNotificationChannelsResponse"
      },
      "errors": [
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Add up to 2 anomaly notifications channels for a profiling group.</p>"
    },
    "BatchGetFrameMetricData": {
      "name": "BatchGetFrameMetricData",
      "http": {
        "method": "POST",
        "requestUri": "/profilingGroups/{profilingGroupName}/frames/-/metrics",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchGetFrameMetricDataRequest"
      },
      "output": {
        "shape": "BatchGetFrameMetricDataResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns the time series of values for a requested list of frame metrics from a time period.</p>"
    },
    "ConfigureAgent": {
      "name": "ConfigureAgent",
      "http": {
        "method": "POST",
        "requestUri": "/profilingGroups/{profilingGroupName}/configureAgent",
        "responseCode": 200
      },
      "input": {
        "shape": "ConfigureAgentRequest"
      },
      "output": {
        "shape": "ConfigureAgentResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Used by profiler agents to report their current state and to receive remote configuration updates. For example, <code>ConfigureAgent</code> can be used to tell and agent whether to profile or not and for how long to return profiling data. </p>"
    },
    "CreateProfilingGroup": {
      "name": "CreateProfilingGroup",
      "http": {
        "method": "POST",
        "requestUri": "/profilingGroups",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateProfilingGroupRequest"
      },
      "output": {
        "shape": "CreateProfilingGroupResponse"
      },
      "errors": [
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Creates a profiling group.</p>",
      "idempotent": true
    },
    "DeleteProfilingGroup": {
      "name": "DeleteProfilingGroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/profilingGroups/{profilingGroupName}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteProfilingGroupRequest"
      },
      "output": {
        "shape": "DeleteProfilingGroupResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a profiling group.</p>",
      "idempotent": true
    },
    "DescribeProfilingGroup": {
      "name": "DescribeProfilingGroup",
      "http": {
        "method": "GET",
        "requestUri": "/profilingGroups/{profilingGroupName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeProfilingGroupRequest"
      },
      "output": {
        "shape": "DescribeProfilingGroupResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns a <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> object that contains information about the requested profiling group. </p>"
    },
    "GetFindingsReportAccountSummary": {
      "name": "GetFindingsReportAccountSummary",
      "http": {
        "method": "GET",
        "requestUri": "/internal/findingsReports",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFindingsReportAccountSummaryRequest"
      },
      "output": {
        "shape": "GetFindingsReportAccountSummaryResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html\"> <code>FindingsReportSummary</code> </a> objects that contain analysis results for all profiling groups in your AWS account. </p>"
    },
    "GetNotificationConfiguration": {
      "name": "GetNotificationConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/profilingGroups/{profilingGroupName}/notificationConfiguration",
        "responseCode": 200
      },
      "input": {
        "shape": "GetNotificationConfigurationRequest"
      },
      "output": {
        "shape": "GetNotificationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Get the current configuration for anomaly notifications for a profiling group.</p>"
    },
    "GetPolicy": {
      "name": "GetPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/profilingGroups/{profilingGroupName}/policy",
        "responseCode": 200
      },
      "input": {
        "shape": "GetPolicyRequest"
      },
      "output": {
        "shape": "GetPolicyResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns the JSON-formatted resource-based policy on a profiling group. </p>"
    },
    "GetProfile": {
      "name": "GetProfile",
      "http": {
        "method": "GET",
        "requestUri": "/profilingGroups/{profilingGroupName}/profile",
        "responseCode": 200
      },
      "input": {
        "shape": "GetProfileRequest"
      },
      "output": {
        "shape": "GetProfileResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Gets the aggregated profile of a profiling group for a specified time range. Amazon CodeGuru Profiler collects posted agent profiles for a profiling group into aggregated profiles. </p> <pre><code> &lt;note&gt; &lt;p&gt; Because aggregated profiles expire over time &lt;code&gt;GetProfile&lt;/code&gt; is not idempotent. &lt;/p&gt; &lt;/note&gt; &lt;p&gt; Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: &lt;code&gt;startTime&lt;/code&gt;, &lt;code&gt;endTime&lt;/code&gt;, &lt;code&gt;period&lt;/code&gt;. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only &lt;code&gt;period&lt;/code&gt;, the latest aggregated profile is returned. &lt;/p&gt; &lt;p&gt; Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html&quot;&gt; &lt;code&gt;AggregatedProfileTime&lt;/code&gt; &lt;/a&gt;. The aggregated profile's aggregation period determines how long it is retained by CodeGuru Profiler. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 hour, the aggregated profile is retained for 60 days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 day, the aggregated profile is retained for 3 years. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;There are two use cases for calling &lt;code&gt;GetProfile&lt;/code&gt;.&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt; If you want to return an aggregated profile that already exists, use &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html&quot;&gt; &lt;code&gt;ListProfileTimes&lt;/code&gt; &lt;/a&gt; to view the time ranges of existing aggregated profiles. Use them in a &lt;code&gt;GetProfile&lt;/code&gt; request to return a specific, existing aggregated profile. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. &lt;/p&gt; &lt;p&gt; If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. &lt;/p&gt; &lt;/li&gt; &lt;/ol&gt; </code></pre>"
    },
    "GetRecommendations": {
      "name": "GetRecommendations",
      "http": {
        "method": "GET",
        "requestUri": "/internal/profilingGroups/{profilingGroupName}/recommendations",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRecommendationsRequest"
      },
      "output": {
        "shape": "GetRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html\"> <code>Recommendation</code> </a> objects that contain recommendations for a profiling group for a given time period. A list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html\"> <code>Anomaly</code> </a> objects that contains details about anomalies detected in the profiling group for the same time period is also returned. </p>"
    },
    "ListFindingsReports": {
      "name": "ListFindingsReports",
      "http": {
        "method": "GET",
        "requestUri": "/internal/profilingGroups/{profilingGroupName}/findingsReports",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFindingsReportsRequest"
      },
      "output": {
        "shape": "ListFindingsReportsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>List the available reports for a given profiling group and time range.</p>"
    },
    "ListProfileTimes": {
      "name": "ListProfileTimes",
      "http": {
        "method": "GET",
        "requestUri": "/profilingGroups/{profilingGroupName}/profileTimes",
        "responseCode": 200
      },
      "input": {
        "shape": "ListProfileTimesRequest"
      },
      "output": {
        "shape": "ListProfileTimesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the start times of the available aggregated profiles of a profiling group for an aggregation period within the specified time range.</p>"
    },
    "ListProfilingGroups": {
      "name": "ListProfilingGroups",
      "http": {
        "method": "GET",
        "requestUri": "/profilingGroups",
        "responseCode": 200
      },
      "input": {
        "shape": "ListProfilingGroupsRequest"
      },
      "output": {
        "shape": "ListProfilingGroupsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns a list of profiling groups. The profiling groups are returned as <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> objects. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Returns a list of the tags that are assigned to a specified resource. </p>"
    },
    "PostAgentProfile": {
      "name": "PostAgentProfile",
      "http": {
        "method": "POST",
        "requestUri": "/profilingGroups/{profilingGroupName}/agentProfile",
        "responseCode": 204
      },
      "input": {
        "shape": "PostAgentProfileRequest"
      },
      "output": {
        "shape": "PostAgentProfileResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Submits profiling data to an aggregated profile of a profiling group. To get an aggregated profile that is created with this profiling data, use <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_GetProfile.html\"> <code>GetProfile</code> </a>. </p>"
    },
    "PutPermission": {
      "name": "PutPermission",
      "http": {
        "method": "PUT",
        "requestUri": "/profilingGroups/{profilingGroupName}/policy/{actionGroup}",
        "responseCode": 200
      },
      "input": {
        "shape": "PutPermissionRequest"
      },
      "output": {
        "shape": "PutPermissionResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Adds permissions to a profiling group's resource-based policy that are provided using an action group. If a profiling group doesn't have a resource-based policy, one is created for it using the permissions in the action group and the roles and users in the <code>principals</code> parameter. </p> <pre><code> &lt;p&gt; The one supported action group that can be added is &lt;code&gt;agentPermission&lt;/code&gt; which grants &lt;code&gt;ConfigureAgent&lt;/code&gt; and &lt;code&gt;PostAgent&lt;/code&gt; permissions. For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html&quot;&gt;Resource-based policies in CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru Profiler User Guide&lt;/i&gt;, &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html&quot;&gt; &lt;code&gt;ConfigureAgent&lt;/code&gt; &lt;/a&gt;, and &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html&quot;&gt; &lt;code&gt;PostAgentProfile&lt;/code&gt; &lt;/a&gt;. &lt;/p&gt; &lt;p&gt; The first time you call &lt;code&gt;PutPermission&lt;/code&gt; on a profiling group, do not specify a &lt;code&gt;revisionId&lt;/code&gt; because it doesn't have a resource-based policy. Subsequent calls must provide a &lt;code&gt;revisionId&lt;/code&gt; to specify which revision of the resource-based policy to add the permissions to. &lt;/p&gt; &lt;p&gt; The response contains the profiling group's JSON-formatted resource policy. &lt;/p&gt; </code></pre>",
      "idempotent": true
    },
    "RemoveNotificationChannel": {
      "name": "RemoveNotificationChannel",
      "http": {
        "method": "DELETE",
        "requestUri": "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}",
        "responseCode": 200
      },
      "input": {
        "shape": "RemoveNotificationChannelRequest"
      },
      "output": {
        "shape": "RemoveNotificationChannelResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Remove one anomaly notifications channel for a profiling group.</p>",
      "idempotent": true
    },
    "RemovePermission": {
      "name": "RemovePermission",
      "http": {
        "method": "DELETE",
        "requestUri": "/profilingGroups/{profilingGroupName}/policy/{actionGroup}",
        "responseCode": 200
      },
      "input": {
        "shape": "RemovePermissionRequest"
      },
      "output": {
        "shape": "RemovePermissionResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Removes permissions from a profiling group's resource-based policy that are provided using an action group. The one supported action group that can be removed is <code>agentPermission</code> which grants <code>ConfigureAgent</code> and <code>PostAgent</code> permissions. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-ug/resource-based-policies.html\">Resource-based policies in CodeGuru Profiler</a> in the <i>Amazon CodeGuru Profiler User Guide</i>, <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html\"> <code>ConfigureAgent</code> </a>, and <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_PostAgentProfile.html\"> <code>PostAgentProfile</code> </a>. </p>"
    },
    "SubmitFeedback": {
      "name": "SubmitFeedback",
      "http": {
        "method": "POST",
        "requestUri": "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback",
        "responseCode": 204
      },
      "input": {
        "shape": "SubmitFeedbackRequest"
      },
      "output": {
        "shape": "SubmitFeedbackResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Sends feedback to CodeGuru Profiler about whether the anomaly detected by the analysis is useful or not.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Use to assign one or more tags to a resource. </p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p> Use to remove one or more tags from a resource. </p>",
      "idempotent": true
    },
    "UpdateProfilingGroup": {
      "name": "UpdateProfilingGroup",
      "http": {
        "method": "PUT",
        "requestUri": "/profilingGroups/{profilingGroupName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateProfilingGroupRequest"
      },
      "output": {
        "shape": "UpdateProfilingGroupResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a profiling group.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "ActionGroup": {
      "type": "string",
      "enum": [
        "agentPermissions"
      ]
    },
    "AddNotificationChannelsRequest": {
      "type": "structure",
      "required": [
        "channels",
        "profilingGroupName"
      ],
      "members": {
        "channels": {
          "shape": "Channels",
          "documentation": "<p>One or 2 channels to report to when anomalies are detected.</p>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group that we are setting up notifications for.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the AddNotificationChannelsRequest.</p>"
    },
    "AddNotificationChannelsResponse": {
      "type": "structure",
      "members": {
        "notificationConfiguration": {
          "shape": "NotificationConfiguration",
          "documentation": "<p>The new notification configuration for this profiling group.</p>"
        }
      },
      "documentation": "<p>The structure representing the AddNotificationChannelsResponse.</p>"
    },
    "AgentConfiguration": {
      "type": "structure",
      "required": [
        "periodInSeconds",
        "shouldProfile"
      ],
      "members": {
        "agentParameters": {
          "shape": "AgentParameters",
          "documentation": "<p> Parameters used by the profiler. The valid parameters are: </p> <ul> <li> <p> <code>MaxStackDepth</code> - The maximum depth of the stacks in the code that is represented in the profile. For example, if CodeGuru Profiler finds a method <code>A</code>, which calls method <code>B</code>, which calls method <code>C</code>, which calls method <code>D</code>, then the depth is 4. If the <code>maxDepth</code> is set to 2, then the profiler evaluates <code>A</code> and <code>B</code>. </p> </li> <li> <p> <code>MemoryUsageLimitPercent</code> - The percentage of memory that is used by the profiler.</p> </li> <li> <p> <code>MinimumTimeForReportingInMilliseconds</code> - The minimum time in milliseconds between sending reports. </p> </li> <li> <p> <code>ReportingIntervalInMilliseconds</code> - The reporting interval in milliseconds used to report profiles. </p> </li> <li> <p> <code>SamplingIntervalInMilliseconds</code> - The sampling interval in milliseconds that is used to profile samples. </p> </li> </ul>"
        },
        "periodInSeconds": {
          "shape": "Integer",
          "documentation": "<p> How long a profiling agent should send profiling data using <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html\"> <code>ConfigureAgent</code> </a>. For example, if this is set to 300, the profiling agent calls <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html\"> <code>ConfigureAgent</code> </a> every 5 minutes to submit the profiled data collected during that period. </p>"
        },
        "shouldProfile": {
          "shape": "Boolean",
          "documentation": "<p> A <code>Boolean</code> that specifies whether the profiling agent collects profiling data or not. Set to <code>true</code> to enable profiling. </p>"
        }
      },
      "documentation": "<p> The response of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html\"> <code>ConfigureAgent</code> </a> that specifies if an agent profiles or not and for how long to return profiling data. </p>"
    },
    "AgentOrchestrationConfig": {
      "type": "structure",
      "required": [
        "profilingEnabled"
      ],
      "members": {
        "profilingEnabled": {
          "shape": "Boolean",
          "documentation": "<p> A <code>Boolean</code> that specifies whether the profiling agent collects profiling data or not. Set to <code>true</code> to enable profiling. </p>"
        }
      },
      "documentation": "<p> Specifies whether profiling is enabled or disabled for a profiling group. It is used by <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ConfigureAgent.html\"> <code>ConfigureAgent</code> </a> to enable or disable profiling for a profiling group. </p>"
    },
    "AgentParameterField": {
      "type": "string",
      "enum": [
        "MaxStackDepth",
        "MemoryUsageLimitPercent",
        "MinimumTimeForReportingInMilliseconds",
        "ReportingIntervalInMilliseconds",
        "SamplingIntervalInMilliseconds"
      ]
    },
    "AgentParameters": {
      "type": "map",
      "key": {
        "shape": "AgentParameterField"
      },
      "value": {
        "shape": "String"
      }
    },
    "AgentProfile": {
      "type": "blob"
    },
    "AggregatedProfile": {
      "type": "blob"
    },
    "AggregatedProfileTime": {
      "type": "structure",
      "members": {
        "period": {
          "shape": "AggregationPeriod",
          "documentation": "<p> The aggregation period. This indicates the period during which an aggregation profile collects posted agent profiles for a profiling group. Use one of three valid durations that are specified using the ISO 8601 format. </p> <ul> <li> <p> <code>P1D</code> — 1 day </p> </li> <li> <p> <code>PT1H</code> — 1 hour </p> </li> <li> <p> <code>PT5M</code> — 5 minutes </p> </li> </ul>"
        },
        "start": {
          "shape": "Timestamp",
          "documentation": "<p> The time that aggregation of posted agent profiles for a profiling group starts. The aggregation profile contains profiles posted by the agent starting at this time for an aggregation period specified by the <code>period</code> property of the <code>AggregatedProfileTime</code> object. </p> <p> Specify <code>start</code> using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        }
      },
      "documentation": "<p> Specifies the aggregation period and aggregation start time for an aggregated profile. An aggregated profile is used to collect posted agent profiles during an aggregation period. There are three possible aggregation periods (1 day, 1 hour, or 5 minutes). </p>"
    },
    "AggregationPeriod": {
      "type": "string",
      "enum": [
        "P1D",
        "PT1H",
        "PT5M"
      ]
    },
    "Anomalies": {
      "type": "list",
      "member": {
        "shape": "Anomaly"
      }
    },
    "Anomaly": {
      "type": "structure",
      "required": [
        "instances",
        "metric",
        "reason"
      ],
      "members": {
        "instances": {
          "shape": "AnomalyInstances",
          "documentation": "<p> A list of the instances of the detected anomalies during the requested period. </p>"
        },
        "metric": {
          "shape": "Metric",
          "documentation": "<p> Details about the metric that the analysis used when it detected the anomaly. The metric includes the name of the frame that was analyzed with the type and thread states used to derive the metric value for that frame. </p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>The reason for which metric was flagged as anomalous.</p>"
        }
      },
      "documentation": "<p> Details about an anomaly in a specific metric of application profile. The anomaly is detected using analysis of the metric data over a period of time. </p>"
    },
    "AnomalyInstance": {
      "type": "structure",
      "required": [
        "id",
        "startTime"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the period during which the metric is flagged as anomalous. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "id": {
          "shape": "String",
          "documentation": "<p> The universally unique identifier (UUID) of an instance of an anomaly in a metric. </p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p> The start time of the period during which the metric is flagged as anomalous. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "userFeedback": {
          "shape": "UserFeedback",
          "documentation": "<p>Feedback type on a specific instance of anomaly submitted by the user.</p>"
        }
      },
      "documentation": "<p>The specific duration in which the metric is flagged as anomalous.</p>"
    },
    "AnomalyInstanceId": {
      "type": "string",
      "pattern": "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
    },
    "AnomalyInstances": {
      "type": "list",
      "member": {
        "shape": "AnomalyInstance"
      }
    },
    "BatchGetFrameMetricDataRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the time period for the returned time series values. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>",
          "location": "querystring",
          "locationName": "endTime"
        },
        "frameMetrics": {
          "shape": "FrameMetrics",
          "documentation": "<p> The details of the metrics that are used to request a time series of values. The metric includes the name of the frame, the aggregation type to calculate the metric value for the frame, and the thread states to use to get the count for the metric value of the frame.</p>"
        },
        "period": {
          "shape": "Period",
          "documentation": "<p> The duration of the frame metrics used to return the time series values. Specify using the ISO 8601 format. The maximum period duration is one day (<code>PT24H</code> or <code>P1D</code>). </p>",
          "location": "querystring",
          "locationName": "period"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p> The name of the profiling group associated with the the frame metrics used to return the time series values. </p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p> The start time of the time period for the frame metrics used to return the time series values. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>",
          "location": "querystring",
          "locationName": "startTime"
        },
        "targetResolution": {
          "shape": "AggregationPeriod",
          "documentation": "<p>The requested resolution of time steps for the returned time series of values. If the requested target resolution is not available due to data not being retained we provide a best effort result by falling back to the most granular available resolution after the target resolution. There are 3 valid values. </p> <ul> <li> <p> <code>P1D</code> — 1 day </p> </li> <li> <p> <code>PT1H</code> — 1 hour </p> </li> <li> <p> <code>PT5M</code> — 5 minutes </p> </li> </ul>",
          "location": "querystring",
          "locationName": "targetResolution"
        }
      },
      "documentation": "<p>The structure representing the BatchGetFrameMetricDataRequest.</p>"
    },
    "BatchGetFrameMetricDataResponse": {
      "type": "structure",
      "required": [
        "endTime",
        "endTimes",
        "frameMetricData",
        "resolution",
        "startTime",
        "unprocessedEndTimes"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the time period for the returned time series values. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "endTimes": {
          "shape": "ListOfTimestamps",
          "documentation": "<p> List of instances, or time steps, in the time series. For example, if the <code>period</code> is one day (<code>PT24H)</code>), and the <code>resolution</code> is five minutes (<code>PT5M</code>), then there are 288 <code>endTimes</code> in the list that are each five minutes appart. </p>"
        },
        "frameMetricData": {
          "shape": "FrameMetricData",
          "documentation": "<p>Details of the metrics to request a time series of values. The metric includes the name of the frame, the aggregation type to calculate the metric value for the frame, and the thread states to use to get the count for the metric value of the frame.</p>"
        },
        "resolution": {
          "shape": "AggregationPeriod",
          "documentation": "<p>Resolution or granularity of the profile data used to generate the time series. This is the value used to jump through time steps in a time series. There are 3 valid values. </p> <ul> <li> <p> <code>P1D</code> — 1 day </p> </li> <li> <p> <code>PT1H</code> — 1 hour </p> </li> <li> <p> <code>PT5M</code> — 5 minutes </p> </li> </ul>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p> The start time of the time period for the returned time series values. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "unprocessedEndTimes": {
          "shape": "UnprocessedEndTimeMap",
          "documentation": "<p>List of instances which remained unprocessed. This will create a missing time step in the list of end times.</p>"
        }
      },
      "documentation": "<p>The structure representing the BatchGetFrameMetricDataResponse.</p>"
    },
    "Boolean": {
      "type": "boolean",
      "box": true
    },
    "Channel": {
      "type": "structure",
      "required": [
        "eventPublishers",
        "uri"
      ],
      "members": {
        "eventPublishers": {
          "shape": "EventPublishers",
          "documentation": "<p>List of publishers for different type of events that may be detected in an application from the profile. Anomaly detection is the only event publisher in Profiler.</p>"
        },
        "id": {
          "shape": "ChannelId",
          "documentation": "<p>Unique identifier for each <code>Channel</code> in the notification configuration of a Profiling Group. A random UUID for channelId is used when adding a channel to the notification configuration if not specified in the request.</p>"
        },
        "uri": {
          "shape": "ChannelUri",
          "documentation": "<p>Unique arn of the resource to be used for notifications. We support a valid SNS topic arn as a channel uri.</p>"
        }
      },
      "documentation": "<p>Notification medium for users to get alerted for events that occur in application profile. We support SNS topic as a notification channel.</p>"
    },
    "ChannelId": {
      "type": "string",
      "pattern": "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
    },
    "ChannelUri": {
      "type": "string",
      "documentation": "<p>Channel URI uniquely identifies a Notification Channel. TopicArn is the uri for an SNS channel, emailId is uri for an email channel etc. Currently we only support SNS channels and thus required to be an ARN</p>"
    },
    "Channels": {
      "type": "list",
      "member": {
        "shape": "Channel"
      },
      "max": 2,
      "min": 1
    },
    "ClientToken": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[\\w-]+$"
    },
    "ComputePlatform": {
      "type": "string",
      "enum": [
        "AWSLambda",
        "Default"
      ]
    },
    "ConfigureAgentRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "fleetInstanceId": {
          "shape": "FleetInstanceId",
          "documentation": "<p> A universally unique identifier (UUID) for a profiling instance. For example, if the profiling instance is an Amazon EC2 instance, it is the instance ID. If it is an AWS Fargate container, it is the container's task ID. </p>"
        },
        "metadata": {
          "shape": "Metadata",
          "documentation": "<p> Metadata captured about the compute platform the agent is running on. It includes information about sampling and reporting. The valid fields are:</p> <ul> <li> <p> <code>COMPUTE_PLATFORM</code> - The compute platform on which the agent is running </p> </li> <li> <p> <code>AGENT_ID</code> - The ID for an agent instance. </p> </li> <li> <p> <code>AWS_REQUEST_ID</code> - The AWS request ID of a Lambda invocation. </p> </li> <li> <p> <code>EXECUTION_ENVIRONMENT</code> - The execution environment a Lambda function is running on. </p> </li> <li> <p> <code>LAMBDA_FUNCTION_ARN</code> - The Amazon Resource Name (ARN) that is used to invoke a Lambda function. </p> </li> <li> <p> <code>LAMBDA_MEMORY_LIMIT_IN_MB</code> - The memory allocated to a Lambda function. </p> </li> <li> <p> <code>LAMBDA_REMAINING_TIME_IN_MILLISECONDS</code> - The time in milliseconds before execution of a Lambda function times out. </p> </li> <li> <p> <code>LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS</code> - The time in milliseconds between two invocations of a Lambda function. </p> </li> <li> <p> <code>LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS</code> - The time in milliseconds for the previous Lambda invocation. </p> </li> </ul>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p> The name of the profiling group for which the configured agent is collecting profiling data. </p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the configureAgentRequest.</p>"
    },
    "ConfigureAgentResponse": {
      "type": "structure",
      "required": [
        "configuration"
      ],
      "members": {
        "configuration": {
          "shape": "AgentConfiguration",
          "documentation": "<p> An <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentConfiguration.html\"> <code>AgentConfiguration</code> </a> object that specifies if an agent profiles or not and for how long to return profiling data. </p>"
        }
      },
      "documentation": "<p>The structure representing the configureAgentResponse.</p>",
      "payload": "configuration"
    },
    "CreateProfilingGroupRequest": {
      "type": "structure",
      "required": [
        "clientToken",
        "profilingGroupName"
      ],
      "members": {
        "agentOrchestrationConfig": {
          "shape": "AgentOrchestrationConfig",
          "documentation": "<p> Specifies whether profiling is enabled or disabled for the created profiling group. </p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the accidental creation of duplicate profiling groups if there are failures and retries. </p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p> The compute platform of the profiling group. Use <code>AWSLambda</code> if your application runs on AWS Lambda. Use <code>Default</code> if your application runs on a compute platform that is not AWS Lambda, such an Amazon EC2 instance, an on-premises server, or a different platform. If not specified, <code>Default</code> is used. </p>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group to create.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p> A list of tags to add to the created profiling group. </p>"
        }
      },
      "documentation": "<p>The structure representing the createProfiliingGroupRequest.</p>"
    },
    "CreateProfilingGroupResponse": {
      "type": "structure",
      "required": [
        "profilingGroup"
      ],
      "members": {
        "profilingGroup": {
          "shape": "ProfilingGroupDescription",
          "documentation": "<p> The returned <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> object that contains information about the created profiling group. </p>"
        }
      },
      "documentation": "<p>The structure representing the createProfilingGroupResponse.</p>",
      "payload": "profilingGroup"
    },
    "DeleteProfilingGroupRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group to delete.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the deleteProfilingGroupRequest.</p>"
    },
    "DeleteProfilingGroupResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The structure representing the deleteProfilingGroupResponse.</p>"
    },
    "DescribeProfilingGroupRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p> The name of the profiling group to get information about. </p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the describeProfilingGroupRequest.</p>"
    },
    "DescribeProfilingGroupResponse": {
      "type": "structure",
      "required": [
        "profilingGroup"
      ],
      "members": {
        "profilingGroup": {
          "shape": "ProfilingGroupDescription",
          "documentation": "<p> The returned <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> object that contains information about the requested profiling group. </p>"
        }
      },
      "documentation": "<p>The structure representing the describeProfilingGroupResponse.</p>",
      "payload": "profilingGroup"
    },
    "Double": {
      "type": "double",
      "box": true
    },
    "EventPublisher": {
      "type": "string",
      "enum": [
        "AnomalyDetection"
      ]
    },
    "EventPublishers": {
      "type": "list",
      "member": {
        "shape": "EventPublisher"
      },
      "max": 1,
      "min": 1
    },
    "FeedbackType": {
      "type": "string",
      "enum": [
        "Negative",
        "Positive"
      ]
    },
    "FindingsReportId": {
      "type": "string",
      "pattern": "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
    },
    "FindingsReportSummaries": {
      "type": "list",
      "member": {
        "shape": "FindingsReportSummary"
      }
    },
    "FindingsReportSummary": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "FindingsReportId",
          "documentation": "<p>The universally unique identifier (UUID) of the recommendation report.</p>"
        },
        "profileEndTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the period during which the metric is flagged as anomalous. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "profileStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the profile the analysis data is about. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>"
        },
        "profilingGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the profiling group that is associated with the analysis data.</p>"
        },
        "totalNumberOfFindings": {
          "shape": "Integer",
          "documentation": "<p>The total number of different recommendations that were found by the analysis.</p>"
        }
      },
      "documentation": "<p> Information about potential recommendations that might be created from the analysis of profiling data. </p>"
    },
    "FleetInstanceId": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "FrameMetric": {
      "type": "structure",
      "required": [
        "frameName",
        "threadStates",
        "type"
      ],
      "members": {
        "frameName": {
          "shape": "String",
          "documentation": "<p> Name of the method common across the multiple occurrences of a frame in an application profile.</p>"
        },
        "threadStates": {
          "shape": "ThreadStates",
          "documentation": "<p>List of application runtime thread states used to get the counts for a frame a derive a metric value.</p>"
        },
        "type": {
          "shape": "MetricType",
          "documentation": "<p> A type of aggregation that specifies how a metric for a frame is analyzed. The supported value <code>AggregatedRelativeTotalTime</code> is an aggregation of the metric value for one frame that is calculated across the occurrences of all frames in a profile. </p>"
        }
      },
      "documentation": "<p> The frame name, metric type, and thread states. These are used to derive the value of the metric for the frame.</p>"
    },
    "FrameMetricData": {
      "type": "list",
      "member": {
        "shape": "FrameMetricDatum"
      }
    },
    "FrameMetricDatum": {
      "type": "structure",
      "required": [
        "frameMetric",
        "values"
      ],
      "members": {
        "frameMetric": {
          "shape": "FrameMetric"
        },
        "values": {
          "shape": "FrameMetricValues",
          "documentation": "<p> A list of values that are associated with a frame metric. </p>"
        }
      },
      "documentation": "<p> Information about a frame metric and its values. </p>"
    },
    "FrameMetricValues": {
      "type": "list",
      "member": {
        "shape": "Double"
      }
    },
    "FrameMetrics": {
      "type": "list",
      "member": {
        "shape": "FrameMetric"
      }
    },
    "GetFindingsReportAccountSummaryRequest": {
      "type": "structure",
      "members": {
        "dailyReportsOnly": {
          "shape": "Boolean",
          "documentation": "<p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>, analysis data is returned from smaller time windows (for example, one hour).</p>",
          "location": "querystring",
          "locationName": "dailyReportsOnly"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results returned by <code> GetFindingsReportAccountSummary</code> in paginated output. When this parameter is used, <code>GetFindingsReportAccountSummary</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>GetFindingsReportAccountSummary</code> request with the returned <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>GetFindingsReportAccountSummary</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. </p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": "<p>The structure representing the GetFindingsReportAccountSummaryRequest.</p>"
    },
    "GetFindingsReportAccountSummaryResponse": {
      "type": "structure",
      "required": [
        "reportSummaries"
      ],
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>GetFindingsReportAccountSummary</code> request. When the results of a <code>GetFindingsReportAccountSummary</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        },
        "reportSummaries": {
          "shape": "FindingsReportSummaries",
          "documentation": "<p>The return list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_FindingsReportSummary.html\"> <code>FindingsReportSummary</code> </a> objects taht contain summaries of analysis results for all profiling groups in your AWS account.</p>"
        }
      },
      "documentation": "<p>The structure representing the GetFindingsReportAccountSummaryResponse.</p>"
    },
    "GetNotificationConfigurationRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group we want to get the notification configuration for.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the GetNotificationConfigurationRequest.</p>"
    },
    "GetNotificationConfigurationResponse": {
      "type": "structure",
      "required": [
        "notificationConfiguration"
      ],
      "members": {
        "notificationConfiguration": {
          "shape": "NotificationConfiguration",
          "documentation": "<p>The current notification configuration for this profiling group.</p>"
        }
      },
      "documentation": "<p>The structure representing the GetNotificationConfigurationResponse.</p>"
    },
    "GetPolicyRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p> The structure representing the <code>getPolicyRequest</code>. </p>"
    },
    "GetPolicyResponse": {
      "type": "structure",
      "required": [
        "policy",
        "revisionId"
      ],
      "members": {
        "policy": {
          "shape": "String",
          "documentation": "<p>The JSON-formatted resource-based policy attached to the <code>ProfilingGroup</code>.</p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p>A unique identifier for the current revision of the returned policy.</p>"
        }
      },
      "documentation": "<p>The structure representing the <code>getPolicyResponse</code>.</p>"
    },
    "GetProfileRequest": {
      "type": "structure",
      "required": [
        "profilingGroupName"
      ],
      "members": {
        "accept": {
          "shape": "String",
          "documentation": "<p> The format of the returned profiling data. The format maps to the <code>Accept</code> and <code>Content-Type</code> headers of the HTTP request. You can specify one of the following: or the default . </p> <pre><code> &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/json&lt;/code&gt; — standard JSON format &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/x-amzn-ion&lt;/code&gt; — the Amazon Ion data format. For more information, see &lt;a href=&quot;http://amzn.github.io/ion-docs/&quot;&gt;Amazon Ion&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; </code></pre>",
          "location": "header",
          "locationName": "Accept"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the requested profile. Specify using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p> <p> If you specify <code>endTime</code>, then you must also specify <code>period</code> or <code>startTime</code>, but not both. </p>",
          "location": "querystring",
          "locationName": "endTime"
        },
        "maxDepth": {
          "shape": "MaxDepth",
          "documentation": "<p> The maximum depth of the stacks in the code that is represented in the aggregated profile. For example, if CodeGuru Profiler finds a method <code>A</code>, which calls method <code>B</code>, which calls method <code>C</code>, which calls method <code>D</code>, then the depth is 4. If the <code>maxDepth</code> is set to 2, then the aggregated profile contains representations of methods <code>A</code> and <code>B</code>. </p>",
          "location": "querystring",
          "locationName": "maxDepth"
        },
        "period": {
          "shape": "Period",
          "documentation": "<p> Used with <code>startTime</code> or <code>endTime</code> to specify the time range for the returned aggregated profile. Specify using the ISO 8601 format. For example, <code>P1DT1H1M1S</code>. </p> <pre><code> &lt;p&gt; To get the latest aggregated profile, specify only &lt;code&gt;period&lt;/code&gt;. &lt;/p&gt; </code></pre>",
          "location": "querystring",
          "locationName": "period"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group to get.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the profile to get. Specify using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p> <pre><code> &lt;p&gt; If you specify &lt;code&gt;startTime&lt;/code&gt;, then you must also specify &lt;code&gt;period&lt;/code&gt; or &lt;code&gt;endTime&lt;/code&gt;, but not both. &lt;/p&gt; </code></pre>",
          "location": "querystring",
          "locationName": "startTime"
        }
      },
      "documentation": "<p>The structure representing the getProfileRequest.</p>"
    },
    "GetProfileResponse": {
      "type": "structure",
      "required": [
        "contentType",
        "profile"
      ],
      "members": {
        "contentEncoding": {
          "shape": "String",
          "documentation": "<p>The content encoding of the profile.</p>",
          "location": "header",
          "locationName": "Content-Encoding"
        },
        "contentType": {
          "shape": "String",
          "documentation": "<p>The content type of the profile in the payload. It is either <code>application/json</code> or the default <code>application/x-amzn-ion</code>.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "profile": {
          "shape": "AggregatedProfile",
          "documentation": "<p>Information about the profile.</p>"
        }
      },
      "documentation": "<p>The structure representing the getProfileResponse.</p>",
      "payload": "profile"
    },
    "GetRecommendationsRequest": {
      "type": "structure",
      "required": [
        "endTime",
        "profilingGroupName",
        "startTime"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p> The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>",
          "location": "querystring",
          "locationName": "endTime"
        },
        "locale": {
          "shape": "Locale",
          "documentation": "<p> The language used to provide analysis. Specify using a string that is one of the following <code>BCP 47</code> language codes. </p> <ul> <li> <p> <code>de-DE</code> - German, Germany </p> </li> <li> <p> <code>en-GB</code> - English, United Kingdom </p> </li> <li> <p> <code>en-US</code> - English, United States </p> </li> <li> <p> <code>es-ES</code> - Spanish, Spain </p> </li> <li> <p> <code>fr-FR</code> - French, France </p> </li> <li> <p> <code>it-IT</code> - Italian, Italy </p> </li> <li> <p> <code>ja-JP</code> - Japanese, Japan </p> </li> <li> <p> <code>ko-KR</code> - Korean, Republic of Korea </p> </li> <li> <p> <code>pt-BR</code> - Portugese, Brazil </p> </li> <li> <p> <code>zh-CN</code> - Chinese, China </p> </li> <li> <p> <code>zh-TW</code> - Chinese, Taiwan </p> </li> </ul>",
          "location": "querystring",
          "locationName": "locale"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p> The name of the profiling group to get analysis data about. </p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>",
          "location": "querystring",
          "locationName": "startTime"
        }
      },
      "documentation": "<p>The structure representing the GetRecommendationsRequest.</p>"
    },
    "GetRecommendationsResponse": {
      "type": "structure",
      "required": [
        "anomalies",
        "profileEndTime",
        "profileStartTime",
        "profilingGroupName",
        "recommendations"
      ],
      "members": {
        "anomalies": {
          "shape": "Anomalies",
          "documentation": "<p> The list of anomalies that the analysis has found for this profile. </p>"
        },
        "profileEndTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the profile the analysis data is about. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "profileStartTime": {
          "shape": "Timestamp",
          "documentation": "<p> The start time of the profile the analysis data is about. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group the analysis data is about.</p>"
        },
        "recommendations": {
          "shape": "Recommendations",
          "documentation": "<p>The list of recommendations that the analysis found for this profile.</p>"
        }
      },
      "documentation": "<p>The structure representing the GetRecommendationsResponse.</p>"
    },
    "Integer": {
      "type": "integer",
      "box": true
    },
    "ListFindingsReportsRequest": {
      "type": "structure",
      "required": [
        "endTime",
        "profilingGroupName",
        "startTime"
      ],
      "members": {
        "dailyReportsOnly": {
          "shape": "Boolean",
          "documentation": "<p>A <code>Boolean</code> value indicating whether to only return reports from daily profiles. If set to <code>True</code>, only analysis data from daily profiles is returned. If set to <code>False</code>, analysis data is returned from smaller time windows (for example, one hour).</p>",
          "location": "querystring",
          "locationName": "dailyReportsOnly"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p> The end time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>",
          "location": "querystring",
          "locationName": "endTime"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of report results returned by <code>ListFindingsReports</code> in paginated output. When this parameter is used, <code>ListFindingsReports</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListFindingsReports</code> request with the returned <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListFindingsReportsRequest</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. </p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group from which to search for analysis data.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p> The start time of the profile to get analysis data about. You must specify <code>startTime</code> and <code>endTime</code>. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>",
          "location": "querystring",
          "locationName": "startTime"
        }
      },
      "documentation": "<p>The structure representing the ListFindingsReportsRequest.</p>"
    },
    "ListFindingsReportsResponse": {
      "type": "structure",
      "required": [
        "findingsReportSummaries"
      ],
      "members": {
        "findingsReportSummaries": {
          "shape": "FindingsReportSummaries",
          "documentation": "<p>The list of analysis results summaries.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListFindingsReports</code> request. When the results of a <code>ListFindingsReports</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      },
      "documentation": "<p>The structure representing the ListFindingsReportsResponse.</p>"
    },
    "ListOfTimestamps": {
      "type": "list",
      "member": {
        "shape": "TimestampStructure"
      }
    },
    "ListProfileTimesRequest": {
      "type": "structure",
      "required": [
        "endTime",
        "period",
        "profilingGroupName",
        "startTime"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end time of the time range from which to list the profiles.</p>",
          "location": "querystring",
          "locationName": "endTime"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of profile time results returned by <code>ListProfileTimes</code> in paginated output. When this parameter is used, <code>ListProfileTimes</code> only returns <code>maxResults</code> results in a single page with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListProfileTimes</code> request with the returned <code>nextToken</code> value. </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListProfileTimes</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. </p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "orderBy": {
          "shape": "OrderBy",
          "documentation": "<p>The order (ascending or descending by start time of the profile) to use when listing profiles. Defaults to <code>TIMESTAMP_DESCENDING</code>. </p>",
          "location": "querystring",
          "locationName": "orderBy"
        },
        "period": {
          "shape": "AggregationPeriod",
          "documentation": "<p> The aggregation period. This specifies the period during which an aggregation profile collects posted agent profiles for a profiling group. There are 3 valid values. </p> <ul> <li> <p> <code>P1D</code> — 1 day </p> </li> <li> <p> <code>PT1H</code> — 1 hour </p> </li> <li> <p> <code>PT5M</code> — 5 minutes </p> </li> </ul>",
          "location": "querystring",
          "locationName": "period"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the time range from which to list the profiles.</p>",
          "location": "querystring",
          "locationName": "startTime"
        }
      },
      "documentation": "<p>The structure representing the listProfileTimesRequest.</p>"
    },
    "ListProfileTimesResponse": {
      "type": "structure",
      "required": [
        "profileTimes"
      ],
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListProfileTimes</code> request. When the results of a <code>ListProfileTimes</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        },
        "profileTimes": {
          "shape": "ProfileTimes",
          "documentation": "<p>The list of start times of the available profiles for the aggregation period in the specified time range. </p>"
        }
      },
      "documentation": "<p>The structure representing the listProfileTimesResponse.</p>"
    },
    "ListProfilingGroupsRequest": {
      "type": "structure",
      "members": {
        "includeDescription": {
          "shape": "Boolean",
          "documentation": "<p>A <code>Boolean</code> value indicating whether to include a description. If <code>true</code>, then a list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> objects that contain detailed information about profiling groups is returned. If <code>false</code>, then a list of profiling group names is returned.</p>",
          "location": "querystring",
          "locationName": "includeDescription"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of profiling groups results returned by <code>ListProfilingGroups</code> in paginated output. When this parameter is used, <code>ListProfilingGroups</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListProfilingGroups</code> request with the returned <code>nextToken</code> value. </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListProfilingGroups</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. </p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": "<p>The structure representing the listProfilingGroupsRequest.</p>"
    },
    "ListProfilingGroupsResponse": {
      "type": "structure",
      "required": [
        "profilingGroupNames"
      ],
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListProfilingGroups</code> request. When the results of a <code>ListProfilingGroups</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        },
        "profilingGroupNames": {
          "shape": "ProfilingGroupNames",
          "documentation": "<p> A returned list of profiling group names. A list of the names is returned only if <code>includeDescription</code> is <code>false</code>, otherwise a list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> objects is returned. </p>"
        },
        "profilingGroups": {
          "shape": "ProfilingGroupDescriptions",
          "documentation": "<p> A returned list <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> objects. A list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> objects is returned only if <code>includeDescription</code> is <code>true</code>, otherwise a list of profiling group names is returned. </p>"
        }
      },
      "documentation": "<p>The structure representing the listProfilingGroupsResponse.</p>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ProfilingGroupArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the resource that contains the tags to return. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p> The list of tags assigned to the specified resource. This is the list of tags returned in the response. </p>"
        }
      }
    },
    "Locale": {
      "type": "string",
      "documentation": "<p>BCP47 language code. Supported locales: de-DE, en-GB, en-US, es-ES, fr-FR, it-IT, ja-JP, ko-KR, pt-BR, zh-CN, zh-TW</p>"
    },
    "Match": {
      "type": "structure",
      "members": {
        "frameAddress": {
          "shape": "String",
          "documentation": "<p>The location in the profiling graph that contains a recommendation found during analysis.</p>"
        },
        "targetFramesIndex": {
          "shape": "Integer",
          "documentation": "<p>The target frame that triggered a match.</p>"
        },
        "thresholdBreachValue": {
          "shape": "Double",
          "documentation": "<p>The value in the profile data that exceeded the recommendation threshold.</p>"
        }
      },
      "documentation": "<p>The part of a profile that contains a recommendation found during analysis.</p>"
    },
    "Matches": {
      "type": "list",
      "member": {
        "shape": "Match"
      }
    },
    "MaxDepth": {
      "type": "integer",
      "box": true,
      "max": 10000,
      "min": 1
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 1000,
      "min": 1
    },
    "Metadata": {
      "type": "map",
      "key": {
        "shape": "MetadataField"
      },
      "value": {
        "shape": "String"
      }
    },
    "MetadataField": {
      "type": "string",
      "enum": [
        "AgentId",
        "AwsRequestId",
        "ComputePlatform",
        "ExecutionEnvironment",
        "LambdaFunctionArn",
        "LambdaMemoryLimitInMB",
        "LambdaPreviousExecutionTimeInMilliseconds",
        "LambdaRemainingTimeInMilliseconds",
        "LambdaTimeGapBetweenInvokesInMilliseconds"
      ]
    },
    "Metric": {
      "type": "structure",
      "required": [
        "frameName",
        "threadStates",
        "type"
      ],
      "members": {
        "frameName": {
          "shape": "String",
          "documentation": "<p> The name of the method that appears as a frame in any stack in a profile. </p>"
        },
        "threadStates": {
          "shape": "Strings",
          "documentation": "<p> The list of application runtime thread states that is used to calculate the metric value for the frame. </p>"
        },
        "type": {
          "shape": "MetricType",
          "documentation": "<p> A type that specifies how a metric for a frame is analyzed. The supported value <code>AggregatedRelativeTotalTime</code> is an aggregation of the metric value for one frame that is calculated across the occurences of all frames in a profile.</p>"
        }
      },
      "documentation": "<p> Details about the metric that the analysis used when it detected the anomaly. The metric what is analyzed to create recommendations. It includes the name of the frame that was analyzed and the type and thread states used to derive the metric value for that frame. </p>"
    },
    "MetricType": {
      "type": "string",
      "enum": [
        "AggregatedRelativeTotalTime"
      ]
    },
    "NotificationConfiguration": {
      "type": "structure",
      "members": {
        "channels": {
          "shape": "Channels",
          "documentation": "<p>List of up to two channels to be used for sending notifications for events detected from the application profile.</p>"
        }
      },
      "documentation": "<p>The configuration for notifications stored for each profiling group. This includes up to to two channels and a list of event publishers associated with each channel.</p>"
    },
    "OrderBy": {
      "type": "string",
      "enum": [
        "TimestampAscending",
        "TimestampDescending"
      ]
    },
    "PaginationToken": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[\\w-]+$"
    },
    "Pattern": {
      "type": "structure",
      "members": {
        "countersToAggregate": {
          "shape": "Strings",
          "documentation": "<p> A list of the different counters used to determine if there is a match. </p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The description of the recommendation. This explains a potential inefficiency in a profiled application.</p>"
        },
        "id": {
          "shape": "String",
          "documentation": "<p>The universally unique identifier (UUID) of this pattern.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The name for this pattern.</p>"
        },
        "resolutionSteps": {
          "shape": "String",
          "documentation": "<p> A string that contains the steps recommended to address the potential inefficiency. </p>"
        },
        "targetFrames": {
          "shape": "TargetFrames",
          "documentation": "<p>A list of frame names that were searched during the analysis that generated a recommendation.</p>"
        },
        "thresholdPercent": {
          "shape": "Percentage",
          "documentation": "<p> The percentage of time an application spends in one method that triggers a recommendation. The percentage of time is the same as the percentage of the total gathered sample counts during analysis. </p>"
        }
      },
      "documentation": "<p> A set of rules used to make a recommendation during an analysis. </p>"
    },
    "Percentage": {
      "type": "double",
      "max": 100,
      "min": 0
    },
    "Period": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "PostAgentProfileRequest": {
      "type": "structure",
      "required": [
        "agentProfile",
        "contentType",
        "profilingGroupName"
      ],
      "members": {
        "agentProfile": {
          "shape": "AgentProfile",
          "documentation": "<p> The submitted profiling data. </p>"
        },
        "contentType": {
          "shape": "String",
          "documentation": "<p> The format of the submitted profiling data. The format maps to the <code>Accept</code> and <code>Content-Type</code> headers of the HTTP request. You can specify one of the following: or the default . </p> <pre><code> &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/json&lt;/code&gt; — standard JSON format &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/x-amzn-ion&lt;/code&gt; — the Amazon Ion data format. For more information, see &lt;a href=&quot;http://amzn.github.io/ion-docs/&quot;&gt;Amazon Ion&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; </code></pre>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "profileToken": {
          "shape": "ClientToken",
          "documentation": "<p> Amazon CodeGuru Profiler uses this universally unique identifier (UUID) to prevent the accidental submission of duplicate profiling data if there are failures and retries. </p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "profileToken"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p> The name of the profiling group with the aggregated profile that receives the submitted profiling data. </p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the postAgentProfileRequest.</p>",
      "payload": "agentProfile"
    },
    "PostAgentProfileResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The structure representing the postAgentProfileResponse.</p>"
    },
    "Principal": {
      "type": "string"
    },
    "Principals": {
      "type": "list",
      "member": {
        "shape": "Principal"
      },
      "max": 50,
      "min": 1
    },
    "ProfileTime": {
      "type": "structure",
      "members": {
        "start": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of a profile. It is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>"
        }
      },
      "documentation": "<p> Contains the start time of a profile. </p>"
    },
    "ProfileTimes": {
      "type": "list",
      "member": {
        "shape": "ProfileTime"
      }
    },
    "ProfilingGroupArn": {
      "type": "string"
    },
    "ProfilingGroupDescription": {
      "type": "structure",
      "members": {
        "agentOrchestrationConfig": {
          "shape": "AgentOrchestrationConfig",
          "documentation": "<p> An <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AgentOrchestrationConfig.html\"> <code>AgentOrchestrationConfig</code> </a> object that indicates if the profiling group is enabled for profiled or not. </p>"
        },
        "arn": {
          "shape": "ProfilingGroupArn",
          "documentation": "<p>The Amazon Resource Name (ARN) identifying the profiling group resource.</p>"
        },
        "computePlatform": {
          "shape": "ComputePlatform",
          "documentation": "<p> The compute platform of the profiling group. If it is set to <code>AWSLambda</code>, then the profiled application runs on AWS Lambda. If it is set to <code>Default</code>, then the profiled application runs on a compute platform that is not AWS Lambda, such an Amazon EC2 instance, an on-premises server, or a different platform. The default is <code>Default</code>. </p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the profiling group was created. Specify using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        },
        "name": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group.</p>"
        },
        "profilingStatus": {
          "shape": "ProfilingStatus",
          "documentation": "<p> A <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingStatus.html\"> <code>ProfilingStatus</code> </a> object that includes information about the last time a profile agent pinged back, the last time a profile was received, and the aggregation period and start time for the most recent aggregated profile. </p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p> A list of the tags that belong to this profiling group. </p>"
        },
        "updatedAt": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time when the profiling group was last updated. Specify using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        }
      },
      "documentation": "<p> Contains information about a profiling group. </p>"
    },
    "ProfilingGroupDescriptions": {
      "type": "list",
      "member": {
        "shape": "ProfilingGroupDescription"
      }
    },
    "ProfilingGroupName": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^[\\w-]+$"
    },
    "ProfilingGroupNames": {
      "type": "list",
      "member": {
        "shape": "ProfilingGroupName"
      }
    },
    "ProfilingStatus": {
      "type": "structure",
      "members": {
        "latestAgentOrchestratedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the profiling agent most recently pinged back. Specify using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>"
        },
        "latestAgentProfileReportedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the most recent profile was received. Specify using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>"
        },
        "latestAggregatedProfile": {
          "shape": "AggregatedProfileTime",
          "documentation": "<p> An <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html\"> <code>AggregatedProfileTime</code> </a> object that contains the aggregation period and start time for an aggregated profile. </p>"
        }
      },
      "documentation": "<p> Profiling status includes information about the last time a profile agent pinged back, the last time a profile was received, and the aggregation period and start time for the most recent aggregated profile. </p>"
    },
    "PutPermissionRequest": {
      "type": "structure",
      "required": [
        "actionGroup",
        "principals",
        "profilingGroupName"
      ],
      "members": {
        "actionGroup": {
          "shape": "ActionGroup",
          "documentation": "<p> Specifies an action group that contains permissions to add to a profiling group resource. One action group is supported, <code>agentPermissions</code>, which grants permission to perform actions required by the profiling agent, <code>ConfigureAgent</code> and <code>PostAgentProfile</code> permissions. </p>",
          "location": "uri",
          "locationName": "actionGroup"
        },
        "principals": {
          "shape": "Principals",
          "documentation": "<p> A list ARNs for the roles and users you want to grant access to the profiling group. Wildcards are not are supported in the ARNs. </p>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group to grant access to.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p> A universally unique identifier (UUID) for the revision of the policy you are adding to the profiling group. Do not specify this when you add permissions to a profiling group for the first time. If a policy already exists on the profiling group, you must specify the <code>revisionId</code>. </p>"
        }
      },
      "documentation": "<p>The structure representing the <code>putPermissionRequest</code>.</p>"
    },
    "PutPermissionResponse": {
      "type": "structure",
      "required": [
        "policy",
        "revisionId"
      ],
      "members": {
        "policy": {
          "shape": "String",
          "documentation": "<p> The JSON-formatted resource-based policy on the profiling group that includes the added permissions. </p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p> A universally unique identifier (UUID) for the revision of the resource-based policy that includes the added permissions. The JSON-formatted policy is in the <code>policy</code> element of the response. </p>"
        }
      },
      "documentation": "<p>The structure representing the <code>putPermissionResponse</code>.</p>"
    },
    "Recommendation": {
      "type": "structure",
      "required": [
        "allMatchesCount",
        "allMatchesSum",
        "endTime",
        "pattern",
        "startTime",
        "topMatches"
      ],
      "members": {
        "allMatchesCount": {
          "shape": "Integer",
          "documentation": "<p>How many different places in the profile graph triggered a match.</p>"
        },
        "allMatchesSum": {
          "shape": "Double",
          "documentation": "<p>How much of the total sample count is potentially affected.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>End time of the profile that was used by this analysis. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>"
        },
        "pattern": {
          "shape": "Pattern",
          "documentation": "<p>The pattern that analysis recognized in the profile to make this recommendation.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the profile that was used by this analysis. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC.</p>"
        },
        "topMatches": {
          "shape": "Matches",
          "documentation": "<p>List of the matches with most impact. </p>"
        }
      },
      "documentation": "<p>A potential improvement that was found from analyzing the profiling data.</p>"
    },
    "Recommendations": {
      "type": "list",
      "member": {
        "shape": "Recommendation"
      }
    },
    "RemoveNotificationChannelRequest": {
      "type": "structure",
      "required": [
        "channelId",
        "profilingGroupName"
      ],
      "members": {
        "channelId": {
          "shape": "ChannelId",
          "documentation": "<p>The id of the channel that we want to stop receiving notifications.</p>",
          "location": "uri",
          "locationName": "channelId"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group we want to change notification configuration for.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the RemoveNotificationChannelRequest.</p>"
    },
    "RemoveNotificationChannelResponse": {
      "type": "structure",
      "members": {
        "notificationConfiguration": {
          "shape": "NotificationConfiguration",
          "documentation": "<p>The new notification configuration for this profiling group.</p>"
        }
      },
      "documentation": "<p>The structure representing the RemoveNotificationChannelResponse.</p>"
    },
    "RemovePermissionRequest": {
      "type": "structure",
      "required": [
        "actionGroup",
        "profilingGroupName",
        "revisionId"
      ],
      "members": {
        "actionGroup": {
          "shape": "ActionGroup",
          "documentation": "<p> Specifies an action group that contains the permissions to remove from a profiling group's resource-based policy. One action group is supported, <code>agentPermissions</code>, which grants <code>ConfigureAgent</code> and <code>PostAgentProfile</code> permissions. </p>",
          "location": "uri",
          "locationName": "actionGroup"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p> A universally unique identifier (UUID) for the revision of the resource-based policy from which you want to remove permissions. </p>",
          "location": "querystring",
          "locationName": "revisionId"
        }
      },
      "documentation": "<p> <pre><code> The structure representing the &lt;code&gt;removePermissionRequest&lt;/code&gt;.&lt;/p&gt; </code></pre>"
    },
    "RemovePermissionResponse": {
      "type": "structure",
      "required": [
        "policy",
        "revisionId"
      ],
      "members": {
        "policy": {
          "shape": "String",
          "documentation": "<p> The JSON-formatted resource-based policy on the profiling group after the specified permissions were removed. </p>"
        },
        "revisionId": {
          "shape": "RevisionId",
          "documentation": "<p> A universally unique identifier (UUID) for the revision of the resource-based policy after the specified permissions were removed. The updated JSON-formatted policy is in the <code>policy</code> element of the response. </p>"
        }
      },
      "documentation": "<p>The structure representing the <code>removePermissionResponse</code>.</p>"
    },
    "RevisionId": {
      "type": "string",
      "pattern": "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"
    },
    "String": {
      "type": "string"
    },
    "Strings": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SubmitFeedbackRequest": {
      "type": "structure",
      "required": [
        "anomalyInstanceId",
        "profilingGroupName",
        "type"
      ],
      "members": {
        "anomalyInstanceId": {
          "shape": "AnomalyInstanceId",
          "documentation": "<p>The universally unique identifier (UUID) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html\"> <code>AnomalyInstance</code> </a> object that is included in the analysis data.</p>",
          "location": "uri",
          "locationName": "anomalyInstanceId"
        },
        "comment": {
          "shape": "String",
          "documentation": "<p>Optional feedback about this anomaly.</p>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group that is associated with the analysis data.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        },
        "type": {
          "shape": "FeedbackType",
          "documentation": "<p> The feedback tpye. Thee are two valid values, <code>Positive</code> and <code>Negative</code>. </p>"
        }
      },
      "documentation": "<p>The structure representing the SubmitFeedbackRequest.</p>"
    },
    "SubmitFeedbackResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The structure representing the SubmitFeedbackResponse.</p>"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ProfilingGroupArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the resource that the tags are added to. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p> The list of tags that are added to the specified resource. </p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagsMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "TargetFrame": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "TargetFrames": {
      "type": "list",
      "member": {
        "shape": "TargetFrame"
      }
    },
    "ThreadStates": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Timestamp": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    },
    "TimestampStructure": {
      "type": "structure",
      "required": [
        "value"
      ],
      "members": {
        "value": {
          "shape": "Timestamp",
          "documentation": "<p> A <code>Timestamp</code>. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
        }
      },
      "documentation": "<p> A data type that contains a <code>Timestamp</code> object. This is specified using the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020 1:15:02 PM UTC. </p>"
    },
    "UnprocessedEndTimeMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "ListOfTimestamps"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ProfilingGroupArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the resource that contains the tags to remove. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeys",
          "documentation": "<p> A list of tag keys. Existing tags of resources with keys in this list are removed from the specified resource. </p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateProfilingGroupRequest": {
      "type": "structure",
      "required": [
        "agentOrchestrationConfig",
        "profilingGroupName"
      ],
      "members": {
        "agentOrchestrationConfig": {
          "shape": "AgentOrchestrationConfig",
          "documentation": "<p> Specifies whether profiling is enabled or disabled for a profiling group. </p>"
        },
        "profilingGroupName": {
          "shape": "ProfilingGroupName",
          "documentation": "<p>The name of the profiling group to update.</p>",
          "location": "uri",
          "locationName": "profilingGroupName"
        }
      },
      "documentation": "<p>The structure representing the updateProfilingGroupRequest.</p>"
    },
    "UpdateProfilingGroupResponse": {
      "type": "structure",
      "required": [
        "profilingGroup"
      ],
      "members": {
        "profilingGroup": {
          "shape": "ProfilingGroupDescription",
          "documentation": "<p> A <a href=\"https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html\"> <code>ProfilingGroupDescription</code> </a> that contains information about the returned updated profiling group. </p>"
        }
      },
      "documentation": "<p>The structure representing the updateProfilingGroupResponse.</p>",
      "payload": "profilingGroup"
    },
    "UserFeedback": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "FeedbackType",
          "documentation": "<p>Optional <code>Positive</code> or <code>Negative</code> feedback submitted by the user about whether the recommendation is useful or not.</p>"
        }
      },
      "documentation": "<p>Feedback that can be submitted for each instance of an anomaly by the user. Feedback is be used for improvements in generating recommendations for the application.</p>"
    }
  },
  "documentation": "<p>This section provides documentation for the Amazon CodeGuru Profiler API operations.</p> <pre><code> &lt;p&gt;Amazon CodeGuru Profiler collects runtime performance data from your live applications, and provides recommendations that can help you fine-tune your application performance. Using machine learning algorithms, CodeGuru Profiler can help you find your most expensive lines of code and suggest ways you can improve efficiency and remove CPU bottlenecks. &lt;/p&gt; &lt;p&gt;Amazon CodeGuru Profiler provides different visualizations of profiling data to help you identify what code is running on the CPU, see how much time is consumed, and suggest ways to reduce CPU utilization. &lt;/p&gt; &lt;note&gt; &lt;p&gt;Amazon CodeGuru Profiler currently supports applications written in all Java virtual machine (JVM) languages. While CodeGuru Profiler supports both visualizations and recommendations for applications written in Java, it can also generate visualizations and a subset of recommendations for applications written in other JVM languages.&lt;/p&gt; &lt;/note&gt; &lt;p&gt; For more information, see &lt;a href=&quot;https://docs.aws.amazon.com/codeguru/latest/profiler-ug/what-is-codeguru-profiler.html&quot;&gt;What is Amazon CodeGuru Profiler&lt;/a&gt; in the &lt;i&gt;Amazon CodeGuru Profiler User Guide&lt;/i&gt;. &lt;/p&gt; </code></pre>"
}
]===]))