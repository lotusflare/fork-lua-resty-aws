local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-10-20",
    "endpointPrefix": "budgets",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "AWSBudgets",
    "serviceFullName": "AWS Budgets",
    "serviceId": "Budgets",
    "signatureVersion": "v4",
    "targetPrefix": "AWSBudgetServiceGateway",
    "uid": "budgets-2016-10-20"
  },
  "operations": {
    "CreateBudget": {
      "name": "CreateBudget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateBudgetRequest"
      },
      "output": {
        "shape": "CreateBudgetResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "CreationLimitExceededException"
        },
        {
          "shape": "DuplicateRecordException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a budget and, if included, notifications and subscribers. </p> <important> <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples\">Examples</a> section. </p> </important>"
    },
    "CreateNotification": {
      "name": "CreateNotification",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateNotificationRequest"
      },
      "output": {
        "shape": "CreateNotificationResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "CreationLimitExceededException"
        },
        {
          "shape": "DuplicateRecordException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a notification. You must create the budget before you create the associated notification.</p>"
    },
    "CreateSubscriber": {
      "name": "CreateSubscriber",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSubscriberRequest"
      },
      "output": {
        "shape": "CreateSubscriberResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "CreationLimitExceededException"
        },
        {
          "shape": "DuplicateRecordException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>"
    },
    "DeleteBudget": {
      "name": "DeleteBudget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBudgetRequest"
      },
      "output": {
        "shape": "DeleteBudgetResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes a budget. You can delete your budget at any time.</p> <important> <p>Deleting a budget also deletes the notifications and subscribers that are associated with that budget.</p> </important>"
    },
    "DeleteNotification": {
      "name": "DeleteNotification",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteNotificationRequest"
      },
      "output": {
        "shape": "DeleteNotificationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes a notification.</p> <important> <p>Deleting a notification also deletes the subscribers that are associated with the notification.</p> </important>"
    },
    "DeleteSubscriber": {
      "name": "DeleteSubscriber",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSubscriberRequest"
      },
      "output": {
        "shape": "DeleteSubscriberResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes a subscriber.</p> <important> <p>Deleting the last subscriber to a notification also deletes the notification.</p> </important>"
    },
    "DescribeBudget": {
      "name": "DescribeBudget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeBudgetRequest"
      },
      "output": {
        "shape": "DescribeBudgetResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes a budget.</p> <important> <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples\">Examples</a> section. </p> </important>"
    },
    "DescribeBudgetPerformanceHistory": {
      "name": "DescribeBudgetPerformanceHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeBudgetPerformanceHistoryRequest"
      },
      "output": {
        "shape": "DescribeBudgetPerformanceHistoryResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ExpiredNextTokenException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes the history for <code>DAILY</code>, <code>MONTHLY</code>, and <code>QUARTERLY</code> budgets. Budget history isn't available for <code>ANNUAL</code> budgets.</p>"
    },
    "DescribeBudgets": {
      "name": "DescribeBudgets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeBudgetsRequest"
      },
      "output": {
        "shape": "DescribeBudgetsResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ExpiredNextTokenException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the budgets that are associated with an account.</p> <important> <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples\">Examples</a> section. </p> </important>"
    },
    "DescribeNotificationsForBudget": {
      "name": "DescribeNotificationsForBudget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeNotificationsForBudgetRequest"
      },
      "output": {
        "shape": "DescribeNotificationsForBudgetResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ExpiredNextTokenException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the notifications that are associated with a budget.</p>"
    },
    "DescribeSubscribersForNotification": {
      "name": "DescribeSubscribersForNotification",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSubscribersForNotificationRequest"
      },
      "output": {
        "shape": "DescribeSubscribersForNotificationResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ExpiredNextTokenException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the subscribers that are associated with a notification.</p>"
    },
    "UpdateBudget": {
      "name": "UpdateBudget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateBudgetRequest"
      },
      "output": {
        "shape": "UpdateBudgetResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When you modify a budget, the <code>calculatedSpend</code> drops to zero until AWS has new usage data to use for forecasting.</p> <important> <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href=\"https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples\">Examples</a> section. </p> </important>"
    },
    "UpdateNotification": {
      "name": "UpdateNotification",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateNotificationRequest"
      },
      "output": {
        "shape": "UpdateNotificationResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "DuplicateRecordException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a notification.</p>"
    },
    "UpdateSubscriber": {
      "name": "UpdateSubscriber",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSubscriberRequest"
      },
      "output": {
        "shape": "UpdateSubscriberResponse"
      },
      "errors": [
        {
          "shape": "InternalErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "DuplicateRecordException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a subscriber.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "documentation": "<p>The account ID of the user. It should be a 12-digit number.</p>",
      "max": 12,
      "min": 12,
      "pattern": "\\d{12}"
    },
    "Budget": {
      "type": "structure",
      "required": [
        "BudgetName",
        "TimeUnit",
        "BudgetType"
      ],
      "members": {
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of a budget. The name must be unique within an account. The <code>:</code> and <code>\\</code> characters aren't allowed in <code>BudgetName</code>.</p>"
        },
        "BudgetLimit": {
          "shape": "Spend",
          "documentation": "<p>The total amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage that you want to track with your budget.</p> <p> <code>BudgetLimit</code> is required for cost or usage budgets, but optional for RI or Savings Plans utilization or coverage budgets. RI and Savings Plans utilization or coverage budgets default to <code>100</code>, which is the only valid value for RI or Savings Plans utilization or coverage budgets. You can't use <code>BudgetLimit</code> with <code>PlannedBudgetLimits</code> for <code>CreateBudget</code> and <code>UpdateBudget</code> actions. </p>"
        },
        "PlannedBudgetLimits": {
          "shape": "PlannedBudgetLimits",
          "documentation": "<p>A map containing multiple <code>BudgetLimit</code>, including current or future limits.</p> <p> <code>PlannedBudgetLimits</code> is available for cost or usage budget and supports monthly and quarterly <code>TimeUnit</code>. </p> <p>For monthly budgets, provide 12 months of <code>PlannedBudgetLimits</code> values. This must start from the current month and include the next 11 months. The <code>key</code> is the start of the month, <code>UTC</code> in epoch seconds. </p> <p>For quarterly budgets, provide 4 quarters of <code>PlannedBudgetLimits</code> value entries in standard calendar quarter increments. This must start from the current quarter and include the next 3 quarters. The <code>key</code> is the start of the quarter, <code>UTC</code> in epoch seconds. </p> <p>If the planned budget expires before 12 months for monthly or 4 quarters for quarterly, provide the <code>PlannedBudgetLimits</code> values only for the remaining periods.</p> <p>If the budget begins at a date in the future, provide <code>PlannedBudgetLimits</code> values from the start date of the budget. </p> <p>After all of the <code>BudgetLimit</code> values in <code>PlannedBudgetLimits</code> are used, the budget continues to use the last limit as the <code>BudgetLimit</code>. At that point, the planned budget provides the same experience as a fixed budget. </p> <p> <code>DescribeBudget</code> and <code>DescribeBudgets</code> response along with <code>PlannedBudgetLimits</code> will also contain <code>BudgetLimit</code> representing the current month or quarter limit present in <code>PlannedBudgetLimits</code>. This only applies to budgets created with <code>PlannedBudgetLimits</code>. Budgets created without <code>PlannedBudgetLimits</code> will only contain <code>BudgetLimit</code>, and no <code>PlannedBudgetLimits</code>.</p>"
        },
        "CostFilters": {
          "shape": "CostFilters",
          "documentation": "<p>The cost filters, such as service or tag, that are applied to a budget.</p> <p>AWS Budgets supports the following services as a filter for RI budgets:</p> <ul> <li> <p>Amazon Elastic Compute Cloud - Compute</p> </li> <li> <p>Amazon Redshift</p> </li> <li> <p>Amazon Relational Database Service</p> </li> <li> <p>Amazon ElastiCache</p> </li> <li> <p>Amazon Elasticsearch Service</p> </li> </ul>"
        },
        "CostTypes": {
          "shape": "CostTypes",
          "documentation": "<p>The types of costs that are included in this <code>COST</code> budget.</p> <p> <code>USAGE</code>, <code>RI_UTILIZATION</code>, <code>RI_COVERAGE</code>, <code>Savings_Plans_Utilization</code>, and <code>Savings_Plans_Coverage</code> budgets do not have <code>CostTypes</code>.</p>"
        },
        "TimeUnit": {
          "shape": "TimeUnit",
          "documentation": "<p>The length of time until a budget resets the actual and forecasted spend. <code>DAILY</code> is available only for <code>RI_UTILIZATION</code>, <code>RI_COVERAGE</code>, <code>Savings_Plans_Utilization</code>, and <code>Savings_Plans_Coverage</code> budgets.</p>"
        },
        "TimePeriod": {
          "shape": "TimePeriod",
          "documentation": "<p>The period of time that is covered by a budget. The period has a start date and an end date. The start date must come before the end date. The end date must come before <code>06/15/87 00:00 UTC</code>. </p> <p>If you create your budget and don't specify a start date, AWS defaults to the start of your chosen time period (DAILY, MONTHLY, QUARTERLY, or ANNUALLY). For example, if you created your budget on January 24, 2018, chose <code>DAILY</code>, and didn't set a start date, AWS set your start date to <code>01/24/18 00:00 UTC</code>. If you chose <code>MONTHLY</code>, AWS set your start date to <code>01/01/18 00:00 UTC</code>. If you didn't specify an end date, AWS set your end date to <code>06/15/87 00:00 UTC</code>. The defaults are the same for the AWS Billing and Cost Management console and the API. </p> <p>You can change either date with the <code>UpdateBudget</code> operation.</p> <p>After the end date, AWS deletes the budget and all associated notifications and subscribers.</p>"
        },
        "CalculatedSpend": {
          "shape": "CalculatedSpend",
          "documentation": "<p>The actual and forecasted cost or usage that the budget tracks.</p>"
        },
        "BudgetType": {
          "shape": "BudgetType",
          "documentation": "<p>Whether this budget tracks costs, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage.</p>"
        },
        "LastUpdatedTime": {
          "shape": "GenericTimestamp",
          "documentation": "<p>The last time that you updated this budget.</p>"
        }
      },
      "documentation": "<p>Represents the output of the <code>CreateBudget</code> operation. The content consists of the detailed metadata and data file information, and the current status of the <code>budget</code> object.</p> <p>This is the ARN pattern for a budget: </p> <p> <code>arn:aws:budgetservice::AccountId:budget/budgetName</code> </p>"
    },
    "BudgetName": {
      "type": "string",
      "documentation": "<p> A string that represents the budget name. The \":\" and \"\\\" characters aren't allowed.</p>",
      "max": 100,
      "min": 1,
      "pattern": "[^:\\\\]+"
    },
    "BudgetPerformanceHistory": {
      "type": "structure",
      "members": {
        "BudgetName": {
          "shape": "BudgetName"
        },
        "BudgetType": {
          "shape": "BudgetType"
        },
        "CostFilters": {
          "shape": "CostFilters",
          "documentation": "<p>The history of the cost filters for a budget during the specified time period.</p>"
        },
        "CostTypes": {
          "shape": "CostTypes",
          "documentation": "<p>The history of the cost types for a budget during the specified time period.</p>"
        },
        "TimeUnit": {
          "shape": "TimeUnit"
        },
        "BudgetedAndActualAmountsList": {
          "shape": "BudgetedAndActualAmountsList",
          "documentation": "<p>A list of amounts of cost or usage that you created budgets for, compared to your actual costs or usage.</p>"
        }
      },
      "documentation": "<p>A history of the state of a budget at the end of the budget's specified time period.</p>"
    },
    "BudgetType": {
      "type": "string",
      "documentation": "<p> The type of a budget. It must be one of the following types: </p> <p> <code>COST</code>, <code>USAGE</code>, <code>RI_UTILIZATION</code>, or <code>RI_COVERAGE</code>.</p>",
      "enum": [
        "USAGE",
        "COST",
        "RI_UTILIZATION",
        "RI_COVERAGE",
        "SAVINGS_PLANS_UTILIZATION",
        "SAVINGS_PLANS_COVERAGE"
      ]
    },
    "BudgetedAndActualAmounts": {
      "type": "structure",
      "members": {
        "BudgetedAmount": {
          "shape": "Spend",
          "documentation": "<p>The amount of cost or usage that you created the budget for.</p>"
        },
        "ActualAmount": {
          "shape": "Spend",
          "documentation": "<p>Your actual costs or usage for a budget period.</p>"
        },
        "TimePeriod": {
          "shape": "TimePeriod",
          "documentation": "<p>The time period covered by this budget comparison.</p>"
        }
      },
      "documentation": "<p>The amount of cost or usage that you created the budget for, compared to your actual costs or usage.</p>"
    },
    "BudgetedAndActualAmountsList": {
      "type": "list",
      "member": {
        "shape": "BudgetedAndActualAmounts"
      }
    },
    "Budgets": {
      "type": "list",
      "member": {
        "shape": "Budget"
      },
      "documentation": "<p> A list of budgets.</p>"
    },
    "CalculatedSpend": {
      "type": "structure",
      "required": [
        "ActualSpend"
      ],
      "members": {
        "ActualSpend": {
          "shape": "Spend",
          "documentation": "<p>The amount of cost, usage, or RI units that you have used.</p>"
        },
        "ForecastedSpend": {
          "shape": "Spend",
          "documentation": "<p>The amount of cost, usage, or RI units that you are forecasted to use.</p>"
        }
      },
      "documentation": "<p>The spend objects that are associated with this budget. The <code>actualSpend</code> tracks how much you've used, cost, usage, or RI units, and the <code>forecastedSpend</code> tracks how much you are predicted to spend if your current usage remains steady.</p> <p>For example, if it is the 20th of the month and you have spent <code>50</code> dollars on Amazon EC2, your <code>actualSpend</code> is <code>50 USD</code>, and your <code>forecastedSpend</code> is <code>75 USD</code>.</p>"
    },
    "ComparisonOperator": {
      "type": "string",
      "documentation": "<p> The comparison operator of a notification. Currently the service supports the following operators:</p> <p> <code>GREATER_THAN</code>, <code>LESS_THAN</code>, <code>EQUAL_TO</code> </p>",
      "enum": [
        "GREATER_THAN",
        "LESS_THAN",
        "EQUAL_TO"
      ]
    },
    "CostFilters": {
      "type": "map",
      "key": {
        "shape": "GenericString"
      },
      "value": {
        "shape": "DimensionValues"
      },
      "documentation": "<p> A map that represents the cost filters that are applied to the budget.</p>"
    },
    "CostTypes": {
      "type": "structure",
      "members": {
        "IncludeTax": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes taxes.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeSubscription": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes subscriptions.</p> <p>The default value is <code>true</code>.</p>"
        },
        "UseBlended": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget uses a blended rate.</p> <p>The default value is <code>false</code>.</p>"
        },
        "IncludeRefund": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes refunds.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeCredit": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes credits.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeUpfront": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes upfront RI costs.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeRecurring": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes recurring fees such as monthly RI fees.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeOtherSubscription": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes non-RI subscription costs.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeSupport": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes support subscription fees.</p> <p>The default value is <code>true</code>.</p>"
        },
        "IncludeDiscount": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget includes discounts.</p> <p>The default value is <code>true</code>.</p>"
        },
        "UseAmortized": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether a budget uses the amortized rate.</p> <p>The default value is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>The types of cost that are included in a <code>COST</code> budget, such as tax and subscriptions.</p> <p> <code>USAGE</code>, <code>RI_UTILIZATION</code>, and <code>RI_COVERAGE</code> budgets do not have <code>CostTypes</code>.</p>"
    },
    "CreateBudgetRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Budget"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget.</p>"
        },
        "Budget": {
          "shape": "Budget",
          "documentation": "<p>The budget object that you want to create.</p>"
        },
        "NotificationsWithSubscribers": {
          "shape": "NotificationWithSubscribersList",
          "documentation": "<p>A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to 10 email subscribers. If you include notifications and subscribers in your <code>CreateBudget</code> call, AWS creates the notifications and subscribers for you.</p>"
        }
      },
      "documentation": "<p> Request of CreateBudget </p>"
    },
    "CreateBudgetResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of CreateBudget </p>"
    },
    "CreateNotificationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "Notification",
        "Subscribers"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget that you want to create a notification for.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget that you want AWS to notify you about. Budget names must be unique within an account.</p>"
        },
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification that you want to create.</p>"
        },
        "Subscribers": {
          "shape": "Subscribers",
          "documentation": "<p>A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to 10 email subscribers.</p>"
        }
      },
      "documentation": "<p> Request of CreateNotification </p>"
    },
    "CreateNotificationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of CreateNotification </p>"
    },
    "CreateSubscriberRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "Notification",
        "Subscriber"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget that you want to create a subscriber for.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget that you want to subscribe to. Budget names must be unique within an account.</p>"
        },
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification that you want to create a subscriber for.</p>"
        },
        "Subscriber": {
          "shape": "Subscriber",
          "documentation": "<p>The subscriber that you want to associate with a budget notification.</p>"
        }
      },
      "documentation": "<p> Request of CreateSubscriber </p>"
    },
    "CreateSubscriberResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of CreateSubscriber </p>"
    },
    "DeleteBudgetRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget that you want to delete.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget that you want to delete.</p>"
        }
      },
      "documentation": "<p> Request of DeleteBudget </p>"
    },
    "DeleteBudgetResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of DeleteBudget </p>"
    },
    "DeleteNotificationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "Notification"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget whose notification you want to delete.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget whose notification you want to delete.</p>"
        },
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification that you want to delete.</p>"
        }
      },
      "documentation": "<p> Request of DeleteNotification </p>"
    },
    "DeleteNotificationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of DeleteNotification </p>"
    },
    "DeleteSubscriberRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "Notification",
        "Subscriber"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget whose subscriber you want to delete.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget whose subscriber you want to delete.</p>"
        },
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification whose subscriber you want to delete.</p>"
        },
        "Subscriber": {
          "shape": "Subscriber",
          "documentation": "<p>The subscriber that you want to delete.</p>"
        }
      },
      "documentation": "<p> Request of DeleteSubscriber </p>"
    },
    "DeleteSubscriberResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of DeleteSubscriber </p>"
    },
    "DescribeBudgetPerformanceHistoryRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId"
        },
        "BudgetName": {
          "shape": "BudgetName"
        },
        "TimePeriod": {
          "shape": "TimePeriod",
          "documentation": "<p>Retrieves how often the budget went into an <code>ALARM</code> state for the specified time period.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults"
        },
        "NextToken": {
          "shape": "GenericString"
        }
      }
    },
    "DescribeBudgetPerformanceHistoryResponse": {
      "type": "structure",
      "members": {
        "BudgetPerformanceHistory": {
          "shape": "BudgetPerformanceHistory",
          "documentation": "<p>The history of how often the budget has gone into an <code>ALARM</code> state.</p> <p>For <code>DAILY</code> budgets, the history saves the state of the budget for the last 60 days. For <code>MONTHLY</code> budgets, the history saves the state of the budget for the current month plus the last 12 months. For <code>QUARTERLY</code> budgets, the history saves the state of the budget for the last four quarters.</p>"
        },
        "NextToken": {
          "shape": "GenericString"
        }
      }
    },
    "DescribeBudgetRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget that you want a description of.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget that you want a description of.</p>"
        }
      },
      "documentation": "<p> Request of DescribeBudget </p>"
    },
    "DescribeBudgetResponse": {
      "type": "structure",
      "members": {
        "Budget": {
          "shape": "Budget",
          "documentation": "<p>The description of the budget.</p>"
        }
      },
      "documentation": "<p> Response of DescribeBudget </p>"
    },
    "DescribeBudgetsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budgets that you want descriptions of.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>"
        }
      },
      "documentation": "<p> Request of DescribeBudgets </p>"
    },
    "DescribeBudgetsResponse": {
      "type": "structure",
      "members": {
        "Budgets": {
          "shape": "Budgets",
          "documentation": "<p>A list of budgets.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>"
        }
      },
      "documentation": "<p> Response of DescribeBudgets </p>"
    },
    "DescribeNotificationsForBudgetRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget whose notifications you want descriptions of.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget whose notifications you want descriptions of.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>"
        }
      },
      "documentation": "<p> Request of DescribeNotificationsForBudget </p>"
    },
    "DescribeNotificationsForBudgetResponse": {
      "type": "structure",
      "members": {
        "Notifications": {
          "shape": "Notifications",
          "documentation": "<p>A list of notifications that are associated with a budget.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>"
        }
      },
      "documentation": "<p> Response of GetNotificationsForBudget </p>"
    },
    "DescribeSubscribersForNotificationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "Notification"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget whose subscribers you want descriptions of.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget whose subscribers you want descriptions of.</p>"
        },
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification whose subscribers you want to list.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>"
        }
      },
      "documentation": "<p> Request of DescribeSubscribersForNotification </p>"
    },
    "DescribeSubscribersForNotificationResponse": {
      "type": "structure",
      "members": {
        "Subscribers": {
          "shape": "Subscribers",
          "documentation": "<p>A list of subscribers that are associated with a notification.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>"
        }
      },
      "documentation": "<p> Response of DescribeSubscribersForNotification </p>"
    },
    "DimensionValues": {
      "type": "list",
      "member": {
        "shape": "GenericString"
      }
    },
    "GenericString": {
      "type": "string",
      "documentation": "<p> A generic string.</p>",
      "max": 2147483647,
      "min": 0,
      "pattern": ".*"
    },
    "GenericTimestamp": {
      "type": "timestamp",
      "documentation": "<p> A generic time stamp. In Java, it is transformed to a <code>Date</code> object.</p>"
    },
    "MaxResults": {
      "type": "integer",
      "documentation": "<p> An integer that represents how many entries a paginated response contains. The maximum is 100.</p>",
      "box": true,
      "max": 100,
      "min": 1
    },
    "Notification": {
      "type": "structure",
      "required": [
        "NotificationType",
        "ComparisonOperator",
        "Threshold"
      ],
      "members": {
        "NotificationType": {
          "shape": "NotificationType",
          "documentation": "<p>Whether the notification is for how much you have spent (<code>ACTUAL</code>) or for how much you're forecasted to spend (<code>FORECASTED</code>).</p>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperator",
          "documentation": "<p>The comparison that is used for this notification.</p>"
        },
        "Threshold": {
          "shape": "NotificationThreshold",
          "documentation": "<p>The threshold that is associated with a notification. Thresholds are always a percentage.</p>"
        },
        "ThresholdType": {
          "shape": "ThresholdType",
          "documentation": "<p>The type of threshold for a notification. For <code>ABSOLUTE_VALUE</code> thresholds, AWS notifies you when you go over or are forecasted to go over your total cost threshold. For <code>PERCENTAGE</code> thresholds, AWS notifies you when you go over or are forecasted to go over a certain percentage of your forecasted spend. For example, if you have a budget for 200 dollars and you have a <code>PERCENTAGE</code> threshold of 80%, AWS notifies you when you go over 160 dollars.</p>"
        },
        "NotificationState": {
          "shape": "NotificationState",
          "documentation": "<p>Whether this notification is in alarm. If a budget notification is in the <code>ALARM</code> state, you have passed the set threshold for the budget.</p>"
        }
      },
      "documentation": "<p>A notification that is associated with a budget. A budget can have up to five notifications. </p> <p>Each notification must have at least one subscriber. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.</p> <p>For example, if you have a budget for 200 dollars and you want to be notified when you go over 160 dollars, create a notification with the following parameters:</p> <ul> <li> <p>A notificationType of <code>ACTUAL</code> </p> </li> <li> <p>A <code>thresholdType</code> of <code>PERCENTAGE</code> </p> </li> <li> <p>A <code>comparisonOperator</code> of <code>GREATER_THAN</code> </p> </li> <li> <p>A notification <code>threshold</code> of <code>80</code> </p> </li> </ul>"
    },
    "NotificationState": {
      "type": "string",
      "enum": [
        "OK",
        "ALARM"
      ]
    },
    "NotificationThreshold": {
      "type": "double",
      "documentation": "<p> The threshold of a notification. It must be a number between 0 and 1,000,000,000.</p>",
      "max": 1000000000,
      "min": 0
    },
    "NotificationType": {
      "type": "string",
      "documentation": "<p> The type of a notification. It must be ACTUAL or FORECASTED.</p>",
      "enum": [
        "ACTUAL",
        "FORECASTED"
      ]
    },
    "NotificationWithSubscribers": {
      "type": "structure",
      "required": [
        "Notification",
        "Subscribers"
      ],
      "members": {
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification that is associated with a budget.</p>"
        },
        "Subscribers": {
          "shape": "Subscribers",
          "documentation": "<p>A list of subscribers who are subscribed to this notification.</p>"
        }
      },
      "documentation": "<p>A notification with subscribers. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.</p>"
    },
    "NotificationWithSubscribersList": {
      "type": "list",
      "member": {
        "shape": "NotificationWithSubscribers"
      },
      "documentation": "<p> A list of notifications, each with a list of subscribers.</p>",
      "max": 5
    },
    "Notifications": {
      "type": "list",
      "member": {
        "shape": "Notification"
      },
      "documentation": "<p> A list of notifications.</p>"
    },
    "NullableBoolean": {
      "type": "boolean",
      "box": true
    },
    "NumericValue": {
      "type": "string",
      "documentation": "<p> A string that represents a numeric value.</p>",
      "max": 2147483647,
      "min": 1,
      "pattern": "([0-9]*\\.)?[0-9]+"
    },
    "PlannedBudgetLimits": {
      "type": "map",
      "key": {
        "shape": "GenericString"
      },
      "value": {
        "shape": "Spend"
      }
    },
    "Spend": {
      "type": "structure",
      "required": [
        "Amount",
        "Unit"
      ],
      "members": {
        "Amount": {
          "shape": "NumericValue",
          "documentation": "<p>The cost or usage amount that is associated with a budget forecast, actual spend, or budget threshold.</p>"
        },
        "Unit": {
          "shape": "UnitValue",
          "documentation": "<p>The unit of measurement that is used for the budget forecast, actual spend, or budget threshold, such as dollars or GB.</p>"
        }
      },
      "documentation": "<p>The amount of cost or usage that is measured for a budget.</p> <p>For example, a <code>Spend</code> for <code>3 GB</code> of S3 usage would have the following parameters:</p> <ul> <li> <p>An <code>Amount</code> of <code>3</code> </p> </li> <li> <p>A <code>unit</code> of <code>GB</code> </p> </li> </ul>"
    },
    "Subscriber": {
      "type": "structure",
      "required": [
        "SubscriptionType",
        "Address"
      ],
      "members": {
        "SubscriptionType": {
          "shape": "SubscriptionType",
          "documentation": "<p>The type of notification that AWS sends to a subscriber.</p>"
        },
        "Address": {
          "shape": "SubscriberAddress",
          "documentation": "<p>The address that AWS sends budget notifications to, either an SNS topic or an email.</p> <p>When you create a subscriber, the value of <code>Address</code> can't contain line breaks.</p>"
        }
      },
      "documentation": "<p>The subscriber to a budget notification. The subscriber consists of a subscription type and either an Amazon SNS topic or an email address.</p> <p>For example, an email subscriber would have the following parameters:</p> <ul> <li> <p>A <code>subscriptionType</code> of <code>EMAIL</code> </p> </li> <li> <p>An <code>address</code> of <code>example@example.com</code> </p> </li> </ul>"
    },
    "SubscriberAddress": {
      "type": "string",
      "documentation": "<p> A string that contains an email address or SNS topic for the subscriber's address.</p>",
      "max": 2147483647,
      "min": 1,
      "pattern": "(.*[\\n\\r\\t\\f\\ ]?)*",
      "sensitive": true
    },
    "Subscribers": {
      "type": "list",
      "member": {
        "shape": "Subscriber"
      },
      "documentation": "<p> A list of subscribers.</p>",
      "max": 11,
      "min": 1
    },
    "SubscriptionType": {
      "type": "string",
      "documentation": "<p> The subscription type of the subscriber. It can be SMS or EMAIL.</p>",
      "enum": [
        "SNS",
        "EMAIL"
      ]
    },
    "ThresholdType": {
      "type": "string",
      "documentation": "<p> The type of threshold for a notification. It can be PERCENTAGE or ABSOLUTE_VALUE.</p>",
      "enum": [
        "PERCENTAGE",
        "ABSOLUTE_VALUE"
      ]
    },
    "TimePeriod": {
      "type": "structure",
      "members": {
        "Start": {
          "shape": "GenericTimestamp",
          "documentation": "<p>The start date for a budget. If you created your budget and didn't specify a start date, AWS defaults to the start of your chosen time period (DAILY, MONTHLY, QUARTERLY, or ANNUALLY). For example, if you created your budget on January 24, 2018, chose <code>DAILY</code>, and didn't set a start date, AWS set your start date to <code>01/24/18 00:00 UTC</code>. If you chose <code>MONTHLY</code>, AWS set your start date to <code>01/01/18 00:00 UTC</code>. The defaults are the same for the AWS Billing and Cost Management console and the API.</p> <p>You can change your start date with the <code>UpdateBudget</code> operation.</p>"
        },
        "End": {
          "shape": "GenericTimestamp",
          "documentation": "<p>The end date for a budget. If you didn't specify an end date, AWS set your end date to <code>06/15/87 00:00 UTC</code>. The defaults are the same for the AWS Billing and Cost Management console and the API.</p> <p>After the end date, AWS deletes the budget and all associated notifications and subscribers. You can change your end date with the <code>UpdateBudget</code> operation.</p>"
        }
      },
      "documentation": "<p>The period of time that is covered by a budget. The period has a start date and an end date. The start date must come before the end date. There are no restrictions on the end date. </p>"
    },
    "TimeUnit": {
      "type": "string",
      "documentation": "<p> The time unit of the budget, such as MONTHLY or QUARTERLY.</p>",
      "enum": [
        "DAILY",
        "MONTHLY",
        "QUARTERLY",
        "ANNUALLY"
      ]
    },
    "UnitValue": {
      "type": "string",
      "documentation": "<p> A string that represents the spend unit of a budget. It can't be null or empty.</p>",
      "max": 2147483647,
      "min": 1,
      "pattern": ".*"
    },
    "UpdateBudgetRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "NewBudget"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget that you want to update.</p>"
        },
        "NewBudget": {
          "shape": "Budget",
          "documentation": "<p>The budget that you want to update your budget to.</p>"
        }
      },
      "documentation": "<p> Request of UpdateBudget </p>"
    },
    "UpdateBudgetResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of UpdateBudget </p>"
    },
    "UpdateNotificationRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "OldNotification",
        "NewNotification"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget whose notification you want to update.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget whose notification you want to update.</p>"
        },
        "OldNotification": {
          "shape": "Notification",
          "documentation": "<p>The previous notification that is associated with a budget.</p>"
        },
        "NewNotification": {
          "shape": "Notification",
          "documentation": "<p>The updated notification to be associated with a budget.</p>"
        }
      },
      "documentation": "<p> Request of UpdateNotification </p>"
    },
    "UpdateNotificationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of UpdateNotification </p>"
    },
    "UpdateSubscriberRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "BudgetName",
        "Notification",
        "OldSubscriber",
        "NewSubscriber"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The <code>accountId</code> that is associated with the budget whose subscriber you want to update.</p>"
        },
        "BudgetName": {
          "shape": "BudgetName",
          "documentation": "<p>The name of the budget whose subscriber you want to update.</p>"
        },
        "Notification": {
          "shape": "Notification",
          "documentation": "<p>The notification whose subscriber you want to update.</p>"
        },
        "OldSubscriber": {
          "shape": "Subscriber",
          "documentation": "<p>The previous subscriber that is associated with a budget notification.</p>"
        },
        "NewSubscriber": {
          "shape": "Subscriber",
          "documentation": "<p>The updated subscriber that is associated with a budget notification.</p>"
        }
      },
      "documentation": "<p> Request of UpdateSubscriber </p>"
    },
    "UpdateSubscriberResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p> Response of UpdateSubscriber </p>"
    }
  },
  "documentation": "<p>The AWS Budgets API enables you to use AWS Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for AWS Budgets. </p> <p>Budgets provide you with a way to see the following information:</p> <ul> <li> <p>How close your plan is to your budgeted amount or to the free tier limits</p> </li> <li> <p>Your usage-to-date, including how much you've used of your Reserved Instances (RIs)</p> </li> <li> <p>Your current estimated charges from AWS, and how much your predicted usage will accrue in charges by the end of the month</p> </li> <li> <p>How much of your budget has been used</p> </li> </ul> <p>AWS updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:</p> <ul> <li> <p> <b>Cost budgets</b> - Plan how much you want to spend on a service.</p> </li> <li> <p> <b>Usage budgets</b> - Plan how much you want to use one or more services.</p> </li> <li> <p> <b>RI utilization budgets</b> - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.</p> </li> <li> <p> <b>RI coverage budgets</b> - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.</p> </li> </ul> <p>Service Endpoint</p> <p>The AWS Budgets API provides the following endpoint:</p> <ul> <li> <p>https://budgets.amazonaws.com</p> </li> </ul> <p>For information about costs that are associated with the AWS Budgets API, see <a href=\"https://aws.amazon.com/aws-cost-management/pricing/\">AWS Cost Management Pricing</a>.</p>"
}
]===]))
