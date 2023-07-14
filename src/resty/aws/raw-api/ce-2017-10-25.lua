local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-10-25",
    "endpointPrefix": "ce",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "AWS Cost Explorer",
    "serviceFullName": "AWS Cost Explorer Service",
    "serviceId": "Cost Explorer",
    "signatureVersion": "v4",
    "signingName": "ce",
    "targetPrefix": "AWSInsightsIndexService",
    "uid": "ce-2017-10-25"
  },
  "operations": {
    "CreateCostCategoryDefinition": {
      "name": "CreateCostCategoryDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCostCategoryDefinitionRequest"
      },
      "output": {
        "shape": "CreateCostCategoryDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a new Cost Category with the requested name and rules.</p>"
    },
    "DeleteCostCategoryDefinition": {
      "name": "DeleteCostCategoryDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCostCategoryDefinitionRequest"
      },
      "output": {
        "shape": "DeleteCostCategoryDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Deletes a Cost Category. Expenses from this month going forward will no longer be categorized with this Cost Category.</p>"
    },
    "DescribeCostCategoryDefinition": {
      "name": "DescribeCostCategoryDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCostCategoryDefinitionRequest"
      },
      "output": {
        "shape": "DescribeCostCategoryDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Returns the name, ARN, rules, definition, and effective dates of a Cost Category that's defined in the account.</p> <p>You have the option to use <code>EffectiveOn</code> to return a Cost Category that is active on a specific date. If there is no <code>EffectiveOn</code> specified, you’ll see a Cost Category that is effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code> is omitted in the response. </p>"
    },
    "GetCostAndUsage": {
      "name": "GetCostAndUsage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCostAndUsageRequest"
      },
      "output": {
        "shape": "GetCostAndUsageResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BillExpirationException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "RequestChangedException"
        }
      ],
      "documentation": "<p>Retrieves cost and usage metrics for your account. You can specify which cost and usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that you want the request to return. You can also filter and group your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list of valid dimensions, see the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html\">GetDimensionValues</a> operation. Master accounts in an organization in AWS Organizations have access to all member accounts.</p>"
    },
    "GetCostAndUsageWithResources": {
      "name": "GetCostAndUsageWithResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCostAndUsageWithResourcesRequest"
      },
      "output": {
        "shape": "GetCostAndUsageWithResourcesResponse"
      },
      "errors": [
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BillExpirationException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "RequestChangedException"
        }
      ],
      "documentation": "<p>Retrieves cost and usage metrics with resources for your account. You can specify which cost and usage-related metric, such as <code>BlendedCosts</code> or <code>UsageQuantity</code>, that you want the request to return. You can also filter and group your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific time range. For a complete list of valid dimensions, see the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html\">GetDimensionValues</a> operation. Master accounts in an organization in AWS Organizations have access to all member accounts. This API is currently available for the Amazon Elastic Compute Cloud – Compute service only.</p> <note> <p>This is an opt-in only feature. You can enable this feature from the Cost Explorer Settings page. For information on how to access the Settings page, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html\">Controlling Access for Cost Explorer</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </note>"
    },
    "GetCostForecast": {
      "name": "GetCostForecast",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCostForecastRequest"
      },
      "output": {
        "shape": "GetCostForecastResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        }
      ],
      "documentation": "<p>Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs. </p>"
    },
    "GetDimensionValues": {
      "name": "GetDimensionValues",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDimensionValuesRequest"
      },
      "output": {
        "shape": "GetDimensionValuesResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BillExpirationException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "RequestChangedException"
        }
      ],
      "documentation": "<p>Retrieves all available filter values for a specified filter over a period of time. You can search the dimension values for an arbitrary string. </p>"
    },
    "GetReservationCoverage": {
      "name": "GetReservationCoverage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetReservationCoverageRequest"
      },
      "output": {
        "shape": "GetReservationCoverageResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Retrieves the reservation coverage for your account. This enables you to see how much of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service, or Amazon Redshift usage is covered by a reservation. An organization's master account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data about reservation usage by the following dimensions:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>SERVICE</p> </li> <li> <p>TAG</p> </li> <li> <p>TENANCY</p> </li> </ul> <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation. </p>"
    },
    "GetReservationPurchaseRecommendation": {
      "name": "GetReservationPurchaseRecommendation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetReservationPurchaseRecommendationRequest"
      },
      "output": {
        "shape": "GetReservationPurchaseRecommendationResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Gets recommendations for which reservations to purchase. These recommendations could help you reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to On-Demand pricing.</p> <p>AWS generates your recommendations by identifying your On-Demand usage during a specific time period and collecting your usage into categories that are eligible for a reservation. After AWS has these categories, it simulates every combination of reservations in each category of usage to identify the best number of each type of RI to purchase to maximize your estimated savings. </p> <p>For example, AWS automatically aggregates your Amazon EC2 Linux, shared tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy size-flexible regional reservations to apply to the c4 family usage. AWS recommends the smallest size instance in an instance family. This makes it easier to purchase a size-flexible RI. AWS also shows the equal number of normalized units so that you can purchase any instance size that you want. For this example, your RI recommendation would be for <code>c4.large</code> because that is the smallest size instance in the c4 instance family.</p>"
    },
    "GetReservationUtilization": {
      "name": "GetReservationUtilization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetReservationUtilizationRequest"
      },
      "output": {
        "shape": "GetReservationUtilizationResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Retrieves the reservation utilization for your account. Master accounts in an organization have access to member accounts. You can filter data by dimensions in a time period. You can use <code>GetDimensionValues</code> to determine the possible dimension values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>. </p>"
    },
    "GetRightsizingRecommendation": {
      "name": "GetRightsizingRecommendation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRightsizingRecommendationRequest"
      },
      "output": {
        "shape": "GetRightsizingRecommendationResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Creates recommendations that help you save cost by identifying idle and underutilized Amazon EC2 instances.</p> <p>Recommendations are generated to either downsize or terminate instances, along with providing savings detail and metrics. For details on calculation and function, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html\">Optimizing Your Cost with Rightsizing Recommendations</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>"
    },
    "GetSavingsPlansCoverage": {
      "name": "GetSavingsPlansCoverage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSavingsPlansCoverageRequest"
      },
      "output": {
        "shape": "GetSavingsPlansCoverageResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Retrieves the Savings Plans covered for your account. This enables you to see how much of your cost is covered by a Savings Plan. An organization’s master account can see the coverage of the associated member accounts. This supports dimensions, Cost Categories, and nested expressions. For any time period, you can filter data for Savings Plans usage with the following dimensions:</p> <ul> <li> <p> <code>LINKED_ACCOUNT</code> </p> </li> <li> <p> <code>REGION</code> </p> </li> <li> <p> <code>SERVICE</code> </p> </li> <li> <p> <code>INSTANCE_FAMILY</code> </p> </li> </ul> <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code> operation.</p>"
    },
    "GetSavingsPlansPurchaseRecommendation": {
      "name": "GetSavingsPlansPurchaseRecommendation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSavingsPlansPurchaseRecommendationRequest"
      },
      "output": {
        "shape": "GetSavingsPlansPurchaseRecommendationResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Retrieves your request parameters, Savings Plan Recommendations Summary and Details. </p>"
    },
    "GetSavingsPlansUtilization": {
      "name": "GetSavingsPlansUtilization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSavingsPlansUtilizationRequest"
      },
      "output": {
        "shape": "GetSavingsPlansUtilizationResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        }
      ],
      "documentation": "<p>Retrieves the Savings Plans utilization for your account across date ranges with daily or monthly granularity. Master accounts in an organization have access to member accounts. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p> <note> <p>You cannot group by any dimension values for <code>GetSavingsPlansUtilization</code>.</p> </note>"
    },
    "GetSavingsPlansUtilizationDetails": {
      "name": "GetSavingsPlansUtilizationDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSavingsPlansUtilizationDetailsRequest"
      },
      "output": {
        "shape": "GetSavingsPlansUtilizationDetailsResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Retrieves attribute data along with aggregate utilization and savings data for a given time period. This doesn't support granular or grouped data (daily/monthly) in response. You can't retrieve data by dates in a single response similar to <code>GetSavingsPlanUtilization</code>, but you have the option to make multiple calls to <code>GetSavingsPlanUtilizationDetails</code> by providing individual dates. You can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible dimension values.</p> <note> <p> <code>GetSavingsPlanUtilizationDetails</code> internally groups data by <code>SavingsPlansArn</code>.</p> </note>"
    },
    "GetTags": {
      "name": "GetTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTagsRequest"
      },
      "output": {
        "shape": "GetTagsResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "BillExpirationException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "RequestChangedException"
        }
      ],
      "documentation": "<p>Queries for available tag keys and tag values for a specified period. You can search the tag values for an arbitrary string. </p>"
    },
    "GetUsageForecast": {
      "name": "GetUsageForecast",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetUsageForecastRequest"
      },
      "output": {
        "shape": "GetUsageForecastResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "DataUnavailableException"
        },
        {
          "shape": "UnresolvableUsageUnitException"
        }
      ],
      "documentation": "<p>Retrieves a forecast for how much Amazon Web Services predicts that you will use over the forecast time period that you select, based on your past usage. </p>"
    },
    "ListCostCategoryDefinitions": {
      "name": "ListCostCategoryDefinitions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCostCategoryDefinitionsRequest"
      },
      "output": {
        "shape": "ListCostCategoryDefinitionsResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Returns the name, ARN, <code>NumberOfRules</code> and effective dates of all Cost Categories defined in the account. You have the option to use <code>EffectiveOn</code> to return a list of Cost Categories that were active on a specific date. If there is no <code>EffectiveOn</code> specified, you’ll see Cost Categories that are effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code> is omitted in the response. <code>ListCostCategoryDefinitions</code> supports pagination. The request can have a <code>MaxResults</code> range up to 100.</p>"
    },
    "UpdateCostCategoryDefinition": {
      "name": "UpdateCostCategoryDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCostCategoryDefinitionRequest"
      },
      "output": {
        "shape": "UpdateCostCategoryDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Updates an existing Cost Category. Changes made to the Cost Category rules will be used to categorize the current month’s expenses and future expenses. This won’t change categorization for the previous months.</p>"
    }
  },
  "shapes": {
    "AccountScope": {
      "type": "string",
      "enum": [
        "PAYER",
        "LINKED"
      ]
    },
    "AmortizedRecurringFee": {
      "type": "string"
    },
    "AmortizedUpfrontFee": {
      "type": "string"
    },
    "Arn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+"
    },
    "AttributeType": {
      "type": "string"
    },
    "AttributeValue": {
      "type": "string"
    },
    "Attributes": {
      "type": "map",
      "key": {
        "shape": "AttributeType"
      },
      "value": {
        "shape": "AttributeValue"
      }
    },
    "Context": {
      "type": "string",
      "enum": [
        "COST_AND_USAGE",
        "RESERVATIONS",
        "SAVINGS_PLANS"
      ]
    },
    "CostCategory": {
      "type": "structure",
      "required": [
        "CostCategoryArn",
        "EffectiveStart",
        "Name",
        "RuleVersion",
        "Rules"
      ],
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your Cost Category. </p>"
        },
        "EffectiveStart": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The Cost Category's effective start date.</p>"
        },
        "EffectiveEnd": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The Cost Category's effective end date.</p>"
        },
        "Name": {
          "shape": "CostCategoryName"
        },
        "RuleVersion": {
          "shape": "CostCategoryRuleVersion"
        },
        "Rules": {
          "shape": "CostCategoryRulesList",
          "documentation": "<p> Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value. </p>"
        }
      },
      "documentation": "<p>The structure of Cost Categories. This includes detailed metadata and the set of rules for the <code>CostCategory</code> object.</p>"
    },
    "CostCategoryMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "CostCategoryName": {
      "type": "string",
      "documentation": "<p>The unique name of the Cost Category.</p>",
      "max": 255,
      "min": 1,
      "pattern": "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"
    },
    "CostCategoryReference": {
      "type": "structure",
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your Cost Category. </p>"
        },
        "Name": {
          "shape": "CostCategoryName"
        },
        "EffectiveStart": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The Cost Category's effective start date.</p>"
        },
        "EffectiveEnd": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The Cost Category's effective end date.</p>"
        },
        "NumberOfRules": {
          "shape": "NonNegativeInteger",
          "documentation": "<p> The number of rules associated with a specific Cost Category. </p>"
        }
      },
      "documentation": "<p>A reference to a Cost Category containing only enough information to identify the Cost Category.</p> <p>You can use this information to retrieve the full Cost Category information using <code>DescribeCostCategory</code>.</p>"
    },
    "CostCategoryReferencesList": {
      "type": "list",
      "member": {
        "shape": "CostCategoryReference"
      }
    },
    "CostCategoryRule": {
      "type": "structure",
      "required": [
        "Value",
        "Rule"
      ],
      "members": {
        "Value": {
          "shape": "CostCategoryValue"
        },
        "Rule": {
          "shape": "Expression",
          "documentation": "<p>An <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object used to categorize costs. This supports dimensions, Tags, and nested expressions. Currently the only dimensions supported are <code>LINKED_ACCOUNT</code>, <code>SERVICE_CODE</code>, <code>RECORD_TYPE</code>, and <code>LINKED_ACCOUNT_NAME</code>.</p> <p>Root level <code>OR</code> is not supported. We recommend that you create a separate rule instead.</p> <p> <code>RECORD_TYPE</code> is a dimension used for Cost Explorer APIs, and is also supported for Cost Category expressions. This dimension uses different terms, depending on whether you're using the console or API/JSON editor. For a detailed comparison, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-cost-categories.html#cost-categories-terms\">Term Comparisons</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.</p>"
    },
    "CostCategoryRuleVersion": {
      "type": "string",
      "documentation": "<p>The rule schema version in this particular Cost Category.</p>",
      "enum": [
        "CostCategoryExpression.v1"
      ]
    },
    "CostCategoryRulesList": {
      "type": "list",
      "member": {
        "shape": "CostCategoryRule"
      },
      "max": 500,
      "min": 1
    },
    "CostCategoryValue": {
      "type": "string",
      "documentation": "<p>The value a line item will be categorized as, if it matches the rule.</p>",
      "max": 255,
      "min": 1,
      "pattern": "^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$"
    },
    "CostCategoryValues": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "CostCategoryName"
        },
        "Values": {
          "shape": "Values",
          "documentation": "<p>The specific value of the Cost Category.</p>"
        }
      },
      "documentation": "<p>The Cost Categories values used for filtering the costs.</p>"
    },
    "Coverage": {
      "type": "structure",
      "members": {
        "CoverageHours": {
          "shape": "CoverageHours",
          "documentation": "<p>The amount of instance usage that the reservation covered, in hours.</p>"
        },
        "CoverageNormalizedUnits": {
          "shape": "CoverageNormalizedUnits",
          "documentation": "<p>The amount of instance usage that the reservation covered, in normalized units.</p>"
        },
        "CoverageCost": {
          "shape": "CoverageCost",
          "documentation": "<p>The amount of cost that the reservation covered.</p>"
        }
      },
      "documentation": "<p>The amount of instance usage that a reservation covered.</p>"
    },
    "CoverageByTime": {
      "type": "structure",
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The period that this coverage was used over.</p>"
        },
        "Groups": {
          "shape": "ReservationCoverageGroups",
          "documentation": "<p>The groups of instances that the reservation covered.</p>"
        },
        "Total": {
          "shape": "Coverage",
          "documentation": "<p>The total reservation coverage, in hours.</p>"
        }
      },
      "documentation": "<p>Reservation coverage for a specified period, in hours.</p>"
    },
    "CoverageCost": {
      "type": "structure",
      "members": {
        "OnDemandCost": {
          "shape": "OnDemandCost",
          "documentation": "<p>How much an On-Demand Instance costs.</p>"
        }
      },
      "documentation": "<p>How much it costs to run an instance.</p>"
    },
    "CoverageHours": {
      "type": "structure",
      "members": {
        "OnDemandHours": {
          "shape": "OnDemandHours",
          "documentation": "<p>The number of instance running hours that On-Demand Instances covered.</p>"
        },
        "ReservedHours": {
          "shape": "ReservedHours",
          "documentation": "<p>The number of instance running hours that reservations covered.</p>"
        },
        "TotalRunningHours": {
          "shape": "TotalRunningHours",
          "documentation": "<p>The total instance usage, in hours.</p>"
        },
        "CoverageHoursPercentage": {
          "shape": "CoverageHoursPercentage",
          "documentation": "<p>The percentage of instance hours that a reservation covered.</p>"
        }
      },
      "documentation": "<p>How long a running instance either used a reservation or was On-Demand.</p>"
    },
    "CoverageHoursPercentage": {
      "type": "string"
    },
    "CoverageNormalizedUnits": {
      "type": "structure",
      "members": {
        "OnDemandNormalizedUnits": {
          "shape": "OnDemandNormalizedUnits",
          "documentation": "<p>The number of normalized units that are covered by On-Demand Instances instead of a reservation.</p>"
        },
        "ReservedNormalizedUnits": {
          "shape": "ReservedNormalizedUnits",
          "documentation": "<p>The number of normalized units that a reservation covers.</p>"
        },
        "TotalRunningNormalizedUnits": {
          "shape": "TotalRunningNormalizedUnits",
          "documentation": "<p>The total number of normalized units that you used.</p>"
        },
        "CoverageNormalizedUnitsPercentage": {
          "shape": "CoverageNormalizedUnitsPercentage",
          "documentation": "<p>The percentage of your used instance normalized units that a reservation covers.</p>"
        }
      },
      "documentation": "<p>The amount of instance usage, in normalized units. Normalized units enable you to see your EC2 usage for multiple sizes of instances in a uniform way. For example, suppose you run an xlarge instance and a 2xlarge instance. If you run both instances for the same amount of time, the 2xlarge instance uses twice as much of your reservation as the xlarge instance, even though both instances show only one instance-hour. Using normalized units instead of instance-hours, the xlarge instance used 8 normalized units, and the 2xlarge instance used 16 normalized units.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html\">Modifying Reserved Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>.</p>"
    },
    "CoverageNormalizedUnitsPercentage": {
      "type": "string"
    },
    "CoveragesByTime": {
      "type": "list",
      "member": {
        "shape": "CoverageByTime"
      }
    },
    "CreateCostCategoryDefinitionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RuleVersion",
        "Rules"
      ],
      "members": {
        "Name": {
          "shape": "CostCategoryName"
        },
        "RuleVersion": {
          "shape": "CostCategoryRuleVersion"
        },
        "Rules": {
          "shape": "CostCategoryRulesList",
          "documentation": "<p>The Cost Category rules used to categorize costs. For more information, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html\">CostCategoryRule</a>.</p>"
        }
      }
    },
    "CreateCostCategoryDefinitionResponse": {
      "type": "structure",
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your newly created Cost Category. </p>"
        },
        "EffectiveStart": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The Cost Category's effective start date. </p>"
        }
      }
    },
    "CurrentInstance": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "GenericString",
          "documentation": "<p>Resource ID of the current instance.</p>"
        },
        "InstanceName": {
          "shape": "GenericString",
          "documentation": "<p>The name you've given an instance. This field will show as blank if you haven't given the instance a name.</p>"
        },
        "Tags": {
          "shape": "TagValuesList",
          "documentation": "<p>Cost allocation resource tags applied to the instance.</p>"
        },
        "ResourceDetails": {
          "shape": "ResourceDetails",
          "documentation": "<p> Details about the resource and utilization.</p>"
        },
        "ResourceUtilization": {
          "shape": "ResourceUtilization",
          "documentation": "<p> Utilization information of the current instance during the lookback period.</p>"
        },
        "ReservationCoveredHoursInLookbackPeriod": {
          "shape": "GenericString",
          "documentation": "<p> Number of hours during the lookback period covered by reservations.</p>"
        },
        "SavingsPlansCoveredHoursInLookbackPeriod": {
          "shape": "GenericString",
          "documentation": "<p>Number of hours during the lookback period covered by Savings Plans.</p>"
        },
        "OnDemandHoursInLookbackPeriod": {
          "shape": "GenericString",
          "documentation": "<p> Number of hours during the lookback period billed at On Demand rates.</p>"
        },
        "TotalRunningHoursInLookbackPeriod": {
          "shape": "GenericString",
          "documentation": "<p> The total number of hours the instance ran during the lookback period.</p>"
        },
        "MonthlyCost": {
          "shape": "GenericString",
          "documentation": "<p> Current On Demand cost of operating this instance on a monthly basis.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p> The currency code that Amazon Web Services used to calculate the costs for this instance.</p>"
        }
      },
      "documentation": "<p>Context about the current instance.</p>"
    },
    "DateInterval": {
      "type": "structure",
      "required": [
        "Start",
        "End"
      ],
      "members": {
        "Start": {
          "shape": "YearMonthDay",
          "documentation": "<p>The beginning of the time period that you want the usage and costs for. The start date is inclusive. For example, if <code>start</code> is <code>2017-01-01</code>, AWS retrieves cost and usage data starting at <code>2017-01-01</code> up to the end date.</p>"
        },
        "End": {
          "shape": "YearMonthDay",
          "documentation": "<p>The end of the time period that you want the usage and costs for. The end date is exclusive. For example, if <code>end</code> is <code>2017-05-01</code>, AWS retrieves cost and usage data from the start date up to, but not including, <code>2017-05-01</code>.</p>"
        }
      },
      "documentation": "<p>The time period that you want the usage and costs for. </p>"
    },
    "DeleteCostCategoryDefinitionRequest": {
      "type": "structure",
      "required": [
        "CostCategoryArn"
      ],
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your Cost Category. </p>"
        }
      }
    },
    "DeleteCostCategoryDefinitionResponse": {
      "type": "structure",
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your Cost Category. </p>"
        },
        "EffectiveEnd": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The effective end date of the Cost Category as a result of deleting it. No costs after this date will be categorized by the deleted Cost Category. </p>"
        }
      }
    },
    "DescribeCostCategoryDefinitionRequest": {
      "type": "structure",
      "required": [
        "CostCategoryArn"
      ],
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your Cost Category. </p>"
        },
        "EffectiveOn": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The date when the Cost Category was effective. </p>"
        }
      }
    },
    "DescribeCostCategoryDefinitionResponse": {
      "type": "structure",
      "members": {
        "CostCategory": {
          "shape": "CostCategory"
        }
      }
    },
    "Dimension": {
      "type": "string",
      "enum": [
        "AZ",
        "INSTANCE_TYPE",
        "LINKED_ACCOUNT",
        "LINKED_ACCOUNT_NAME",
        "OPERATION",
        "PURCHASE_TYPE",
        "REGION",
        "SERVICE",
        "SERVICE_CODE",
        "USAGE_TYPE",
        "USAGE_TYPE_GROUP",
        "RECORD_TYPE",
        "OPERATING_SYSTEM",
        "TENANCY",
        "SCOPE",
        "PLATFORM",
        "SUBSCRIPTION_ID",
        "LEGAL_ENTITY_NAME",
        "DEPLOYMENT_OPTION",
        "DATABASE_ENGINE",
        "CACHE_ENGINE",
        "INSTANCE_TYPE_FAMILY",
        "BILLING_ENTITY",
        "RESERVATION_ID",
        "RESOURCE_ID",
        "RIGHTSIZING_TYPE",
        "SAVINGS_PLANS_TYPE",
        "SAVINGS_PLAN_ARN",
        "PAYMENT_OPTION"
      ]
    },
    "DimensionValues": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "Dimension",
          "documentation": "<p>The names of the metadata types that you can use to filter and group your results. For example, <code>AZ</code> returns a list of Availability Zones.</p>"
        },
        "Values": {
          "shape": "Values",
          "documentation": "<p>The metadata values that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>"
        },
        "MatchOptions": {
          "shape": "MatchOptions",
          "documentation": "<p>The match options that you can use to filter your results. <code>MatchOptions</code> is only applicable for actions related to Cost Category. The default values for <code>MatchOptions</code> is <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>"
        }
      },
      "documentation": "<p>The metadata that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>"
    },
    "DimensionValuesWithAttributes": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "Value",
          "documentation": "<p>The value of a dimension with a specific attribute.</p>"
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attribute that applies to a specific <code>Dimension</code>.</p>"
        }
      },
      "documentation": "<p>The metadata of a specific type that you can use to filter and group your results. You can use <code>GetDimensionValues</code> to find specific values.</p>"
    },
    "DimensionValuesWithAttributesList": {
      "type": "list",
      "member": {
        "shape": "DimensionValuesWithAttributes"
      }
    },
    "EC2InstanceDetails": {
      "type": "structure",
      "members": {
        "Family": {
          "shape": "GenericString",
          "documentation": "<p>The instance family of the recommended reservation.</p>"
        },
        "InstanceType": {
          "shape": "GenericString",
          "documentation": "<p>The type of instance that AWS recommends.</p>"
        },
        "Region": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Region of the recommended reservation.</p>"
        },
        "AvailabilityZone": {
          "shape": "GenericString",
          "documentation": "<p>The Availability Zone of the recommended reservation.</p>"
        },
        "Platform": {
          "shape": "GenericString",
          "documentation": "<p>The platform of the recommended reservation. The platform is the specific combination of operating system, license model, and software on an instance.</p>"
        },
        "Tenancy": {
          "shape": "GenericString",
          "documentation": "<p>Whether the recommended reservation is dedicated or shared.</p>"
        },
        "CurrentGeneration": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommendation is for a current-generation instance. </p>"
        },
        "SizeFlexEligible": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommended reservation is size flexible.</p>"
        }
      },
      "documentation": "<p>Details about the Amazon EC2 instances that AWS recommends that you purchase.</p>"
    },
    "EC2ResourceDetails": {
      "type": "structure",
      "members": {
        "HourlyOnDemandRate": {
          "shape": "GenericString",
          "documentation": "<p> Hourly public On Demand rate for the instance type.</p>"
        },
        "InstanceType": {
          "shape": "GenericString",
          "documentation": "<p> The type of Amazon Web Services instance.</p>"
        },
        "Platform": {
          "shape": "GenericString",
          "documentation": "<p> The platform of the Amazon Web Services instance. The platform is the specific combination of operating system, license model, and software on an instance.</p>"
        },
        "Region": {
          "shape": "GenericString",
          "documentation": "<p> The Amazon Web Services Region of the instance.</p>"
        },
        "Sku": {
          "shape": "GenericString",
          "documentation": "<p> The SKU of the product.</p>"
        },
        "Memory": {
          "shape": "GenericString",
          "documentation": "<p> Memory capacity of Amazon Web Services instance.</p>"
        },
        "NetworkPerformance": {
          "shape": "GenericString",
          "documentation": "<p> Network performance capacity of the Amazon Web Services instance.</p>"
        },
        "Storage": {
          "shape": "GenericString",
          "documentation": "<p> The disk storage of the Amazon Web Services instance (Not EBS storage).</p>"
        },
        "Vcpu": {
          "shape": "GenericString",
          "documentation": "<p> Number of VCPU cores in the Amazon Web Services instance type.</p>"
        }
      },
      "documentation": "<p> Details on the Amazon EC2 Resource.</p>"
    },
    "EC2ResourceUtilization": {
      "type": "structure",
      "members": {
        "MaxCpuUtilizationPercentage": {
          "shape": "GenericString",
          "documentation": "<p> Maximum observed or expected CPU utilization of the instance.</p>"
        },
        "MaxMemoryUtilizationPercentage": {
          "shape": "GenericString",
          "documentation": "<p> Maximum observed or expected memory utilization of the instance.</p>"
        },
        "MaxStorageUtilizationPercentage": {
          "shape": "GenericString",
          "documentation": "<p> Maximum observed or expected storage utilization of the instance (does not measure EBS storage).</p>"
        }
      },
      "documentation": "<p> Utilization metrics of the instance. </p>"
    },
    "EC2Specification": {
      "type": "structure",
      "members": {
        "OfferingClass": {
          "shape": "OfferingClass",
          "documentation": "<p>Whether you want a recommendation for standard or convertible reservations.</p>"
        }
      },
      "documentation": "<p>The Amazon EC2 hardware specifications that you want AWS to provide recommendations for.</p>"
    },
    "ESInstanceDetails": {
      "type": "structure",
      "members": {
        "InstanceClass": {
          "shape": "GenericString",
          "documentation": "<p>The class of instance that AWS recommends.</p>"
        },
        "InstanceSize": {
          "shape": "GenericString",
          "documentation": "<p>The size of instance that AWS recommends.</p>"
        },
        "Region": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Region of the recommended reservation.</p>"
        },
        "CurrentGeneration": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommendation is for a current-generation instance.</p>"
        },
        "SizeFlexEligible": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommended reservation is size flexible.</p>"
        }
      },
      "documentation": "<p>Details about the Amazon ES instances that AWS recommends that you purchase.</p>"
    },
    "ElastiCacheInstanceDetails": {
      "type": "structure",
      "members": {
        "Family": {
          "shape": "GenericString",
          "documentation": "<p>The instance family of the recommended reservation.</p>"
        },
        "NodeType": {
          "shape": "GenericString",
          "documentation": "<p>The type of node that AWS recommends.</p>"
        },
        "Region": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Region of the recommended reservation.</p>"
        },
        "ProductDescription": {
          "shape": "GenericString",
          "documentation": "<p>The description of the recommended reservation.</p>"
        },
        "CurrentGeneration": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommendation is for a current generation instance.</p>"
        },
        "SizeFlexEligible": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommended reservation is size flexible.</p>"
        }
      },
      "documentation": "<p>Details about the Amazon ElastiCache instances that AWS recommends that you purchase.</p>"
    },
    "Entity": {
      "type": "string"
    },
    "Estimated": {
      "type": "boolean"
    },
    "Expression": {
      "type": "structure",
      "members": {
        "Or": {
          "shape": "Expressions",
          "documentation": "<p>Return results that match either <code>Dimension</code> object.</p>"
        },
        "And": {
          "shape": "Expressions",
          "documentation": "<p>Return results that match both <code>Dimension</code> objects.</p>"
        },
        "Not": {
          "shape": "Expression",
          "documentation": "<p>Return results that don't match a <code>Dimension</code> object.</p>"
        },
        "Dimensions": {
          "shape": "DimensionValues",
          "documentation": "<p>The specific <code>Dimension</code> to use for <code>Expression</code>.</p>"
        },
        "Tags": {
          "shape": "TagValues",
          "documentation": "<p>The specific <code>Tag</code> to use for <code>Expression</code>.</p>"
        },
        "CostCategories": {
          "shape": "CostCategoryValues",
          "documentation": "<p>The filter based on <code>CostCategory</code> values.</p>"
        }
      },
      "documentation": "<p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p> <ul> <li> <p>Simple dimension values - You can set the dimension name and values for the filters that you plan to use. For example, you can filter for <code>REGION==us-east-1 OR REGION==us-west-1</code>. The <code>Expression</code> for that looks like this:</p> <p> <code>{ \"Dimensions\": { \"Key\": \"REGION\", \"Values\": [ \"us-east-1\", “us-west-1” ] } }</code> </p> <p>The list of dimension values are OR'd together to retrieve cost or usage data. You can create <code>Expression</code> and <code>DimensionValues</code> objects using either <code>with*</code> methods or <code>set*</code> methods in multiple lines. </p> </li> <li> <p>Compound dimension values with logical operations - You can use multiple <code>Expression</code> types and the logical operators <code>AND/OR/NOT</code> to create a list of one or more <code>Expression</code> objects. This allows you to filter on more advanced options. For example, you can filter on <code>((REGION == us-east-1 OR REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE != DataTransfer)</code>. The <code>Expression</code> for that looks like this:</p> <p> <code>{ \"And\": [ {\"Or\": [ {\"Dimensions\": { \"Key\": \"REGION\", \"Values\": [ \"us-east-1\", \"us-west-1\" ] }}, {\"Tags\": { \"Key\": \"TagName\", \"Values\": [\"Value1\"] } } ]}, {\"Not\": {\"Dimensions\": { \"Key\": \"USAGE_TYPE\", \"Values\": [\"DataTransfer\"] }}} ] } </code> </p> <note> <p>Because each <code>Expression</code> can have only one operator, the service returns an error if more than one is specified. The following example shows an <code>Expression</code> object that creates an error.</p> </note> <p> <code> { \"And\": [ ... ], \"DimensionValues\": { \"Dimension\": \"USAGE_TYPE\", \"Values\": [ \"DataTransfer\" ] } } </code> </p> </li> </ul> <note> <p>For <code>GetRightsizingRecommendation</code> action, a combination of OR and NOT is not supported. OR is not supported between different dimensions, or dimensions and tags. NOT operators aren't supported. Dimensions are also limited to <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or <code>RIGHTSIZING_TYPE</code>.</p> </note>"
    },
    "Expressions": {
      "type": "list",
      "member": {
        "shape": "Expression"
      }
    },
    "ForecastResult": {
      "type": "structure",
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The period of time that the forecast covers.</p>"
        },
        "MeanValue": {
          "shape": "GenericString",
          "documentation": "<p>The mean value of the forecast.</p>"
        },
        "PredictionIntervalLowerBound": {
          "shape": "GenericString",
          "documentation": "<p>The lower limit for the prediction interval. </p>"
        },
        "PredictionIntervalUpperBound": {
          "shape": "GenericString",
          "documentation": "<p>The upper limit for the prediction interval. </p>"
        }
      },
      "documentation": "<p>The forecast created for your query.</p>"
    },
    "ForecastResultsByTime": {
      "type": "list",
      "member": {
        "shape": "ForecastResult"
      }
    },
    "GenericBoolean": {
      "type": "boolean"
    },
    "GenericString": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "GetCostAndUsageRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>Sets the start and end dates for retrieving AWS costs. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>Sets the AWS cost granularity to <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, the response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>, or <code>HOURLY</code>. </p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters AWS costs by different dimensions. For example, you can specify <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated with that account's usage of that service. You can nest <code>Expression</code> objects to define any combination of dimension filters. For more information, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a>. </p>"
        },
        "Metrics": {
          "shape": "MetricNames",
          "documentation": "<p>Which metrics are returned in the query. For more information about blended and unblended rates, see <a href=\"http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/\">Why does the \"blended\" annotation appear on some line items in my bill?</a>. </p> <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>. </p> <note> <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage numbers without taking into account the units. For example, if you aggregate <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because Amazon EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by <code>UsageType</code> or <code>UsageTypeGroups</code>. </p> </note> <p> <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>"
        },
        "GroupBy": {
          "shape": "GroupDefinitions",
          "documentation": "<p>You can group AWS costs using up to two different groups, either dimensions, tag keys, or both.</p> <p>When you group by tag key, you get all tag values, including empty strings.</p> <p>Valid values are <code>AZ</code>, <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>LINKED_ACCOUNT</code>, <code>OPERATION</code>, <code>PLATFORM</code>, <code>PURCHASE_TYPE</code>, <code>SERVICE</code>, <code>TAGS</code>, <code>TENANCY</code>, <code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetCostAndUsageResponse": {
      "type": "structure",
      "members": {
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        },
        "GroupDefinitions": {
          "shape": "GroupDefinitions",
          "documentation": "<p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code> parameters in the request.</p>"
        },
        "ResultsByTime": {
          "shape": "ResultsByTime",
          "documentation": "<p>The time period that is covered by the results in the response.</p>"
        }
      }
    },
    "GetCostAndUsageWithResourcesRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>Sets the start and end dates for retrieving Amazon Web Services costs. The range must be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>Sets the AWS cost granularity to <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, the response object doesn't include the <code>Granularity</code>, <code>MONTHLY</code>, <code>DAILY</code>, or <code>HOURLY</code>. </p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters Amazon Web Services costs by different dimensions. For example, you can specify <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated with that account's usage of that service. You can nest <code>Expression</code> objects to define any combination of dimension filters. For more information, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a>. </p> <p>The <code>GetCostAndUsageWithResources</code> operation requires that you either group by or filter by a <code>ResourceId</code>.</p>"
        },
        "Metrics": {
          "shape": "MetricNames",
          "documentation": "<p>Which metrics are returned in the query. For more information about blended and unblended rates, see <a href=\"http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/\">Why does the \"blended\" annotation appear on some line items in my bill?</a>. </p> <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>, <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and <code>UsageQuantity</code>. </p> <note> <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage numbers without taking the units into account. For example, if you aggregate <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because Amazon EC2 compute hours and data transfer are measured in different units (for example, hours vs. GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by <code>UsageType</code> or <code>UsageTypeGroups</code>. </p> </note> <p> <code>Metrics</code> is required for <code>GetCostAndUsageWithResources</code> requests.</p>"
        },
        "GroupBy": {
          "shape": "GroupDefinitions",
          "documentation": "<p>You can group Amazon Web Services costs using up to two different groups: either dimensions, tag keys, or both.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetCostAndUsageWithResourcesResponse": {
      "type": "structure",
      "members": {
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        },
        "GroupDefinitions": {
          "shape": "GroupDefinitions",
          "documentation": "<p>The groups that are specified by the <code>Filter</code> or <code>GroupBy</code> parameters in the request.</p>"
        },
        "ResultsByTime": {
          "shape": "ResultsByTime",
          "documentation": "<p>The time period that is covered by the results in the response.</p>"
        }
      }
    },
    "GetCostForecastRequest": {
      "type": "structure",
      "required": [
        "TimePeriod",
        "Metric",
        "Granularity"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The period of time that you want the forecast to cover.</p>"
        },
        "Metric": {
          "shape": "Metric",
          "documentation": "<p>Which metric Cost Explorer uses to create your forecast. For more information about blended and unblended rates, see <a href=\"http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/\">Why does the \"blended\" annotation appear on some line items in my bill?</a>. </p> <p>Valid values for a <code>GetCostForecast</code> call are the following:</p> <ul> <li> <p>AMORTIZED_COST</p> </li> <li> <p>BLENDED_COST</p> </li> <li> <p>NET_AMORTIZED_COST</p> </li> <li> <p>NET_UNBLENDED_COST</p> </li> <li> <p>UNBLENDED_COST</p> </li> </ul>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p> <p>The <code>GetCostForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>The filters that you want to use to filter your forecast. Cost Explorer API supports all of the Cost Explorer filters.</p>"
        },
        "PredictionIntervalLevel": {
          "shape": "PredictionIntervalLevel",
          "documentation": "<p>Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>"
        }
      }
    },
    "GetCostForecastResponse": {
      "type": "structure",
      "members": {
        "Total": {
          "shape": "MetricValue",
          "documentation": "<p>How much you are forecasted to spend over the forecast period, in <code>USD</code>.</p>"
        },
        "ForecastResultsByTime": {
          "shape": "ForecastResultsByTime",
          "documentation": "<p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list of days. For <code>MONTHLY</code> forecasts, this is a list of months.</p>"
        }
      }
    },
    "GetDimensionValuesRequest": {
      "type": "structure",
      "required": [
        "TimePeriod",
        "Dimension"
      ],
      "members": {
        "SearchString": {
          "shape": "SearchString",
          "documentation": "<p>The value that you want to search the filter values for.</p>"
        },
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>"
        },
        "Dimension": {
          "shape": "Dimension",
          "documentation": "<p>The name of the dimension. Each <code>Dimension</code> is available for a different <code>Context</code>. For more information, see <code>Context</code>. </p>"
        },
        "Context": {
          "shape": "Context",
          "documentation": "<p>The context for the call to <code>GetDimensionValues</code>. This can be <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>. The default value is <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the resulting dimension values can be used in the <code>GetReservationUtilization</code> operation. If the context is set to <code>COST_AND_USAGE</code>, the resulting dimension values can be used in the <code>GetCostAndUsage</code> operation.</p> <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p> </li> <li> <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p> </li> <li> <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p> </li> <li> <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.</p> </li> <li> <p>SERVICE - The AWS service such as Amazon DynamoDB.</p> </li> <li> <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples include GB and Hrs.</p> </li> <li> <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.</p> </li> <li> <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p> </li> <li> <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p> </li> </ul> <p>If you set the context to <code>RESERVATIONS</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p> </li> <li> <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p> </li> <li> <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>REGION - The AWS Region.</p> </li> <li> <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p> </li> <li> <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p> </li> <li> <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p> </li> </ul> <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p> </li> <li> <p>PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)</p> </li> <li> <p>REGION - The AWS Region.</p> </li> <li> <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan</p> </li> </ul>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetDimensionValuesResponse": {
      "type": "structure",
      "required": [
        "DimensionValues",
        "ReturnSize",
        "TotalSize"
      ],
      "members": {
        "DimensionValues": {
          "shape": "DimensionValuesWithAttributesList",
          "documentation": "<p>The filters that you used to filter your request. Some dimensions are available only for a specific context.</p> <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are Aurora or MySQL.</p> </li> <li> <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LEGAL_ENTITY_NAME - The name of the organization that sells you AWS services, such as Amazon Web Services.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p> </li> <li> <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and <code>CreateBucket</code>.</p> </li> <li> <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>PURCHASE_TYPE - The reservation type of the purchase to which this usage is related. Examples include On-Demand Instances and Standard Reserved Instances.</p> </li> <li> <p>SERVICE - The AWS service such as Amazon DynamoDB.</p> </li> <li> <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples include GB and Hrs.</p> </li> <li> <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2: CloudWatch – Alarms. The response for this operation includes a unit attribute.</p> </li> <li> <p>RECORD_TYPE - The different types of charges such as RI fees, usage costs, tax refunds, and credits.</p> </li> <li> <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in feature only available for last 14 days for EC2-Compute Service.</p> </li> </ul> <p>If you set the context to <code>RESERVATIONS</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p> </li> <li> <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or Linux.</p> </li> <li> <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments. Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p> </li> <li> <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is <code>m4.xlarge</code>.</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or Linux.</p> </li> <li> <p>REGION - The AWS Region.</p> </li> <li> <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are regional or a single Availability Zone.</p> </li> <li> <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance (RI).</p> </li> <li> <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p> </li> </ul> <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following dimensions for searching:</p> <ul> <li> <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p> </li> <li> <p>PAYMENT_OPTION - Payment option for the given Savings Plans (for example, All Upfront)</p> </li> <li> <p>REGION - The AWS Region.</p> </li> <li> <p>INSTANCE_TYPE_FAMILY - The family of instances (For example, <code>m5</code>)</p> </li> <li> <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name of the member account. The value field contains the AWS ID of the member account.</p> </li> <li> <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan</p> </li> </ul>"
        },
        "ReturnSize": {
          "shape": "PageSize",
          "documentation": "<p>The number of results that AWS returned at one time.</p>"
        },
        "TotalSize": {
          "shape": "PageSize",
          "documentation": "<p>The total number of search results.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetReservationCoverageRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The start and end dates of the period that you want to retrieve data about reservation coverage for. You can retrieve data for a maximum of 13 months: the last 12 months and the current month. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>"
        },
        "GroupBy": {
          "shape": "GroupDefinitions",
          "documentation": "<p>You can group the data by the following attributes:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>TENANCY</p> </li> </ul>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>The granularity of the AWS cost data for the reservation. Valid values are <code>MONTHLY</code> and <code>DAILY</code>.</p> <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set, the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p> <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters utilization data by dimensions. You can filter by the following dimensions:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DATABASE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>SERVICE</p> </li> <li> <p>TAG</p> </li> <li> <p>TENANCY</p> </li> </ul> <p> <code>GetReservationCoverage</code> uses the same <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object as the other operations, but only <code>AND</code> is supported among each dimension. You can nest only one level deep. If there are multiple values for a dimension, they are OR'd together.</p> <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to EC2.</p> <p>Cost category is also supported.</p>"
        },
        "Metrics": {
          "shape": "MetricNames",
          "documentation": "<p>The measurement that you want your reservation coverage reported in.</p> <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use multiple values in a request.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      },
      "documentation": "<p>You can use the following request parameters to query for how much of your instance usage a reservation covered.</p>"
    },
    "GetReservationCoverageResponse": {
      "type": "structure",
      "required": [
        "CoveragesByTime"
      ],
      "members": {
        "CoveragesByTime": {
          "shape": "CoveragesByTime",
          "documentation": "<p>The amount of time that your reservations covered.</p>"
        },
        "Total": {
          "shape": "Coverage",
          "documentation": "<p>The total amount of instance usage that a reservation covered.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetReservationPurchaseRecommendationRequest": {
      "type": "structure",
      "required": [
        "Service"
      ],
      "members": {
        "AccountId": {
          "shape": "GenericString",
          "documentation": "<p>The account ID that is associated with the recommendation. </p>"
        },
        "Service": {
          "shape": "GenericString",
          "documentation": "<p>The specific service that you want recommendations for.</p>"
        },
        "AccountScope": {
          "shape": "AccountScope",
          "documentation": "<p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual linked accounts only.</p>"
        },
        "LookbackPeriodInDays": {
          "shape": "LookbackPeriodInDays",
          "documentation": "<p>The number of previous days that you want AWS to consider when it calculates your recommendations.</p>"
        },
        "TermInYears": {
          "shape": "TermInYears",
          "documentation": "<p>The reservation term that you want recommendations for.</p>"
        },
        "PaymentOption": {
          "shape": "PaymentOption",
          "documentation": "<p>The reservation purchase option that you want recommendations for.</p>"
        },
        "ServiceSpecification": {
          "shape": "ServiceSpecification",
          "documentation": "<p>The hardware specifications for the service instances that you want recommendations for, such as standard or convertible Amazon EC2 instances.</p>"
        },
        "PageSize": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The number of recommendations that you want returned in a single response object.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
        }
      }
    },
    "GetReservationPurchaseRecommendationResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "ReservationPurchaseRecommendationMetadata",
          "documentation": "<p>Information about this specific recommendation call, such as the time stamp for when Cost Explorer generated this recommendation.</p>"
        },
        "Recommendations": {
          "shape": "ReservationPurchaseRecommendations",
          "documentation": "<p>Recommendations for reservations to purchase.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The pagination token for the next set of retrievable results.</p>"
        }
      }
    },
    "GetReservationUtilizationRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>Sets the start and end dates for retrieving RI utilization. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>"
        },
        "GroupBy": {
          "shape": "GroupDefinitions",
          "documentation": "<p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If <code>Granularity</code> isn't set, the response object doesn't include <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>. If both <code>GroupBy</code> and <code>Granularity</code> aren't set, <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p> <p>The <code>GetReservationUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters utilization data by dimensions. You can filter by the following dimensions:</p> <ul> <li> <p>AZ</p> </li> <li> <p>CACHE_ENGINE</p> </li> <li> <p>DEPLOYMENT_OPTION</p> </li> <li> <p>INSTANCE_TYPE</p> </li> <li> <p>LINKED_ACCOUNT</p> </li> <li> <p>OPERATING_SYSTEM</p> </li> <li> <p>PLATFORM</p> </li> <li> <p>REGION</p> </li> <li> <p>SERVICE</p> </li> <li> <p>SCOPE</p> </li> <li> <p>TENANCY</p> </li> </ul> <p> <code>GetReservationUtilization</code> uses the same <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object as the other operations, but only <code>AND</code> is supported among each dimension, and nesting is supported up to only one level deep. If there are multiple values for a dimension, they are OR'd together.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetReservationUtilizationResponse": {
      "type": "structure",
      "required": [
        "UtilizationsByTime"
      ],
      "members": {
        "UtilizationsByTime": {
          "shape": "UtilizationsByTime",
          "documentation": "<p>The amount of time that you used your RIs.</p>"
        },
        "Total": {
          "shape": "ReservationAggregates",
          "documentation": "<p>The total amount of time that you used your RIs.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetRightsizingRecommendationRequest": {
      "type": "structure",
      "required": [
        "Service"
      ],
      "members": {
        "Filter": {
          "shape": "Expression"
        },
        "Configuration": {
          "shape": "RightsizingRecommendationConfiguration",
          "documentation": "<p> Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither. </p>"
        },
        "Service": {
          "shape": "GenericString",
          "documentation": "<p>The specific service that you want recommendations for. The only valid value for <code>GetRightsizingRecommendation</code> is \"<code>AmazonEC2</code>\".</p>"
        },
        "PageSize": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The number of recommendations that you want returned in a single response object.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The pagination token that indicates the next set of results that you want to retrieve.</p>"
        }
      }
    },
    "GetRightsizingRecommendationResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "RightsizingRecommendationMetadata",
          "documentation": "<p>Information regarding this specific recommendation set.</p>"
        },
        "Summary": {
          "shape": "RightsizingRecommendationSummary",
          "documentation": "<p>Summary of this recommendation set.</p>"
        },
        "RightsizingRecommendations": {
          "shape": "RightsizingRecommendationList",
          "documentation": "<p>Recommendations to rightsize resources.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>"
        },
        "Configuration": {
          "shape": "RightsizingRecommendationConfiguration",
          "documentation": "<p> Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither. </p>"
        }
      }
    },
    "GetSavingsPlansCoverageRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>"
        },
        "GroupBy": {
          "shape": "GroupDefinitions",
          "documentation": "<p>You can group the data using the attributes <code>INSTANCE_FAMILY</code>, <code>REGION</code>, or <code>SERVICE</code>.</p>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>The granularity of the Amazon Web Services cost data for your Savings Plans. <code>Granularity</code> can't be set if <code>GroupBy</code> is set.</p> <p>The <code>GetSavingsPlansCoverage</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans usage with the following dimensions:</p> <ul> <li> <p> <code>LINKED_ACCOUNT</code> </p> </li> <li> <p> <code>REGION</code> </p> </li> <li> <p> <code>SERVICE</code> </p> </li> <li> <p> <code>INSTANCE_FAMILY</code> </p> </li> </ul> <p> <code>GetSavingsPlansCoverage</code> uses the same <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object as the other operations, but only <code>AND</code> is supported among each dimension. If there are multiple values for a dimension, they are OR'd together.</p> <p>Cost category is also supported.</p>"
        },
        "Metrics": {
          "shape": "MetricNames",
          "documentation": "<p>The measurement that you want your Savings Plans coverage reported in. The only valid value is <code>SpendCoveredBySavingsPlans</code>.</p>"
        },
        "NextToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>",
          "box": true
        }
      }
    },
    "GetSavingsPlansCoverageResponse": {
      "type": "structure",
      "required": [
        "SavingsPlansCoverages"
      ],
      "members": {
        "SavingsPlansCoverages": {
          "shape": "SavingsPlansCoverages",
          "documentation": "<p>The amount of spend that your Savings Plans covered.</p>"
        },
        "NextToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetSavingsPlansPurchaseRecommendationRequest": {
      "type": "structure",
      "required": [
        "SavingsPlansType",
        "TermInYears",
        "PaymentOption",
        "LookbackPeriodInDays"
      ],
      "members": {
        "SavingsPlansType": {
          "shape": "SupportedSavingsPlansType",
          "documentation": "<p>The Savings Plans recommendation type requested.</p>"
        },
        "TermInYears": {
          "shape": "TermInYears",
          "documentation": "<p>The savings plan recommendation term used to generate these recommendations.</p>"
        },
        "PaymentOption": {
          "shape": "PaymentOption",
          "documentation": "<p>The payment option used to generate these recommendations.</p>"
        },
        "AccountScope": {
          "shape": "AccountScope",
          "documentation": "<p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual linked accounts only.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
        },
        "PageSize": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The number of recommendations that you want returned in a single response object.</p>"
        },
        "LookbackPeriodInDays": {
          "shape": "LookbackPeriodInDays",
          "documentation": "<p>The lookback period used to generate the recommendation.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>You can filter your recommendations by Account ID with the <code>LINKED_ACCOUNT</code> dimension. To filter your recommendations by Account ID, specify <code>Key</code> as <code>LINKED_ACCOUNT</code> and <code>Value</code> as the comma-separated Acount ID(s) for which you want to see Savings Plans purchase recommendations.</p> <p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code> does not include <code>CostCategories</code> or <code>Tags</code>. It only includes <code>Dimensions</code>. With <code>Dimensions</code>, <code>Key</code> must be <code>LINKED_ACCOUNT</code> and <code>Value</code> can be a single Account ID or multiple comma-separated Account IDs for which you want to see Savings Plans Purchase Recommendations. <code>AND</code> and <code>OR</code> operators are not supported.</p>"
        }
      }
    },
    "GetSavingsPlansPurchaseRecommendationResponse": {
      "type": "structure",
      "members": {
        "Metadata": {
          "shape": "SavingsPlansPurchaseRecommendationMetadata",
          "documentation": "<p>Information regarding this specific recommendation set.</p>"
        },
        "SavingsPlansPurchaseRecommendation": {
          "shape": "SavingsPlansPurchaseRecommendation",
          "documentation": "<p>Contains your request parameters, Savings Plan Recommendations Summary, and Details.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetSavingsPlansUtilizationDetailsRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You can filter data with the following dimensions:</p> <ul> <li> <p> <code>LINKED_ACCOUNT</code> </p> </li> <li> <p> <code>SAVINGS_PLAN_ARN</code> </p> </li> <li> <p> <code>REGION</code> </p> </li> <li> <p> <code>PAYMENT_OPTION</code> </p> </li> <li> <p> <code>INSTANCE_TYPE_FAMILY</code> </p> </li> </ul> <p> <code>GetSavingsPlansUtilizationDetails</code> uses the same <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object as the other operations, but only <code>AND</code> is supported among each dimension.</p>"
        },
        "NextToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of items to be returned in a response. The default is <code>20</code>, with a minimum value of <code>1</code>.</p>",
          "box": true
        }
      }
    },
    "GetSavingsPlansUtilizationDetailsResponse": {
      "type": "structure",
      "required": [
        "SavingsPlansUtilizationDetails",
        "TimePeriod"
      ],
      "members": {
        "SavingsPlansUtilizationDetails": {
          "shape": "SavingsPlansUtilizationDetails",
          "documentation": "<p>Retrieves a single daily or monthly Savings Plans utilization rate and details for your account.</p>"
        },
        "Total": {
          "shape": "SavingsPlansUtilizationAggregates",
          "documentation": "<p>The total Savings Plans utilization, regardless of time period.</p>"
        },
        "TimePeriod": {
          "shape": "DateInterval"
        },
        "NextToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetSavingsPlansUtilizationRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The time period that you want the usage and costs for. The <code>Start</code> date must be within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and before the current date. Future dates can't be used as an <code>End</code> date.</p>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>The granularity of the Amazon Web Services utillization data for your Savings Plans.</p> <p>The <code>GetSavingsPlansUtilization</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You can filter data with the following dimensions:</p> <ul> <li> <p> <code>LINKED_ACCOUNT</code> </p> </li> <li> <p> <code>SAVINGS_PLAN_ARN</code> </p> </li> <li> <p> <code>SAVINGS_PLANS_TYPE</code> </p> </li> <li> <p> <code>REGION</code> </p> </li> <li> <p> <code>PAYMENT_OPTION</code> </p> </li> <li> <p> <code>INSTANCE_TYPE_FAMILY</code> </p> </li> </ul> <p> <code>GetSavingsPlansUtilization</code> uses the same <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html\">Expression</a> object as the other operations, but only <code>AND</code> is supported among each dimension.</p>"
        }
      }
    },
    "GetSavingsPlansUtilizationResponse": {
      "type": "structure",
      "required": [
        "Total"
      ],
      "members": {
        "SavingsPlansUtilizationsByTime": {
          "shape": "SavingsPlansUtilizationsByTime",
          "documentation": "<p>The amount of cost/commitment you used your Savings Plans. This allows you to specify date ranges.</p>"
        },
        "Total": {
          "shape": "SavingsPlansUtilizationAggregates",
          "documentation": "<p>The total amount of cost/commitment that you used your Savings Plans, regardless of date ranges.</p>"
        }
      }
    },
    "GetTagsRequest": {
      "type": "structure",
      "required": [
        "TimePeriod"
      ],
      "members": {
        "SearchString": {
          "shape": "SearchString",
          "documentation": "<p>The value that you want to search for.</p>"
        },
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The start and end dates for retrieving the dimension values. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>"
        },
        "TagKey": {
          "shape": "TagKey",
          "documentation": "<p>The key of the tag that you want to return values for.</p>"
        },
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token to retrieve the next set of results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        }
      }
    },
    "GetTagsResponse": {
      "type": "structure",
      "required": [
        "Tags",
        "ReturnSize",
        "TotalSize"
      ],
      "members": {
        "NextPageToken": {
          "shape": "NextPageToken",
          "documentation": "<p>The token for the next set of retrievable results. AWS provides the token when the response from a previous call has more results than the maximum page size.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that match your request.</p>"
        },
        "ReturnSize": {
          "shape": "PageSize",
          "documentation": "<p>The number of query results that AWS returns at a time.</p>"
        },
        "TotalSize": {
          "shape": "PageSize",
          "documentation": "<p>The total number of query results.</p>"
        }
      }
    },
    "GetUsageForecastRequest": {
      "type": "structure",
      "required": [
        "TimePeriod",
        "Metric",
        "Granularity"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The start and end dates of the period that you want to retrieve usage forecast for. The start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and usage data is retrieved from <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>"
        },
        "Metric": {
          "shape": "Metric",
          "documentation": "<p>Which metric Cost Explorer uses to create your forecast.</p> <p>Valid values for a <code>GetUsageForecast</code> call are the following:</p> <ul> <li> <p>USAGE_QUANTITY</p> </li> <li> <p>NORMALIZED_USAGE_AMOUNT</p> </li> </ul>"
        },
        "Granularity": {
          "shape": "Granularity",
          "documentation": "<p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code> forecasts or 12 months of <code>MONTHLY</code> forecasts.</p> <p>The <code>GetUsageForecast</code> operation supports only <code>DAILY</code> and <code>MONTHLY</code> granularities.</p>"
        },
        "Filter": {
          "shape": "Expression",
          "documentation": "<p>The filters that you want to use to filter your forecast. Cost Explorer API supports all of the Cost Explorer filters.</p>"
        },
        "PredictionIntervalLevel": {
          "shape": "PredictionIntervalLevel",
          "documentation": "<p>Cost Explorer always returns the mean forecast as a single point. You can request a prediction interval around the mean by specifying a confidence level. The higher the confidence level, the more confident Cost Explorer is about the actual value falling in the prediction interval. Higher confidence levels result in wider prediction intervals.</p>"
        }
      }
    },
    "GetUsageForecastResponse": {
      "type": "structure",
      "members": {
        "Total": {
          "shape": "MetricValue",
          "documentation": "<p>How much you're forecasted to use over the forecast period.</p>"
        },
        "ForecastResultsByTime": {
          "shape": "ForecastResultsByTime",
          "documentation": "<p>The forecasts for your query, in order. For <code>DAILY</code> forecasts, this is a list of days. For <code>MONTHLY</code> forecasts, this is a list of months.</p>"
        }
      }
    },
    "Granularity": {
      "type": "string",
      "enum": [
        "DAILY",
        "MONTHLY",
        "HOURLY"
      ]
    },
    "Group": {
      "type": "structure",
      "members": {
        "Keys": {
          "shape": "Keys",
          "documentation": "<p>The keys that are included in this group.</p>"
        },
        "Metrics": {
          "shape": "Metrics",
          "documentation": "<p>The metrics that are included in this group.</p>"
        }
      },
      "documentation": "<p>One level of grouped data in the results.</p>"
    },
    "GroupDefinition": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "GroupDefinitionType",
          "documentation": "<p>The string that represents the type of group.</p>"
        },
        "Key": {
          "shape": "GroupDefinitionKey",
          "documentation": "<p>The string that represents a key for a specified group.</p>"
        }
      },
      "documentation": "<p>Represents a group when you specify a group by criteria or in the response to a query with a specific grouping.</p>"
    },
    "GroupDefinitionKey": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "GroupDefinitionType": {
      "type": "string",
      "enum": [
        "DIMENSION",
        "TAG",
        "COST_CATEGORY"
      ]
    },
    "GroupDefinitions": {
      "type": "list",
      "member": {
        "shape": "GroupDefinition"
      }
    },
    "Groups": {
      "type": "list",
      "member": {
        "shape": "Group"
      }
    },
    "InstanceDetails": {
      "type": "structure",
      "members": {
        "EC2InstanceDetails": {
          "shape": "EC2InstanceDetails",
          "documentation": "<p>The Amazon EC2 instances that AWS recommends that you purchase.</p>"
        },
        "RDSInstanceDetails": {
          "shape": "RDSInstanceDetails",
          "documentation": "<p>The Amazon RDS instances that AWS recommends that you purchase.</p>"
        },
        "RedshiftInstanceDetails": {
          "shape": "RedshiftInstanceDetails",
          "documentation": "<p>The Amazon Redshift instances that AWS recommends that you purchase.</p>"
        },
        "ElastiCacheInstanceDetails": {
          "shape": "ElastiCacheInstanceDetails",
          "documentation": "<p>The ElastiCache instances that AWS recommends that you purchase.</p>"
        },
        "ESInstanceDetails": {
          "shape": "ESInstanceDetails",
          "documentation": "<p>The Amazon ES instances that AWS recommends that you purchase.</p>"
        }
      },
      "documentation": "<p>Details about the instances that AWS recommends that you purchase.</p>"
    },
    "Key": {
      "type": "string"
    },
    "Keys": {
      "type": "list",
      "member": {
        "shape": "Key"
      }
    },
    "ListCostCategoryDefinitionsRequest": {
      "type": "structure",
      "members": {
        "EffectiveOn": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The date when the Cost Category was effective. </p>"
        },
        "NextToken": {
          "shape": "NextPageToken",
          "documentation": "<p> The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size. </p>"
        },
        "MaxResults": {
          "shape": "CostCategoryMaxResults",
          "documentation": "<p> The number of entries a paginated response contains. </p>",
          "box": true
        }
      }
    },
    "ListCostCategoryDefinitionsResponse": {
      "type": "structure",
      "members": {
        "CostCategoryReferences": {
          "shape": "CostCategoryReferencesList",
          "documentation": "<p> A reference to a Cost Category containing enough information to identify the Cost Category. </p>"
        },
        "NextToken": {
          "shape": "NextPageToken",
          "documentation": "<p> The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size. </p>"
        }
      }
    },
    "LookbackPeriodInDays": {
      "type": "string",
      "enum": [
        "SEVEN_DAYS",
        "THIRTY_DAYS",
        "SIXTY_DAYS"
      ]
    },
    "MatchOption": {
      "type": "string",
      "enum": [
        "EQUALS",
        "STARTS_WITH",
        "ENDS_WITH",
        "CONTAINS",
        "CASE_SENSITIVE",
        "CASE_INSENSITIVE"
      ]
    },
    "MatchOptions": {
      "type": "list",
      "member": {
        "shape": "MatchOption"
      }
    },
    "MaxResults": {
      "type": "integer",
      "min": 1
    },
    "Metric": {
      "type": "string",
      "enum": [
        "BLENDED_COST",
        "UNBLENDED_COST",
        "AMORTIZED_COST",
        "NET_UNBLENDED_COST",
        "NET_AMORTIZED_COST",
        "USAGE_QUANTITY",
        "NORMALIZED_USAGE_AMOUNT"
      ]
    },
    "MetricAmount": {
      "type": "string"
    },
    "MetricName": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "MetricNames": {
      "type": "list",
      "member": {
        "shape": "MetricName"
      }
    },
    "MetricUnit": {
      "type": "string"
    },
    "MetricValue": {
      "type": "structure",
      "members": {
        "Amount": {
          "shape": "MetricAmount",
          "documentation": "<p>The actual number that represents the metric.</p>"
        },
        "Unit": {
          "shape": "MetricUnit",
          "documentation": "<p>The unit that the metric is given in.</p>"
        }
      },
      "documentation": "<p>The aggregated value for a metric.</p>"
    },
    "Metrics": {
      "type": "map",
      "key": {
        "shape": "MetricName"
      },
      "value": {
        "shape": "MetricValue"
      }
    },
    "ModifyRecommendationDetail": {
      "type": "structure",
      "members": {
        "TargetInstances": {
          "shape": "TargetInstancesList",
          "documentation": "<p>Identifies whether this instance type is the Amazon Web Services default recommendation.</p>"
        }
      },
      "documentation": "<p> Details on the modification recommendation.</p>"
    },
    "NetRISavings": {
      "type": "string"
    },
    "NextPageToken": {
      "type": "string",
      "max": 8192,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "NonNegativeInteger": {
      "type": "integer",
      "min": 0
    },
    "OfferingClass": {
      "type": "string",
      "enum": [
        "STANDARD",
        "CONVERTIBLE"
      ]
    },
    "OnDemandCost": {
      "type": "string"
    },
    "OnDemandCostOfRIHoursUsed": {
      "type": "string"
    },
    "OnDemandHours": {
      "type": "string"
    },
    "OnDemandNormalizedUnits": {
      "type": "string"
    },
    "PageSize": {
      "type": "integer"
    },
    "PaymentOption": {
      "type": "string",
      "enum": [
        "NO_UPFRONT",
        "PARTIAL_UPFRONT",
        "ALL_UPFRONT",
        "LIGHT_UTILIZATION",
        "MEDIUM_UTILIZATION",
        "HEAVY_UTILIZATION"
      ]
    },
    "PredictionIntervalLevel": {
      "type": "integer",
      "max": 99,
      "min": 51
    },
    "PurchasedHours": {
      "type": "string"
    },
    "PurchasedUnits": {
      "type": "string"
    },
    "RDSInstanceDetails": {
      "type": "structure",
      "members": {
        "Family": {
          "shape": "GenericString",
          "documentation": "<p>The instance family of the recommended reservation.</p>"
        },
        "InstanceType": {
          "shape": "GenericString",
          "documentation": "<p>The type of instance that AWS recommends.</p>"
        },
        "Region": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Region of the recommended reservation.</p>"
        },
        "DatabaseEngine": {
          "shape": "GenericString",
          "documentation": "<p>The database engine that the recommended reservation supports.</p>"
        },
        "DatabaseEdition": {
          "shape": "GenericString",
          "documentation": "<p>The database edition that the recommended reservation supports.</p>"
        },
        "DeploymentOption": {
          "shape": "GenericString",
          "documentation": "<p>Whether the recommendation is for a reservation in a single Availability Zone or a reservation with a backup in a second Availability Zone.</p>"
        },
        "LicenseModel": {
          "shape": "GenericString",
          "documentation": "<p>The license model that the recommended reservation supports.</p>"
        },
        "CurrentGeneration": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommendation is for a current-generation instance. </p>"
        },
        "SizeFlexEligible": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommended reservation is size flexible.</p>"
        }
      },
      "documentation": "<p>Details about the Amazon RDS instances that AWS recommends that you purchase.</p>"
    },
    "RecommendationTarget": {
      "type": "string",
      "enum": [
        "SAME_INSTANCE_FAMILY",
        "CROSS_INSTANCE_FAMILY"
      ]
    },
    "RedshiftInstanceDetails": {
      "type": "structure",
      "members": {
        "Family": {
          "shape": "GenericString",
          "documentation": "<p>The instance family of the recommended reservation.</p>"
        },
        "NodeType": {
          "shape": "GenericString",
          "documentation": "<p>The type of node that AWS recommends.</p>"
        },
        "Region": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Region of the recommended reservation.</p>"
        },
        "CurrentGeneration": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommendation is for a current-generation instance.</p>"
        },
        "SizeFlexEligible": {
          "shape": "GenericBoolean",
          "documentation": "<p>Whether the recommended reservation is size flexible.</p>"
        }
      },
      "documentation": "<p>Details about the Amazon Redshift instances that AWS recommends that you purchase.</p>"
    },
    "ReservationAggregates": {
      "type": "structure",
      "members": {
        "UtilizationPercentage": {
          "shape": "UtilizationPercentage",
          "documentation": "<p>The percentage of reservation time that you used.</p>"
        },
        "UtilizationPercentageInUnits": {
          "shape": "UtilizationPercentageInUnits",
          "documentation": "<p>The percentage of Amazon EC2 reservation time that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.</p>"
        },
        "PurchasedHours": {
          "shape": "PurchasedHours",
          "documentation": "<p>How many reservation hours that you purchased.</p>"
        },
        "PurchasedUnits": {
          "shape": "PurchasedUnits",
          "documentation": "<p>How many Amazon EC2 reservation hours that you purchased, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.</p>"
        },
        "TotalActualHours": {
          "shape": "TotalActualHours",
          "documentation": "<p>The total number of reservation hours that you used.</p>"
        },
        "TotalActualUnits": {
          "shape": "TotalActualUnits",
          "documentation": "<p>The total number of Amazon EC2 reservation hours that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.</p>"
        },
        "UnusedHours": {
          "shape": "UnusedHours",
          "documentation": "<p>The number of reservation hours that you didn't use.</p>"
        },
        "UnusedUnits": {
          "shape": "UnusedUnits",
          "documentation": "<p>The number of Amazon EC2 reservation hours that you didn't use, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.</p>"
        },
        "OnDemandCostOfRIHoursUsed": {
          "shape": "OnDemandCostOfRIHoursUsed",
          "documentation": "<p>How much your reservation would cost if charged On-Demand rates.</p>"
        },
        "NetRISavings": {
          "shape": "NetRISavings",
          "documentation": "<p>How much you saved due to purchasing and utilizing reservation. AWS calculates this by subtracting <code>TotalAmortizedFee</code> from <code>OnDemandCostOfRIHoursUsed</code>.</p>"
        },
        "TotalPotentialRISavings": {
          "shape": "TotalPotentialRISavings",
          "documentation": "<p>How much you could save if you use your entire reservation.</p>"
        },
        "AmortizedUpfrontFee": {
          "shape": "AmortizedUpfrontFee",
          "documentation": "<p>The upfront cost of your reservation, amortized over the reservation period.</p>"
        },
        "AmortizedRecurringFee": {
          "shape": "AmortizedRecurringFee",
          "documentation": "<p>The monthly cost of your reservation, amortized over the reservation period.</p>"
        },
        "TotalAmortizedFee": {
          "shape": "TotalAmortizedFee",
          "documentation": "<p>The total cost of your reservation, amortized over the reservation period.</p>"
        }
      },
      "documentation": "<p>The aggregated numbers for your reservation usage.</p>"
    },
    "ReservationCoverageGroup": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes for this group of reservations.</p>"
        },
        "Coverage": {
          "shape": "Coverage",
          "documentation": "<p>How much instance usage this group of reservations covered.</p>"
        }
      },
      "documentation": "<p>A group of reservations that share a set of attributes.</p>"
    },
    "ReservationCoverageGroups": {
      "type": "list",
      "member": {
        "shape": "ReservationCoverageGroup"
      }
    },
    "ReservationGroupKey": {
      "type": "string"
    },
    "ReservationGroupValue": {
      "type": "string"
    },
    "ReservationPurchaseRecommendation": {
      "type": "structure",
      "members": {
        "AccountScope": {
          "shape": "AccountScope",
          "documentation": "<p>The account scope that AWS recommends that you purchase this instance for. For example, you can purchase this reservation for an entire organization in AWS Organizations.</p>"
        },
        "LookbackPeriodInDays": {
          "shape": "LookbackPeriodInDays",
          "documentation": "<p>How many days of previous usage that AWS considers when making this recommendation.</p>"
        },
        "TermInYears": {
          "shape": "TermInYears",
          "documentation": "<p>The term of the reservation that you want recommendations for, in years.</p>"
        },
        "PaymentOption": {
          "shape": "PaymentOption",
          "documentation": "<p>The payment option for the reservation. For example, <code>AllUpfront</code> or <code>NoUpfront</code>.</p>"
        },
        "ServiceSpecification": {
          "shape": "ServiceSpecification",
          "documentation": "<p>Hardware specifications for the service that you want recommendations for.</p>"
        },
        "RecommendationDetails": {
          "shape": "ReservationPurchaseRecommendationDetails",
          "documentation": "<p>Details about the recommended purchases.</p>"
        },
        "RecommendationSummary": {
          "shape": "ReservationPurchaseRecommendationSummary",
          "documentation": "<p>A summary about the recommended purchase.</p>"
        }
      },
      "documentation": "<p>A specific reservation that AWS recommends for purchase.</p>"
    },
    "ReservationPurchaseRecommendationDetail": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "GenericString",
          "documentation": "<p>The account that this RI recommendation is for.</p>"
        },
        "InstanceDetails": {
          "shape": "InstanceDetails",
          "documentation": "<p>Details about the instances that AWS recommends that you purchase.</p>"
        },
        "RecommendedNumberOfInstancesToPurchase": {
          "shape": "GenericString",
          "documentation": "<p>The number of instances that AWS recommends that you purchase.</p>"
        },
        "RecommendedNormalizedUnitsToPurchase": {
          "shape": "GenericString",
          "documentation": "<p>The number of normalized units that AWS recommends that you purchase.</p>"
        },
        "MinimumNumberOfInstancesUsedPerHour": {
          "shape": "GenericString",
          "documentation": "<p>The minimum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "MinimumNormalizedUnitsUsedPerHour": {
          "shape": "GenericString",
          "documentation": "<p>The minimum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "MaximumNumberOfInstancesUsedPerHour": {
          "shape": "GenericString",
          "documentation": "<p>The maximum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "MaximumNormalizedUnitsUsedPerHour": {
          "shape": "GenericString",
          "documentation": "<p>The maximum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "AverageNumberOfInstancesUsedPerHour": {
          "shape": "GenericString",
          "documentation": "<p>The average number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "AverageNormalizedUnitsUsedPerHour": {
          "shape": "GenericString",
          "documentation": "<p>The average number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "AverageUtilization": {
          "shape": "GenericString",
          "documentation": "<p>The average utilization of your instances. AWS uses this to calculate your recommended reservation purchases.</p>"
        },
        "EstimatedBreakEvenInMonths": {
          "shape": "GenericString",
          "documentation": "<p>How long AWS estimates that it takes for this instance to start saving you money, in months.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p>The currency code that AWS used to calculate the costs for this instance.</p>"
        },
        "EstimatedMonthlySavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p>How much AWS estimates that this specific recommendation could save you in a month.</p>"
        },
        "EstimatedMonthlySavingsPercentage": {
          "shape": "GenericString",
          "documentation": "<p>How much AWS estimates that this specific recommendation could save you in a month, as a percentage of your overall costs.</p>"
        },
        "EstimatedMonthlyOnDemandCost": {
          "shape": "GenericString",
          "documentation": "<p>How much AWS estimates that you spend on On-Demand Instances in a month.</p>"
        },
        "EstimatedReservationCostForLookbackPeriod": {
          "shape": "GenericString",
          "documentation": "<p>How much AWS estimates that you would have spent for all usage during the specified historical period if you had a reservation.</p>"
        },
        "UpfrontCost": {
          "shape": "GenericString",
          "documentation": "<p>How much purchasing this instance costs you upfront.</p>"
        },
        "RecurringStandardMonthlyCost": {
          "shape": "GenericString",
          "documentation": "<p>How much purchasing this instance costs you on a monthly basis.</p>"
        }
      },
      "documentation": "<p>Details about your recommended reservation purchase.</p>"
    },
    "ReservationPurchaseRecommendationDetails": {
      "type": "list",
      "member": {
        "shape": "ReservationPurchaseRecommendationDetail"
      }
    },
    "ReservationPurchaseRecommendationMetadata": {
      "type": "structure",
      "members": {
        "RecommendationId": {
          "shape": "GenericString",
          "documentation": "<p>The ID for this specific recommendation.</p>"
        },
        "GenerationTimestamp": {
          "shape": "GenericString",
          "documentation": "<p>The timestamp for when AWS made this recommendation.</p>"
        }
      },
      "documentation": "<p>Information about this specific recommendation, such as the timestamp for when AWS made a specific recommendation.</p>"
    },
    "ReservationPurchaseRecommendationSummary": {
      "type": "structure",
      "members": {
        "TotalEstimatedMonthlySavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p>The total amount that AWS estimates that this recommendation could save you in a month.</p>"
        },
        "TotalEstimatedMonthlySavingsPercentage": {
          "shape": "GenericString",
          "documentation": "<p>The total amount that AWS estimates that this recommendation could save you in a month, as a percentage of your costs.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p>The currency code used for this recommendation.</p>"
        }
      },
      "documentation": "<p>A summary about this recommendation, such as the currency code, the amount that AWS estimates that you could save, and the total amount of reservation to purchase.</p>"
    },
    "ReservationPurchaseRecommendations": {
      "type": "list",
      "member": {
        "shape": "ReservationPurchaseRecommendation"
      }
    },
    "ReservationUtilizationGroup": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "ReservationGroupKey",
          "documentation": "<p>The key for a specific reservation attribute.</p>"
        },
        "Value": {
          "shape": "ReservationGroupValue",
          "documentation": "<p>The value of a specific reservation attribute.</p>"
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes for this group of reservations.</p>"
        },
        "Utilization": {
          "shape": "ReservationAggregates",
          "documentation": "<p>How much you used this group of reservations.</p>"
        }
      },
      "documentation": "<p>A group of reservations that share a set of attributes.</p>"
    },
    "ReservationUtilizationGroups": {
      "type": "list",
      "member": {
        "shape": "ReservationUtilizationGroup"
      }
    },
    "ReservedHours": {
      "type": "string"
    },
    "ReservedNormalizedUnits": {
      "type": "string"
    },
    "ResourceDetails": {
      "type": "structure",
      "members": {
        "EC2ResourceDetails": {
          "shape": "EC2ResourceDetails",
          "documentation": "<p>Details on the Amazon EC2 resource.</p>"
        }
      },
      "documentation": "<p>Details on the resource.</p>"
    },
    "ResourceUtilization": {
      "type": "structure",
      "members": {
        "EC2ResourceUtilization": {
          "shape": "EC2ResourceUtilization",
          "documentation": "<p>Utilization of current Amazon EC2 Instance </p>"
        }
      },
      "documentation": "<p>Resource utilization of current resource. </p>"
    },
    "ResultByTime": {
      "type": "structure",
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The time period that the result covers.</p>"
        },
        "Total": {
          "shape": "Metrics",
          "documentation": "<p>The total amount of cost or usage accrued during the time period.</p>"
        },
        "Groups": {
          "shape": "Groups",
          "documentation": "<p>The groups that this time period includes.</p>"
        },
        "Estimated": {
          "shape": "Estimated",
          "documentation": "<p>Whether the result is estimated.</p>"
        }
      },
      "documentation": "<p>The result that is associated with a time period.</p>"
    },
    "ResultsByTime": {
      "type": "list",
      "member": {
        "shape": "ResultByTime"
      }
    },
    "RightsizingRecommendation": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "GenericString",
          "documentation": "<p>The account that this recommendation is for.</p>"
        },
        "CurrentInstance": {
          "shape": "CurrentInstance",
          "documentation": "<p> Context regarding the current instance.</p>"
        },
        "RightsizingType": {
          "shape": "RightsizingType",
          "documentation": "<p>Recommendation to either terminate or modify the resource.</p>"
        },
        "ModifyRecommendationDetail": {
          "shape": "ModifyRecommendationDetail",
          "documentation": "<p> Details for modification recommendations. </p>"
        },
        "TerminateRecommendationDetail": {
          "shape": "TerminateRecommendationDetail",
          "documentation": "<p>Details for termination recommendations.</p>"
        }
      },
      "documentation": "<p>Recommendations to rightsize resources.</p>"
    },
    "RightsizingRecommendationConfiguration": {
      "type": "structure",
      "required": [
        "RecommendationTarget",
        "BenefitsConsidered"
      ],
      "members": {
        "RecommendationTarget": {
          "shape": "RecommendationTarget",
          "documentation": "<p> The option to see recommendations within the same instance family, or recommendations for instances across other families. The default value is <code>SAME_INSTANCE_FAMILY</code>. </p>"
        },
        "BenefitsConsidered": {
          "shape": "GenericBoolean",
          "documentation": "<p> The option to consider RI or Savings Plans discount benefits in your savings calculation. The default value is <code>TRUE</code>. </p>"
        }
      },
      "documentation": "<p> Enables you to customize recommendations across two attributes. You can choose to view recommendations for instances within the same instance families or across different instance families. You can also choose to view your estimated savings associated with recommendations with consideration of existing Savings Plans or RI benefits, or neither. </p>"
    },
    "RightsizingRecommendationList": {
      "type": "list",
      "member": {
        "shape": "RightsizingRecommendation"
      }
    },
    "RightsizingRecommendationMetadata": {
      "type": "structure",
      "members": {
        "RecommendationId": {
          "shape": "GenericString",
          "documentation": "<p> The ID for this specific recommendation.</p>"
        },
        "GenerationTimestamp": {
          "shape": "GenericString",
          "documentation": "<p> The timestamp for when Amazon Web Services made this recommendation.</p>"
        },
        "LookbackPeriodInDays": {
          "shape": "LookbackPeriodInDays",
          "documentation": "<p> How many days of previous usage that Amazon Web Services considers when making this recommendation.</p>"
        }
      },
      "documentation": "<p>Metadata for this recommendation set.</p>"
    },
    "RightsizingRecommendationSummary": {
      "type": "structure",
      "members": {
        "TotalRecommendationCount": {
          "shape": "GenericString",
          "documentation": "<p> Total number of instance recommendations.</p>"
        },
        "EstimatedTotalMonthlySavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p> Estimated total savings resulting from modifications, on a monthly basis.</p>"
        },
        "SavingsCurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p> The currency code that Amazon Web Services used to calculate the savings.</p>"
        },
        "SavingsPercentage": {
          "shape": "GenericString",
          "documentation": "<p> Savings percentage based on the recommended modifications, relative to the total On-Demand costs associated with these instances.</p>"
        }
      },
      "documentation": "<p> Summary of rightsizing recommendations </p>"
    },
    "RightsizingType": {
      "type": "string",
      "enum": [
        "TERMINATE",
        "MODIFY"
      ]
    },
    "SavingsPlanArn": {
      "type": "string"
    },
    "SavingsPlansAmortizedCommitment": {
      "type": "structure",
      "members": {
        "AmortizedRecurringCommitment": {
          "shape": "GenericString",
          "documentation": "<p>The amortized amount of your Savings Plans commitment that was purchased with either a <code>Partial</code> or a <code>NoUpfront</code>.</p>"
        },
        "AmortizedUpfrontCommitment": {
          "shape": "GenericString",
          "documentation": "<p>The amortized amount of your Savings Plans commitment that was purchased with an <code>Upfront</code> or <code>PartialUpfront</code> Savings Plans.</p>"
        },
        "TotalAmortizedCommitment": {
          "shape": "GenericString",
          "documentation": "<p>The total amortized amount of your Savings Plans commitment, regardless of your Savings Plans purchase method. </p>"
        }
      },
      "documentation": "<p>The amortized amount of Savings Plans purchased in a specific account during a specific time interval.</p>"
    },
    "SavingsPlansCoverage": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attribute that applies to a specific <code>Dimension</code>.</p>"
        },
        "Coverage": {
          "shape": "SavingsPlansCoverageData",
          "documentation": "<p>The amount of Savings Plans eligible usage that the Savings Plans covered.</p>"
        },
        "TimePeriod": {
          "shape": "DateInterval"
        }
      },
      "documentation": "<p>The amount of Savings Plans eligible usage that is covered by Savings Plans. All calculations consider the On-Demand equivalent of your Savings Plans usage.</p>"
    },
    "SavingsPlansCoverageData": {
      "type": "structure",
      "members": {
        "SpendCoveredBySavingsPlans": {
          "shape": "GenericString",
          "documentation": "<p>The amount of your Amazon Web Services usage that is covered by a Savings Plans.</p>"
        },
        "OnDemandCost": {
          "shape": "GenericString",
          "documentation": "<p>The cost of your Amazon Web Services usage at the public On-Demand rate.</p>"
        },
        "TotalCost": {
          "shape": "GenericString",
          "documentation": "<p>The total cost of your Amazon Web Services usage, regardless of your purchase option.</p>"
        },
        "CoveragePercentage": {
          "shape": "GenericString",
          "documentation": "<p>The percentage of your existing Savings Plans covered usage, divided by all of your eligible Savings Plans usage in an account(or set of accounts).</p>"
        }
      },
      "documentation": "<p>Specific coverage percentage, On-Demand costs, and spend covered by Savings Plans, and total Savings Plans costs for an account.</p>"
    },
    "SavingsPlansCoverages": {
      "type": "list",
      "member": {
        "shape": "SavingsPlansCoverage"
      }
    },
    "SavingsPlansDetails": {
      "type": "structure",
      "members": {
        "Region": {
          "shape": "GenericString",
          "documentation": "<p>A collection of AWS resources in a geographic area. Each AWS Region is isolated and independent of the other Regions.</p>"
        },
        "InstanceFamily": {
          "shape": "GenericString",
          "documentation": "<p>A group of instance types that Savings Plans applies to.</p>"
        },
        "OfferingId": {
          "shape": "GenericString",
          "documentation": "<p>The unique ID used to distinguish Savings Plans from one another.</p>"
        }
      },
      "documentation": "<p>Attribute details on a specific Savings Plan.</p>"
    },
    "SavingsPlansPurchaseRecommendation": {
      "type": "structure",
      "members": {
        "AccountScope": {
          "shape": "AccountScope",
          "documentation": "<p>The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the payer account and linked accounts if the value is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for individual linked accounts only.</p>"
        },
        "SavingsPlansType": {
          "shape": "SupportedSavingsPlansType",
          "documentation": "<p>The requested Savings Plans recommendation type.</p>"
        },
        "TermInYears": {
          "shape": "TermInYears",
          "documentation": "<p>The Savings Plans recommendation term in years, used to generate the recommendation.</p>"
        },
        "PaymentOption": {
          "shape": "PaymentOption",
          "documentation": "<p>The payment option used to generate the recommendation.</p>"
        },
        "LookbackPeriodInDays": {
          "shape": "LookbackPeriodInDays",
          "documentation": "<p>The lookback period in days, used to generate the recommendation.</p>"
        },
        "SavingsPlansPurchaseRecommendationDetails": {
          "shape": "SavingsPlansPurchaseRecommendationDetailList",
          "documentation": "<p>Details for the Savings Plans we recommend that you purchase to cover existing Savings Plans eligible workloads.</p>"
        },
        "SavingsPlansPurchaseRecommendationSummary": {
          "shape": "SavingsPlansPurchaseRecommendationSummary",
          "documentation": "<p>Summary metrics for your Savings Plans Recommendations. </p>"
        }
      },
      "documentation": "<p>Contains your request parameters, Savings Plan Recommendations Summary, and Details.</p>"
    },
    "SavingsPlansPurchaseRecommendationDetail": {
      "type": "structure",
      "members": {
        "SavingsPlansDetails": {
          "shape": "SavingsPlansDetails",
          "documentation": "<p>Details for your recommended Savings Plans.</p>"
        },
        "AccountId": {
          "shape": "GenericString",
          "documentation": "<p>The <code>AccountID</code> the recommendation is generated for.</p>"
        },
        "UpfrontCost": {
          "shape": "GenericString",
          "documentation": "<p>The upfront cost of the recommended Savings Plans, based on the selected payment option.</p>"
        },
        "EstimatedROI": {
          "shape": "GenericString",
          "documentation": "<p>The estimated return on investment based on the recommended Savings Plans purchased. This is calculated as <code>estimatedSavingsAmount</code>/ <code>estimatedSPCost</code>*100.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p>The currency code Amazon Web Services used to generate the recommendations and present potential savings.</p>"
        },
        "EstimatedSPCost": {
          "shape": "GenericString",
          "documentation": "<p>The cost of the recommended Savings Plans over the length of the lookback period.</p>"
        },
        "EstimatedOnDemandCost": {
          "shape": "GenericString",
          "documentation": "<p>The remaining On-Demand cost estimated to not be covered by the recommended Savings Plans, over the length of the lookback period.</p>"
        },
        "EstimatedOnDemandCostWithCurrentCommitment": {
          "shape": "GenericString",
          "documentation": "<p> The estimated On-Demand costs you would expect with no additional commitment, based on your usage of the selected time period and the Savings Plans you own. </p>"
        },
        "EstimatedSavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p>The estimated savings amount based on the recommended Savings Plans over the length of the lookback period.</p>"
        },
        "EstimatedSavingsPercentage": {
          "shape": "GenericString",
          "documentation": "<p>The estimated savings percentage relative to the total cost of applicable On-Demand usage over the lookback period.</p>"
        },
        "HourlyCommitmentToPurchase": {
          "shape": "GenericString",
          "documentation": "<p>The recommended hourly commitment level for the Savings Plans type, and configuration based on the usage during the lookback period.</p>"
        },
        "EstimatedAverageUtilization": {
          "shape": "GenericString",
          "documentation": "<p>The estimated utilization of the recommended Savings Plans.</p>"
        },
        "EstimatedMonthlySavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p>The estimated monthly savings amount, based on the recommended Savings Plans.</p>"
        },
        "CurrentMinimumHourlyOnDemandSpend": {
          "shape": "GenericString",
          "documentation": "<p>The lowest value of hourly On-Demand spend over the lookback period of the applicable usage type.</p>"
        },
        "CurrentMaximumHourlyOnDemandSpend": {
          "shape": "GenericString",
          "documentation": "<p>The highest value of hourly On-Demand spend over the lookback period of the applicable usage type.</p>"
        },
        "CurrentAverageHourlyOnDemandSpend": {
          "shape": "GenericString",
          "documentation": "<p>The average value of hourly On-Demand spend over the lookback period of the applicable usage type.</p>"
        }
      },
      "documentation": "<p>Details for your recommended Savings Plans.</p>"
    },
    "SavingsPlansPurchaseRecommendationDetailList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlansPurchaseRecommendationDetail"
      }
    },
    "SavingsPlansPurchaseRecommendationMetadata": {
      "type": "structure",
      "members": {
        "RecommendationId": {
          "shape": "GenericString",
          "documentation": "<p>The unique identifier for the recommendation set.</p>"
        },
        "GenerationTimestamp": {
          "shape": "GenericString",
          "documentation": "<p>The timestamp showing when the recommendations were generated.</p>"
        }
      },
      "documentation": "<p>Metadata about your Savings Plans Purchase Recommendations.</p>"
    },
    "SavingsPlansPurchaseRecommendationSummary": {
      "type": "structure",
      "members": {
        "EstimatedROI": {
          "shape": "GenericString",
          "documentation": "<p>The estimated return on investment based on the recommended Savings Plans and estimated savings.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p>The currency code Amazon Web Services used to generate the recommendations and present potential savings.</p>"
        },
        "EstimatedTotalCost": {
          "shape": "GenericString",
          "documentation": "<p>The estimated total cost of the usage after purchasing the recommended Savings Plans. This is a sum of the cost of Savings Plans during this term, and the remaining On-Demand usage.</p>"
        },
        "CurrentOnDemandSpend": {
          "shape": "GenericString",
          "documentation": "<p>The current total on demand spend of the applicable usage types over the lookback period.</p>"
        },
        "EstimatedSavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p>The estimated total savings over the lookback period, based on the purchase of the recommended Savings Plans.</p>"
        },
        "TotalRecommendationCount": {
          "shape": "GenericString",
          "documentation": "<p>The aggregate number of Savings Plans recommendations that exist for your account.</p>"
        },
        "DailyCommitmentToPurchase": {
          "shape": "GenericString",
          "documentation": "<p>The recommended Savings Plans cost on a daily (24 hourly) basis.</p>"
        },
        "HourlyCommitmentToPurchase": {
          "shape": "GenericString",
          "documentation": "<p>The recommended hourly commitment based on the recommendation parameters.</p>"
        },
        "EstimatedSavingsPercentage": {
          "shape": "GenericString",
          "documentation": "<p>The estimated savings relative to the total cost of On-Demand usage, over the lookback period. This is calculated as <code>estimatedSavingsAmount</code>/ <code>CurrentOnDemandSpend</code>*100.</p>"
        },
        "EstimatedMonthlySavingsAmount": {
          "shape": "GenericString",
          "documentation": "<p>The estimated monthly savings amount, based on the recommended Savings Plans purchase.</p>"
        },
        "EstimatedOnDemandCostWithCurrentCommitment": {
          "shape": "GenericString",
          "documentation": "<p> The estimated On-Demand costs you would expect with no additional commitment, based on your usage of the selected time period and the Savings Plans you own. </p>"
        }
      },
      "documentation": "<p>Summary metrics for your Savings Plans Purchase Recommendations.</p>"
    },
    "SavingsPlansSavings": {
      "type": "structure",
      "members": {
        "NetSavings": {
          "shape": "GenericString",
          "documentation": "<p>The savings amount that you are accumulating for the usage that is covered by a Savings Plans, when compared to the On-Demand equivalent of the same usage.</p>"
        },
        "OnDemandCostEquivalent": {
          "shape": "GenericString",
          "documentation": "<p>How much the amount that the usage would have cost if it was accrued at the On-Demand rate.</p>"
        }
      },
      "documentation": "<p>The amount of savings you're accumulating, against the public On-Demand rate of the usage accrued in an account.</p>"
    },
    "SavingsPlansUtilization": {
      "type": "structure",
      "members": {
        "TotalCommitment": {
          "shape": "GenericString",
          "documentation": "<p>The total amount of Savings Plans commitment that's been purchased in an account (or set of accounts).</p>"
        },
        "UsedCommitment": {
          "shape": "GenericString",
          "documentation": "<p>The amount of your Savings Plans commitment that was consumed from Savings Plans eligible usage in a specific period.</p>"
        },
        "UnusedCommitment": {
          "shape": "GenericString",
          "documentation": "<p>The amount of your Savings Plans commitment that was not consumed from Savings Plans eligible usage in a specific period.</p>"
        },
        "UtilizationPercentage": {
          "shape": "GenericString",
          "documentation": "<p>The amount of <code>UsedCommitment</code> divided by the <code>TotalCommitment</code> for your Savings Plans.</p>"
        }
      },
      "documentation": "<p>The measurement of how well you are using your existing Savings Plans.</p>"
    },
    "SavingsPlansUtilizationAggregates": {
      "type": "structure",
      "required": [
        "Utilization"
      ],
      "members": {
        "Utilization": {
          "shape": "SavingsPlansUtilization",
          "documentation": "<p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.</p>"
        },
        "Savings": {
          "shape": "SavingsPlansSavings",
          "documentation": "<p>The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans, as well as the <code>onDemandCostEquivalent</code> of the Savings Plans when considering the utilization rate.</p>"
        },
        "AmortizedCommitment": {
          "shape": "SavingsPlansAmortizedCommitment",
          "documentation": "<p>The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.</p>"
        }
      },
      "documentation": "<p>The aggregated utilization metrics for your Savings Plans usage.</p>"
    },
    "SavingsPlansUtilizationByTime": {
      "type": "structure",
      "required": [
        "TimePeriod",
        "Utilization"
      ],
      "members": {
        "TimePeriod": {
          "shape": "DateInterval"
        },
        "Utilization": {
          "shape": "SavingsPlansUtilization",
          "documentation": "<p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.</p>"
        },
        "Savings": {
          "shape": "SavingsPlansSavings",
          "documentation": "<p>The amount saved by using existing Savings Plans. Savings returns both net savings from Savings Plans as well as the <code>onDemandCostEquivalent</code> of the Savings Plans when considering the utilization rate.</p>"
        },
        "AmortizedCommitment": {
          "shape": "SavingsPlansAmortizedCommitment",
          "documentation": "<p>The total amortized commitment for a Savings Plans. This includes the sum of the upfront and recurring Savings Plans fees.</p>"
        }
      },
      "documentation": "<p>The amount of Savings Plans utilization, in hours.</p>"
    },
    "SavingsPlansUtilizationDetail": {
      "type": "structure",
      "members": {
        "SavingsPlanArn": {
          "shape": "SavingsPlanArn",
          "documentation": "<p>The unique Amazon Resource Name (ARN) for a particular Savings Plan.</p>"
        },
        "Attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attribute that applies to a specific <code>Dimension</code>.</p>"
        },
        "Utilization": {
          "shape": "SavingsPlansUtilization",
          "documentation": "<p>A ratio of your effectiveness of using existing Savings Plans to apply to workloads that are Savings Plans eligible.</p>"
        },
        "Savings": {
          "shape": "SavingsPlansSavings",
          "documentation": "<p>The amount saved by using existing Savings Plans. Savings returns both net savings from savings plans as well as the <code>onDemandCostEquivalent</code> of the Savings Plans when considering the utilization rate.</p>"
        },
        "AmortizedCommitment": {
          "shape": "SavingsPlansAmortizedCommitment",
          "documentation": "<p>The total amortized commitment for a Savings Plans. Includes the sum of the upfront and recurring Savings Plans fees.</p>"
        }
      },
      "documentation": "<p>A single daily or monthly Savings Plans utilization rate, and details for your account. Master accounts in an organization have access to member accounts. You can use <code>GetDimensionValues</code> to determine the possible dimension values. </p>"
    },
    "SavingsPlansUtilizationDetails": {
      "type": "list",
      "member": {
        "shape": "SavingsPlansUtilizationDetail"
      }
    },
    "SavingsPlansUtilizationsByTime": {
      "type": "list",
      "member": {
        "shape": "SavingsPlansUtilizationByTime"
      }
    },
    "SearchString": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "ServiceSpecification": {
      "type": "structure",
      "members": {
        "EC2Specification": {
          "shape": "EC2Specification",
          "documentation": "<p>The Amazon EC2 hardware specifications that you want AWS to provide recommendations for.</p>"
        }
      },
      "documentation": "<p>Hardware specifications for the service that you want recommendations for.</p>"
    },
    "SupportedSavingsPlansType": {
      "type": "string",
      "enum": [
        "COMPUTE_SP",
        "EC2_INSTANCE_SP"
      ]
    },
    "TagKey": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Entity"
      }
    },
    "TagValues": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key for the tag.</p>"
        },
        "Values": {
          "shape": "Values",
          "documentation": "<p>The specific value of the tag.</p>"
        },
        "MatchOptions": {
          "shape": "MatchOptions",
          "documentation": "<p>The match options that you can use to filter your results. <code>MatchOptions</code> is only applicable for only applicable for actions related to Cost Category. The default values for <code>MatchOptions</code> is <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>"
        }
      },
      "documentation": "<p>The values that are available for a tag.</p>"
    },
    "TagValuesList": {
      "type": "list",
      "member": {
        "shape": "TagValues"
      }
    },
    "TargetInstance": {
      "type": "structure",
      "members": {
        "EstimatedMonthlyCost": {
          "shape": "GenericString",
          "documentation": "<p> Expected cost to operate this instance type on a monthly basis.</p>"
        },
        "EstimatedMonthlySavings": {
          "shape": "GenericString",
          "documentation": "<p> Estimated savings resulting from modification, on a monthly basis.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p> The currency code that Amazon Web Services used to calculate the costs for this instance.</p>"
        },
        "DefaultTargetInstance": {
          "shape": "GenericBoolean",
          "documentation": "<p> Indicates whether or not this recommendation is the defaulted Amazon Web Services recommendation.</p>"
        },
        "ResourceDetails": {
          "shape": "ResourceDetails",
          "documentation": "<p> Details on the target instance type. </p>"
        },
        "ExpectedResourceUtilization": {
          "shape": "ResourceUtilization",
          "documentation": "<p> Expected utilization metrics for target instance type.</p>"
        }
      },
      "documentation": "<p> Details on recommended instance.</p>"
    },
    "TargetInstancesList": {
      "type": "list",
      "member": {
        "shape": "TargetInstance"
      }
    },
    "TermInYears": {
      "type": "string",
      "enum": [
        "ONE_YEAR",
        "THREE_YEARS"
      ]
    },
    "TerminateRecommendationDetail": {
      "type": "structure",
      "members": {
        "EstimatedMonthlySavings": {
          "shape": "GenericString",
          "documentation": "<p> Estimated savings resulting from modification, on a monthly basis.</p>"
        },
        "CurrencyCode": {
          "shape": "GenericString",
          "documentation": "<p> The currency code that Amazon Web Services used to calculate the costs for this instance.</p>"
        }
      },
      "documentation": "<p> Details on termination recommendation. </p>"
    },
    "TotalActualHours": {
      "type": "string"
    },
    "TotalActualUnits": {
      "type": "string"
    },
    "TotalAmortizedFee": {
      "type": "string"
    },
    "TotalPotentialRISavings": {
      "type": "string"
    },
    "TotalRunningHours": {
      "type": "string"
    },
    "TotalRunningNormalizedUnits": {
      "type": "string"
    },
    "UnusedHours": {
      "type": "string"
    },
    "UnusedUnits": {
      "type": "string"
    },
    "UpdateCostCategoryDefinitionRequest": {
      "type": "structure",
      "required": [
        "CostCategoryArn",
        "RuleVersion",
        "Rules"
      ],
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p>The unique identifier for your Cost Category.</p>"
        },
        "RuleVersion": {
          "shape": "CostCategoryRuleVersion"
        },
        "Rules": {
          "shape": "CostCategoryRulesList",
          "documentation": "<p>The <code>Expression</code> object used to categorize costs. For more information, see <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html\">CostCategoryRule </a>. </p>"
        }
      }
    },
    "UpdateCostCategoryDefinitionResponse": {
      "type": "structure",
      "members": {
        "CostCategoryArn": {
          "shape": "Arn",
          "documentation": "<p> The unique identifier for your Cost Category. </p>"
        },
        "EffectiveStart": {
          "shape": "ZonedDateTime",
          "documentation": "<p> The Cost Category's effective start date. </p>"
        }
      }
    },
    "UtilizationByTime": {
      "type": "structure",
      "members": {
        "TimePeriod": {
          "shape": "DateInterval",
          "documentation": "<p>The period of time that this utilization was used for.</p>"
        },
        "Groups": {
          "shape": "ReservationUtilizationGroups",
          "documentation": "<p>The groups that this utilization result uses.</p>"
        },
        "Total": {
          "shape": "ReservationAggregates",
          "documentation": "<p>The total number of reservation hours that were used.</p>"
        }
      },
      "documentation": "<p>The amount of utilization, in hours.</p>"
    },
    "UtilizationPercentage": {
      "type": "string"
    },
    "UtilizationPercentageInUnits": {
      "type": "string"
    },
    "UtilizationsByTime": {
      "type": "list",
      "member": {
        "shape": "UtilizationByTime"
      }
    },
    "Value": {
      "type": "string",
      "max": 1024,
      "min": 0,
      "pattern": "[\\S\\s]*"
    },
    "Values": {
      "type": "list",
      "member": {
        "shape": "Value"
      }
    },
    "YearMonthDay": {
      "type": "string",
      "max": 40,
      "min": 0,
      "pattern": "(\\d{4}-\\d{2}-\\d{2})(T\\d{2}:\\d{2}:\\d{2}Z)?"
    },
    "ZonedDateTime": {
      "type": "string",
      "documentation": "<p>The time period that you want the usage and costs for.</p>",
      "max": 25,
      "min": 20,
      "pattern": "^\\d{4}-\\d\\d-\\d\\dT\\d\\d:\\d\\d:\\d\\d(([+-]\\d\\d:\\d\\d)|Z)$"
    }
  },
  "documentation": "<p>The Cost Explorer API enables you to programmatically query your cost and usage data. You can query for aggregated data such as total monthly costs or total daily usage. You can also query for granular data, such as the number of daily write operations for Amazon DynamoDB database tables in your production environment. </p> <p>Service Endpoint</p> <p>The Cost Explorer API provides the following endpoint:</p> <ul> <li> <p> <code>https://ce.us-east-1.amazonaws.com</code> </p> </li> </ul> <p>For information about costs associated with the Cost Explorer API, see <a href=\"http://aws.amazon.com/aws-cost-management/pricing/\">AWS Cost Management Pricing</a>.</p>"
}
]===]))
