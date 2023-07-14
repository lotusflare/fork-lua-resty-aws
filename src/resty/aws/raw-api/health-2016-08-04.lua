local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-08-04",
    "endpointPrefix": "health",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "AWSHealth",
    "serviceFullName": "AWS Health APIs and Notifications",
    "serviceId": "Health",
    "signatureVersion": "v4",
    "targetPrefix": "AWSHealth_20160804",
    "uid": "health-2016-08-04"
  },
  "operations": {
    "DescribeAffectedAccountsForOrganization": {
      "name": "DescribeAffectedAccountsForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAffectedAccountsForOrganizationRequest"
      },
      "output": {
        "shape": "DescribeAffectedAccountsForOrganizationResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        }
      ],
      "documentation": "<p>Returns a list of accounts in the organization from AWS Organizations that are affected by the provided event. For more information about the different types of AWS Health events, see <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a>. </p> <p>Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html\">EnableHealthServiceAccessForOrganization</a> operation from your organization's master account.</p> <note> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </note>",
      "idempotent": true
    },
    "DescribeAffectedEntities": {
      "name": "DescribeAffectedEntities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAffectedEntitiesRequest"
      },
      "output": {
        "shape": "DescribeAffectedEntitiesResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        },
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p>Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.</p> <p>At least one event ARN is required. Results are sorted by the <code>lastUpdatedTime</code> of the entity, starting with the most recent.</p> <note> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </note>",
      "idempotent": true
    },
    "DescribeAffectedEntitiesForOrganization": {
      "name": "DescribeAffectedEntitiesForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAffectedEntitiesForOrganizationRequest"
      },
      "output": {
        "shape": "DescribeAffectedEntitiesForOrganizationResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        },
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p>Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in AWS Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service.</p> <p>At least one event Amazon Resource Name (ARN) and account ID are required. Results are sorted by the <code>lastUpdatedTime</code> of the entity, starting with the most recent.</p> <p>Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html\">EnableHealthServiceAccessForOrganization</a> operation from your organization's master account. </p> <note> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </note>",
      "idempotent": true
    },
    "DescribeEntityAggregates": {
      "name": "DescribeEntityAggregates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEntityAggregatesRequest"
      },
      "output": {
        "shape": "DescribeEntityAggregatesResponse"
      },
      "documentation": "<p>Returns the number of entities that are affected by each of the specified events. If no events are specified, the counts of all affected entities are returned.</p>",
      "idempotent": true
    },
    "DescribeEventAggregates": {
      "name": "DescribeEventAggregates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventAggregatesRequest"
      },
      "output": {
        "shape": "DescribeEventAggregatesResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        }
      ],
      "documentation": "<p>Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.</p> <note> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </note>",
      "idempotent": true
    },
    "DescribeEventDetails": {
      "name": "DescribeEventDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventDetailsRequest"
      },
      "output": {
        "shape": "DescribeEventDetailsResponse"
      },
      "errors": [
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p>Returns detailed information about one or more specified events. Information includes standard event data (Region, service, and so on, as returned by <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html\">DescribeEvents</a>), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included. To retrieve those, use the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html\">DescribeAffectedEntities</a> operation.</p> <p>If a specified event cannot be retrieved, an error message is returned for that event.</p>",
      "idempotent": true
    },
    "DescribeEventDetailsForOrganization": {
      "name": "DescribeEventDetailsForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventDetailsForOrganizationRequest"
      },
      "output": {
        "shape": "DescribeEventDetailsForOrganizationResponse"
      },
      "errors": [
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p>Returns detailed information about one or more specified events for one or more accounts in your organization. Information includes standard event data (Region, service, and so on, as returned by <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html\">DescribeEventsForOrganization</a>), a detailed event description, and possible additional metadata that depends upon the nature of the event. Affected entities are not included; to retrieve those, use the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html\">DescribeAffectedEntitiesForOrganization</a> operation.</p> <p>Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html\">EnableHealthServiceAccessForOrganization</a> operation from your organization's master account.</p> <p>When you call the <code>DescribeEventDetailsForOrganization</code> operation, you specify the <code>organizationEventDetailFilters</code> object in the request. Depending on the AWS Health event type, note the following differences:</p> <ul> <li> <p>If the event is public, the <code>awsAccountId</code> parameter must be empty. If you specify an account ID for a public event, then an error message is returned. That's because the event might apply to all AWS accounts and isn't specific to an account in your organization.</p> </li> <li> <p>If the event is specific to an account, then you must specify the <code>awsAccountId</code> parameter in the request. If you don't specify an account ID, an error message returns because the event is specific to an AWS account in your organization. </p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a>.</p>",
      "idempotent": true
    },
    "DescribeEventTypes": {
      "name": "DescribeEventTypes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventTypesRequest"
      },
      "output": {
        "shape": "DescribeEventTypesResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        },
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p>Returns the event types that meet the specified filter criteria. If no filter criteria are specified, all event types are returned, in no particular order.</p> <note> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </note>",
      "idempotent": true
    },
    "DescribeEvents": {
      "name": "DescribeEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsRequest"
      },
      "output": {
        "shape": "DescribeEventsResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        },
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p> Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> and <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntities.html\">DescribeAffectedEntities</a> operations.</p> <p>If no filter criteria are specified, all events are returned. Results are sorted by <code>lastModifiedTime</code>, starting with the most recent event.</p> <note> <ul> <li> <p>When you call the <code>DescribeEvents</code> operation and specify an entity for the <code>entityValues</code> parameter, AWS Health might return public events that aren't specific to that resource. For example, if you call <code>DescribeEvents</code> and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2) instance, AWS Health might return events that aren't specific to that resource or service. To get events that are specific to a service, use the <code>services</code> parameter in the <code>filter</code> object. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a>.</p> </li> <li> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </li> </ul> </note>",
      "idempotent": true
    },
    "DescribeEventsForOrganization": {
      "name": "DescribeEventsForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsForOrganizationRequest"
      },
      "output": {
        "shape": "DescribeEventsForOrganizationResponse"
      },
      "errors": [
        {
          "shape": "InvalidPaginationToken"
        },
        {
          "shape": "UnsupportedLocale"
        }
      ],
      "documentation": "<p>Returns information about events across your organization in AWS Organizations. You can use the<code>filters</code> parameter to specify the events that you want to return. Events are returned in a summary form and don't include the affected accounts, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the following operations:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html\">DescribeAffectedAccountsForOrganization</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html\">DescribeAffectedEntitiesForOrganization</a> </p> </li> </ul> <p>If you don't specify a <code>filter</code>, the <code>DescribeEventsForOrganizations</code> returns all events across your organization. Results are sorted by <code>lastModifiedTime</code>, starting with the most recent event. </p> <p>For more information about the different types of AWS Health events, see <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a>.</p> <p>Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html\">EnableHealthServiceAccessForOrganization</a> operation from your organization's master AWS account.</p> <note> <p>This API operation uses pagination. Specify the <code>nextToken</code> parameter in the next request to return more results.</p> </note>",
      "idempotent": true
    },
    "DescribeHealthServiceStatusForOrganization": {
      "name": "DescribeHealthServiceStatusForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "DescribeHealthServiceStatusForOrganizationResponse"
      },
      "documentation": "<p>This operation provides status information on enabling or disabling AWS Health to work with your organization. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.</p>",
      "idempotent": true
    },
    "DisableHealthServiceAccessForOrganization": {
      "name": "DisableHealthServiceAccessForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Disables AWS Health from working with AWS Organizations. To call this operation, you must sign in as an AWS Identity and Access Management (IAM) user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master AWS account. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html\">Aggregating AWS Health events</a> in the <i>AWS Health User Guide</i>.</p> <p>This operation doesn't remove the service-linked role (SLR) from the AWS master account in your organization. You must use the IAM console, API, or AWS Command Line Interface (AWS CLI) to remove the SLR. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html#delete-service-linked-role\">Deleting a Service-Linked Role</a> in the <i>IAM User Guide</i>.</p> <note> <p>You can also disable the organizational feature by using the Organizations <a href=\"https://docs.aws.amazon.com/organizations/latest/APIReference/API_DisableAWSServiceAccess.html\">DisableAWSServiceAccess</a> API operation. After you call this operation, AWS Health stops aggregating events for all other AWS accounts in your organization. If you call the AWS Health API operations for organizational view, AWS Health returns an error. AWS Health continues to aggregate health events for your AWS account.</p> </note>",
      "idempotent": true
    },
    "EnableHealthServiceAccessForOrganization": {
      "name": "EnableHealthServiceAccessForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Calling this operation enables AWS Health to work with AWS Organizations. This applies a service-linked role (SLR) to the master account in the organization. To call this operation, you must sign in as an IAM user, assume an IAM role, or sign in as the root user (not recommended) in the organization's master account.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html\">Aggregating AWS Health events</a> in the <i>AWS Health User Guide</i>.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "AffectedEntity": {
      "type": "structure",
      "members": {
        "entityArn": {
          "shape": "entityArn",
          "documentation": "<p>The unique identifier for the entity. Format: <code>arn:aws:health:<i>entity-region</i>:<i>aws-account</i>:entity/<i>entity-id</i> </code>. Example: <code>arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K</code> </p>"
        },
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "entityValue": {
          "shape": "entityValue",
          "documentation": "<p>The ID of the affected entity.</p>"
        },
        "entityUrl": {
          "shape": "entityUrl",
          "documentation": "<p>The URL of the affected entity.</p>"
        },
        "awsAccountId": {
          "shape": "accountId",
          "documentation": "<p>The 12-digit AWS account number that contains the affected entity.</p>"
        },
        "lastUpdatedTime": {
          "shape": "timestamp",
          "documentation": "<p>The most recent time that the entity was updated.</p>"
        },
        "statusCode": {
          "shape": "entityStatusCode",
          "documentation": "<p>The most recent status of the entity affected by the event. The possible values are <code>IMPAIRED</code>, <code>UNIMPAIRED</code>, and <code>UNKNOWN</code>.</p>"
        },
        "tags": {
          "shape": "tagSet",
          "documentation": "<p>A map of entity tags attached to the affected entity.</p> <note> <p>Currently, the <code>tags</code> property isn't supported.</p> </note>"
        }
      },
      "documentation": "<p>Information about an entity that is affected by a Health event.</p>"
    },
    "DateTimeRange": {
      "type": "structure",
      "members": {
        "from": {
          "shape": "timestamp",
          "documentation": "<p>The starting date and time of a time range.</p>"
        },
        "to": {
          "shape": "timestamp",
          "documentation": "<p>The ending date and time of a time range.</p>"
        }
      },
      "documentation": "<p>A range of dates and times that is used by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html\">EventFilter</a> and <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html\">EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>"
    },
    "DescribeAffectedAccountsForOrganizationRequest": {
      "type": "structure",
      "required": [
        "eventArn"
      ],
      "members": {
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        }
      }
    },
    "DescribeAffectedAccountsForOrganizationResponse": {
      "type": "structure",
      "members": {
        "affectedAccounts": {
          "shape": "affectedAccountsList",
          "documentation": "<p>A JSON set of elements of the affected accounts.</p>"
        },
        "eventScopeCode": {
          "shape": "eventScopeCode",
          "documentation": "<p>This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.</p> <ul> <li> <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the <code>affectedAccounts</code> value is always empty.</p> </li> <li> <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then the <code>affectedAccounts</code> value lists the affected AWS accounts in your organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you have AWS accounts that use that service, those account IDs appear in the response.</p> </li> <li> <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the <code>eventArn</code> that you specified in the request is invalid or doesn't exist.</p> </li> </ul>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeAffectedEntitiesForOrganizationFailedSet": {
      "type": "list",
      "member": {
        "shape": "OrganizationAffectedEntitiesErrorItem"
      }
    },
    "DescribeAffectedEntitiesForOrganizationRequest": {
      "type": "structure",
      "required": [
        "organizationEntityFilters"
      ],
      "members": {
        "organizationEntityFilters": {
          "shape": "OrganizationEntityFiltersList",
          "documentation": "<p>A JSON set of elements including the <code>awsAccountId</code> and the <code>eventArn</code>.</p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        }
      }
    },
    "DescribeAffectedEntitiesForOrganizationResponse": {
      "type": "structure",
      "members": {
        "entities": {
          "shape": "EntityList",
          "documentation": "<p>A JSON set of elements including the <code>awsAccountId</code> and its <code>entityArn</code>, <code>entityValue</code> and its <code>entityArn</code>, <code>lastUpdatedTime</code>, and <code>statusCode</code>.</p>"
        },
        "failedSet": {
          "shape": "DescribeAffectedEntitiesForOrganizationFailedSet",
          "documentation": "<p>A JSON set of elements of the failed response, including the <code>awsAccountId</code>, <code>errorMessage</code>, <code>errorName</code>, and <code>eventArn</code>.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeAffectedEntitiesRequest": {
      "type": "structure",
      "required": [
        "filter"
      ],
      "members": {
        "filter": {
          "shape": "EntityFilter",
          "documentation": "<p>Values to narrow the results returned. At least one event ARN is required.</p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        }
      }
    },
    "DescribeAffectedEntitiesResponse": {
      "type": "structure",
      "members": {
        "entities": {
          "shape": "EntityList",
          "documentation": "<p>The entities that match the filter criteria.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeEntityAggregatesRequest": {
      "type": "structure",
      "members": {
        "eventArns": {
          "shape": "EventArnsList",
          "documentation": "<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code> </p>"
        }
      }
    },
    "DescribeEntityAggregatesResponse": {
      "type": "structure",
      "members": {
        "entityAggregates": {
          "shape": "EntityAggregateList",
          "documentation": "<p>The number of entities that are affected by each of the specified events.</p>"
        }
      }
    },
    "DescribeEventAggregatesRequest": {
      "type": "structure",
      "required": [
        "aggregateField"
      ],
      "members": {
        "filter": {
          "shape": "EventFilter",
          "documentation": "<p>Values to narrow the results returned.</p>"
        },
        "aggregateField": {
          "shape": "eventAggregateField",
          "documentation": "<p>The only currently supported value is <code>eventTypeCategory</code>.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeEventAggregatesResponse": {
      "type": "structure",
      "members": {
        "eventAggregates": {
          "shape": "EventAggregateList",
          "documentation": "<p>The number of events in each category that meet the optional filter criteria.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeEventDetailsFailedSet": {
      "type": "list",
      "member": {
        "shape": "EventDetailsErrorItem"
      }
    },
    "DescribeEventDetailsForOrganizationFailedSet": {
      "type": "list",
      "member": {
        "shape": "OrganizationEventDetailsErrorItem"
      }
    },
    "DescribeEventDetailsForOrganizationRequest": {
      "type": "structure",
      "required": [
        "organizationEventDetailFilters"
      ],
      "members": {
        "organizationEventDetailFilters": {
          "shape": "OrganizationEventDetailFiltersList",
          "documentation": "<p>A set of JSON elements that includes the <code>awsAccountId</code> and the <code>eventArn</code>.</p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        }
      }
    },
    "DescribeEventDetailsForOrganizationResponse": {
      "type": "structure",
      "members": {
        "successfulSet": {
          "shape": "DescribeEventDetailsForOrganizationSuccessfulSet",
          "documentation": "<p>Information about the events that could be retrieved.</p>"
        },
        "failedSet": {
          "shape": "DescribeEventDetailsForOrganizationFailedSet",
          "documentation": "<p>Error messages for any events that could not be retrieved.</p>"
        }
      }
    },
    "DescribeEventDetailsForOrganizationSuccessfulSet": {
      "type": "list",
      "member": {
        "shape": "OrganizationEventDetails"
      }
    },
    "DescribeEventDetailsRequest": {
      "type": "structure",
      "required": [
        "eventArns"
      ],
      "members": {
        "eventArns": {
          "shape": "eventArnList",
          "documentation": "<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code> </p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        }
      }
    },
    "DescribeEventDetailsResponse": {
      "type": "structure",
      "members": {
        "successfulSet": {
          "shape": "DescribeEventDetailsSuccessfulSet",
          "documentation": "<p>Information about the events that could be retrieved.</p>"
        },
        "failedSet": {
          "shape": "DescribeEventDetailsFailedSet",
          "documentation": "<p>Error messages for any events that could not be retrieved.</p>"
        }
      }
    },
    "DescribeEventDetailsSuccessfulSet": {
      "type": "list",
      "member": {
        "shape": "EventDetails"
      }
    },
    "DescribeEventTypesRequest": {
      "type": "structure",
      "members": {
        "filter": {
          "shape": "EventTypeFilter",
          "documentation": "<p>Values to narrow the results returned.</p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        }
      }
    },
    "DescribeEventTypesResponse": {
      "type": "structure",
      "members": {
        "eventTypes": {
          "shape": "EventTypeList",
          "documentation": "<p>A list of event types that match the filter criteria. Event types have a category (<code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>), a service (for example, <code>EC2</code>, <code>RDS</code>, <code>DATAPIPELINE</code>, <code>BILLING</code>), and a code (in the format <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeEventsForOrganizationRequest": {
      "type": "structure",
      "members": {
        "filter": {
          "shape": "OrganizationEventFilter",
          "documentation": "<p>Values to narrow the results returned.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        }
      }
    },
    "DescribeEventsForOrganizationResponse": {
      "type": "structure",
      "members": {
        "events": {
          "shape": "OrganizationEventList",
          "documentation": "<p>The events that match the specified filter criteria.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeEventsRequest": {
      "type": "structure",
      "members": {
        "filter": {
          "shape": "EventFilter",
          "documentation": "<p>Values to narrow the results returned.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        },
        "maxResults": {
          "shape": "maxResults",
          "documentation": "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
        },
        "locale": {
          "shape": "locale",
          "documentation": "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
        }
      }
    },
    "DescribeEventsResponse": {
      "type": "structure",
      "members": {
        "events": {
          "shape": "EventList",
          "documentation": "<p>The events that match the specified filter criteria.</p>"
        },
        "nextToken": {
          "shape": "nextToken",
          "documentation": "<p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>"
        }
      }
    },
    "DescribeHealthServiceStatusForOrganizationResponse": {
      "type": "structure",
      "members": {
        "healthServiceAccessStatusForOrganization": {
          "shape": "healthServiceAccessStatusForOrganization",
          "documentation": "<p>Information about the status of enabling or disabling AWS Health Organizational View in your organization.</p> <p>Valid values are <code>ENABLED | DISABLED | PENDING</code>. </p>"
        }
      }
    },
    "EntityAggregate": {
      "type": "structure",
      "members": {
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "count": {
          "shape": "count",
          "documentation": "<p>The number of entities that match the criteria for the specified events.</p>"
        }
      },
      "documentation": "<p>The number of entities that are affected by one or more events. Returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEntityAggregates.html\">DescribeEntityAggregates</a> operation.</p>"
    },
    "EntityAggregateList": {
      "type": "list",
      "member": {
        "shape": "EntityAggregate"
      }
    },
    "EntityFilter": {
      "type": "structure",
      "required": [
        "eventArns"
      ],
      "members": {
        "eventArns": {
          "shape": "eventArnList",
          "documentation": "<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code> </p>"
        },
        "entityArns": {
          "shape": "entityArnList",
          "documentation": "<p>A list of entity ARNs (unique identifiers).</p>"
        },
        "entityValues": {
          "shape": "entityValueList",
          "documentation": "<p>A list of IDs for affected entities.</p>"
        },
        "lastUpdatedTimes": {
          "shape": "dateTimeRangeList",
          "documentation": "<p>A list of the most recent dates and times that the entity was updated.</p>"
        },
        "tags": {
          "shape": "tagFilter",
          "documentation": "<p>A map of entity tags attached to the affected entity.</p> <note> <p>Currently, the <code>tags</code> property isn't supported.</p> </note>"
        },
        "statusCodes": {
          "shape": "entityStatusCodeList",
          "documentation": "<p>A list of entity status codes (<code>IMPAIRED</code>, <code>UNIMPAIRED</code>, or <code>UNKNOWN</code>).</p>"
        }
      },
      "documentation": "<p>The values to use to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html\">EntityFilter</a> operation.</p>"
    },
    "EntityList": {
      "type": "list",
      "member": {
        "shape": "AffectedEntity"
      }
    },
    "Event": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "service": {
          "shape": "service",
          "documentation": "<p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
        },
        "eventTypeCode": {
          "shape": "eventTypeCode",
          "documentation": "<p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>"
        },
        "eventTypeCategory": {
          "shape": "eventTypeCategory",
          "documentation": "<p>The category of the event. Possible values are <code>issue</code>, <code>scheduledChange</code>, and <code>accountNotification</code>.</p>"
        },
        "region": {
          "shape": "region",
          "documentation": "<p>The AWS region name of the event.</p>"
        },
        "availabilityZone": {
          "shape": "availabilityZone",
          "documentation": "<p>The AWS Availability Zone of the event. For example, us-east-1a.</p>"
        },
        "startTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time that the event began.</p>"
        },
        "endTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time that the event ended.</p>"
        },
        "lastUpdatedTime": {
          "shape": "timestamp",
          "documentation": "<p>The most recent date and time that the event was updated.</p>"
        },
        "statusCode": {
          "shape": "eventStatusCode",
          "documentation": "<p>The most recent status of the event. Possible values are <code>open</code>, <code>closed</code>, and <code>upcoming</code>.</p>"
        },
        "eventScopeCode": {
          "shape": "eventScopeCode",
          "documentation": "<p>This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.</p> <ul> <li> <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the <code>affectedAccounts</code> value is always empty.</p> </li> <li> <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then the <code>affectedAccounts</code> value lists the affected AWS accounts in your organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you have AWS accounts that use that service, those account IDs appear in the response.</p> </li> <li> <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the <code>eventArn</code> that you specified in the request is invalid or doesn't exist.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Summary information about an AWS Health event.</p> <p>AWS Health events can be public or account-specific:</p> <ul> <li> <p> <i>Public events</i> might be service events that are not specific to an AWS account. For example, if there is an issue with an AWS Region, AWS Health provides information about the event, even if you don't use services or resources in that Region.</p> </li> <li> <p> <i>Account-specific</i> events are specific to either your AWS account or an account in your organization. For example, if there's an issue with Amazon Elastic Compute Cloud in a Region that you use, AWS Health provides information about the event and the affected resources in the account.</p> </li> </ul> <p>You can determine if an event is public or account-specific by using the <code>eventScopeCode</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode\">eventScopeCode</a>.</p>"
    },
    "EventAccountFilter": {
      "type": "structure",
      "required": [
        "eventArn"
      ],
      "members": {
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "awsAccountId": {
          "shape": "accountId",
          "documentation": "<p>The 12-digit AWS account numbers that contains the affected entities.</p>"
        }
      },
      "documentation": "<p>The values used to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> and <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html\">DescribeAffectedEntitiesForOrganization</a> operations.</p>"
    },
    "EventAggregate": {
      "type": "structure",
      "members": {
        "aggregateValue": {
          "shape": "aggregateValue",
          "documentation": "<p>The issue type for the associated count.</p>"
        },
        "count": {
          "shape": "count",
          "documentation": "<p>The number of events of the associated issue type.</p>"
        }
      },
      "documentation": "<p>The number of events of each issue type. Returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html\">DescribeEventAggregates</a> operation.</p>"
    },
    "EventAggregateList": {
      "type": "list",
      "member": {
        "shape": "EventAggregate"
      }
    },
    "EventArnsList": {
      "type": "list",
      "member": {
        "shape": "eventArn"
      },
      "max": 50,
      "min": 1
    },
    "EventDescription": {
      "type": "structure",
      "members": {
        "latestDescription": {
          "shape": "eventDescription",
          "documentation": "<p>The most recent description of the event.</p>"
        }
      },
      "documentation": "<p>The detailed description of the event. Included in the information returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> operation.</p>"
    },
    "EventDetails": {
      "type": "structure",
      "members": {
        "event": {
          "shape": "Event",
          "documentation": "<p>Summary information about the event.</p>"
        },
        "eventDescription": {
          "shape": "EventDescription",
          "documentation": "<p>The most recent description of the event.</p>"
        },
        "eventMetadata": {
          "shape": "eventMetadata",
          "documentation": "<p>Additional metadata about the event.</p>"
        }
      },
      "documentation": "<p>Detailed information about an event. A combination of an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a> object, an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html\">EventDescription</a> object, and additional metadata about the event. Returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> operation.</p>"
    },
    "EventDetailsErrorItem": {
      "type": "structure",
      "members": {
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "errorName": {
          "shape": "string",
          "documentation": "<p>The name of the error.</p>"
        },
        "errorMessage": {
          "shape": "string",
          "documentation": "<p>A message that describes the error.</p>"
        }
      },
      "documentation": "<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> operation cannot find a specified event.</p>"
    },
    "EventFilter": {
      "type": "structure",
      "members": {
        "eventArns": {
          "shape": "eventArnList",
          "documentation": "<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code> </p>"
        },
        "eventTypeCodes": {
          "shape": "eventTypeList",
          "documentation": "<p>A list of unique identifiers for event types. For example, <code>\"AWS_EC2_SYSTEM_MAINTENANCE_EVENT\",\"AWS_RDS_MAINTENANCE_SCHEDULED\".</code> </p>"
        },
        "services": {
          "shape": "serviceList",
          "documentation": "<p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
        },
        "regions": {
          "shape": "regionList",
          "documentation": "<p>A list of AWS regions.</p>"
        },
        "availabilityZones": {
          "shape": "availabilityZones",
          "documentation": "<p>A list of AWS availability zones.</p>"
        },
        "startTimes": {
          "shape": "dateTimeRangeList",
          "documentation": "<p>A list of dates and times that the event began.</p>"
        },
        "endTimes": {
          "shape": "dateTimeRangeList",
          "documentation": "<p>A list of dates and times that the event ended.</p>"
        },
        "lastUpdatedTimes": {
          "shape": "dateTimeRangeList",
          "documentation": "<p>A list of dates and times that the event was last updated.</p>"
        },
        "entityArns": {
          "shape": "entityArnList",
          "documentation": "<p>A list of entity ARNs (unique identifiers).</p>"
        },
        "entityValues": {
          "shape": "entityValueList",
          "documentation": "<p>A list of entity identifiers, such as EC2 instance IDs (<code>i-34ab692e</code>) or EBS volumes (<code>vol-426ab23e</code>).</p>"
        },
        "eventTypeCategories": {
          "shape": "eventTypeCategoryList",
          "documentation": "<p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>"
        },
        "tags": {
          "shape": "tagFilter",
          "documentation": "<p>A map of entity tags attached to the affected entity.</p> <note> <p>Currently, the <code>tags</code> property isn't supported.</p> </note>"
        },
        "eventStatusCodes": {
          "shape": "eventStatusCodeList",
          "documentation": "<p>A list of event status codes.</p>"
        }
      },
      "documentation": "<p>The values to use to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html\">DescribeEvents</a> and <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html\">DescribeEventAggregates</a> operations.</p>"
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event"
      }
    },
    "EventType": {
      "type": "structure",
      "members": {
        "service": {
          "shape": "service",
          "documentation": "<p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
        },
        "code": {
          "shape": "eventTypeCode",
          "documentation": "<p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>"
        },
        "category": {
          "shape": "eventTypeCategory",
          "documentation": "<p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>"
        }
      },
      "documentation": "<p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>"
    },
    "EventTypeCategoryList": {
      "type": "list",
      "member": {
        "shape": "eventTypeCategory"
      },
      "max": 10,
      "min": 1
    },
    "EventTypeCodeList": {
      "type": "list",
      "member": {
        "shape": "eventTypeCode"
      },
      "max": 10,
      "min": 1
    },
    "EventTypeFilter": {
      "type": "structure",
      "members": {
        "eventTypeCodes": {
          "shape": "EventTypeCodeList",
          "documentation": "<p>A list of event type codes.</p>"
        },
        "services": {
          "shape": "serviceList",
          "documentation": "<p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
        },
        "eventTypeCategories": {
          "shape": "EventTypeCategoryList",
          "documentation": "<p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>"
        }
      },
      "documentation": "<p>The values to use to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html\">DescribeEventTypes</a> operation.</p>"
    },
    "EventTypeList": {
      "type": "list",
      "member": {
        "shape": "EventType"
      }
    },
    "OrganizationAffectedEntitiesErrorItem": {
      "type": "structure",
      "members": {
        "awsAccountId": {
          "shape": "accountId",
          "documentation": "<p>The 12-digit AWS account numbers that contains the affected entities.</p>"
        },
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "errorName": {
          "shape": "string",
          "documentation": "<p>The name of the error.</p>"
        },
        "errorMessage": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the event type. The format is <code>AWS_SERVICE_DESCRIPTION</code>. For example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>"
        }
      },
      "documentation": "<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html\">DescribeAffectedEntitiesForOrganization</a> operation cannot find or process a specific entity.</p>"
    },
    "OrganizationEntityFiltersList": {
      "type": "list",
      "member": {
        "shape": "EventAccountFilter"
      },
      "max": 10,
      "min": 1
    },
    "OrganizationEvent": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "service": {
          "shape": "service",
          "documentation": "<p>The AWS service that is affected by the event. For example, EC2, RDS.</p>"
        },
        "eventTypeCode": {
          "shape": "eventTypeCode",
          "documentation": "<p>The unique identifier for the event type. The format is <code>AWS_SERVICE_DESCRIPTION</code>. For example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>"
        },
        "eventTypeCategory": {
          "shape": "eventTypeCategory",
          "documentation": "<p>The category of the event type.</p>"
        },
        "eventScopeCode": {
          "shape": "eventScopeCode",
          "documentation": "<p>This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.</p> <ul> <li> <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the <code>affectedAccounts</code> value is always empty.</p> </li> <li> <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then the <code>affectedAccounts</code> value lists the affected AWS accounts in your organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you have AWS accounts that use that service, those account IDs appear in the response.</p> </li> <li> <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the <code>eventArn</code> that you specified in the request is invalid or doesn't exist.</p> </li> </ul>"
        },
        "region": {
          "shape": "region",
          "documentation": "<p>The AWS Region name of the event.</p>"
        },
        "startTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time that the event began.</p>"
        },
        "endTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time that the event ended.</p>"
        },
        "lastUpdatedTime": {
          "shape": "timestamp",
          "documentation": "<p>The most recent date and time that the event was updated.</p>"
        },
        "statusCode": {
          "shape": "eventStatusCode",
          "documentation": "<p>The most recent status of the event. Possible values are <code>open</code>, <code>closed</code>, and <code>upcoming</code>.</p>"
        }
      },
      "documentation": "<p>Summary information about an event, returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html\">DescribeEventsForOrganization</a> operation.</p>"
    },
    "OrganizationEventDetailFiltersList": {
      "type": "list",
      "member": {
        "shape": "EventAccountFilter"
      },
      "max": 10,
      "min": 1
    },
    "OrganizationEventDetails": {
      "type": "structure",
      "members": {
        "awsAccountId": {
          "shape": "accountId",
          "documentation": "<p>The 12-digit AWS account numbers that contains the affected entities.</p>"
        },
        "event": {
          "shape": "Event"
        },
        "eventDescription": {
          "shape": "EventDescription"
        },
        "eventMetadata": {
          "shape": "eventMetadata",
          "documentation": "<p>Additional metadata about the event.</p>"
        }
      },
      "documentation": "<p>Detailed information about an event. A combination of an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a> object, an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html\">EventDescription</a> object, and additional metadata about the event. Returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> operation.</p>"
    },
    "OrganizationEventDetailsErrorItem": {
      "type": "structure",
      "members": {
        "awsAccountId": {
          "shape": "accountId",
          "documentation": "<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> operation cannot find a specified event.</p>"
        },
        "eventArn": {
          "shape": "eventArn",
          "documentation": "<p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>Example: arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code> </p>"
        },
        "errorName": {
          "shape": "string",
          "documentation": "<p>The name of the error.</p>"
        },
        "errorMessage": {
          "shape": "string",
          "documentation": "<p>A message that describes the error.</p>"
        }
      },
      "documentation": "<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> operation cannot find a specified event.</p>"
    },
    "OrganizationEventFilter": {
      "type": "structure",
      "members": {
        "eventTypeCodes": {
          "shape": "eventTypeList",
          "documentation": "<p>A list of unique identifiers for event types. For example, <code>\"AWS_EC2_SYSTEM_MAINTENANCE_EVENT\",\"AWS_RDS_MAINTENANCE_SCHEDULED\".</code> </p>"
        },
        "awsAccountIds": {
          "shape": "awsAccountIdsList",
          "documentation": "<p>A list of 12-digit AWS account numbers that contains the affected entities.</p>"
        },
        "services": {
          "shape": "serviceList",
          "documentation": "<p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
        },
        "regions": {
          "shape": "regionList",
          "documentation": "<p>A list of AWS Regions.</p>"
        },
        "startTime": {
          "shape": "DateTimeRange"
        },
        "endTime": {
          "shape": "DateTimeRange"
        },
        "lastUpdatedTime": {
          "shape": "DateTimeRange"
        },
        "entityArns": {
          "shape": "entityArnList",
          "documentation": "<p>A list of entity ARNs (unique identifiers).</p>"
        },
        "entityValues": {
          "shape": "entityValueList",
          "documentation": "<p>A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).</p>"
        },
        "eventTypeCategories": {
          "shape": "eventTypeCategoryList",
          "documentation": "<p>A list of event type category codes (issue, scheduledChange, or accountNotification).</p>"
        },
        "eventStatusCodes": {
          "shape": "eventStatusCodeList",
          "documentation": "<p>A list of event status codes.</p>"
        }
      },
      "documentation": "<p>The values to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html\">DescribeEventsForOrganization</a> operation.</p>"
    },
    "OrganizationEventList": {
      "type": "list",
      "member": {
        "shape": "OrganizationEvent"
      }
    },
    "accountId": {
      "type": "string",
      "max": 12,
      "pattern": "^\\S+$"
    },
    "affectedAccountsList": {
      "type": "list",
      "member": {
        "shape": "accountId"
      }
    },
    "aggregateValue": {
      "type": "string"
    },
    "availabilityZone": {
      "type": "string",
      "max": 18,
      "min": 6,
      "pattern": "[a-z]{2}\\-[0-9a-z\\-]{4,16}"
    },
    "availabilityZones": {
      "type": "list",
      "member": {
        "shape": "availabilityZone"
      }
    },
    "awsAccountIdsList": {
      "type": "list",
      "member": {
        "shape": "accountId"
      },
      "max": 50,
      "min": 1
    },
    "count": {
      "type": "integer"
    },
    "dateTimeRangeList": {
      "type": "list",
      "member": {
        "shape": "DateTimeRange"
      },
      "max": 10,
      "min": 1
    },
    "entityArn": {
      "type": "string",
      "max": 1600,
      "pattern": ".{0,1600}"
    },
    "entityArnList": {
      "type": "list",
      "member": {
        "shape": "entityArn"
      },
      "max": 100,
      "min": 1
    },
    "entityStatusCode": {
      "type": "string",
      "enum": [
        "IMPAIRED",
        "UNIMPAIRED",
        "UNKNOWN"
      ]
    },
    "entityStatusCodeList": {
      "type": "list",
      "member": {
        "shape": "entityStatusCode"
      },
      "max": 3,
      "min": 1
    },
    "entityUrl": {
      "type": "string"
    },
    "entityValue": {
      "type": "string",
      "max": 1224,
      "pattern": ".{0,1224}"
    },
    "entityValueList": {
      "type": "list",
      "member": {
        "shape": "entityValue"
      },
      "max": 100,
      "min": 1
    },
    "eventAggregateField": {
      "type": "string",
      "enum": [
        "eventTypeCategory"
      ]
    },
    "eventArn": {
      "type": "string",
      "max": 1600,
      "pattern": "arn:aws(-[a-z]+(-[a-z]+)?)?:health:[^:]*:[^:]*:event(?:/[\\w-]+){3}"
    },
    "eventArnList": {
      "type": "list",
      "member": {
        "shape": "eventArn"
      },
      "max": 10,
      "min": 1
    },
    "eventDescription": {
      "type": "string"
    },
    "eventMetadata": {
      "type": "map",
      "key": {
        "shape": "metadataKey"
      },
      "value": {
        "shape": "metadataValue"
      }
    },
    "eventScopeCode": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "ACCOUNT_SPECIFIC",
        "NONE"
      ]
    },
    "eventStatusCode": {
      "type": "string",
      "enum": [
        "open",
        "closed",
        "upcoming"
      ]
    },
    "eventStatusCodeList": {
      "type": "list",
      "member": {
        "shape": "eventStatusCode"
      },
      "max": 6,
      "min": 1
    },
    "eventType": {
      "type": "string",
      "max": 100,
      "min": 3,
      "pattern": "[^:/]{3,100}"
    },
    "eventTypeCategory": {
      "type": "string",
      "enum": [
        "issue",
        "accountNotification",
        "scheduledChange",
        "investigation"
      ],
      "max": 255,
      "min": 3
    },
    "eventTypeCategoryList": {
      "type": "list",
      "member": {
        "shape": "eventTypeCategory"
      },
      "max": 10,
      "min": 1
    },
    "eventTypeCode": {
      "type": "string",
      "max": 100,
      "min": 3,
      "pattern": "[a-zA-Z0-9\\_\\-]{3,100}"
    },
    "eventTypeList": {
      "type": "list",
      "member": {
        "shape": "eventType"
      },
      "max": 10,
      "min": 1
    },
    "healthServiceAccessStatusForOrganization": {
      "type": "string"
    },
    "locale": {
      "type": "string",
      "max": 256,
      "min": 2,
      "pattern": ".{2,256}"
    },
    "maxResults": {
      "type": "integer",
      "max": 100,
      "min": 10
    },
    "metadataKey": {
      "type": "string",
      "max": 32766
    },
    "metadataValue": {
      "type": "string",
      "max": 32766
    },
    "nextToken": {
      "type": "string",
      "max": 10000,
      "min": 4,
      "pattern": "[a-zA-Z0-9=/+_.-]{4,10000}"
    },
    "region": {
      "type": "string",
      "max": 25,
      "min": 2,
      "pattern": "[^:/]{2,25}"
    },
    "regionList": {
      "type": "list",
      "member": {
        "shape": "region"
      },
      "max": 10,
      "min": 1
    },
    "service": {
      "type": "string",
      "max": 30,
      "min": 2,
      "pattern": "[^:/]{2,30}"
    },
    "serviceList": {
      "type": "list",
      "member": {
        "shape": "service"
      },
      "max": 10,
      "min": 1
    },
    "string": {
      "type": "string"
    },
    "tagFilter": {
      "type": "list",
      "member": {
        "shape": "tagSet"
      },
      "max": 50
    },
    "tagKey": {
      "type": "string",
      "max": 127,
      "pattern": ".{0,127}"
    },
    "tagSet": {
      "type": "map",
      "key": {
        "shape": "tagKey"
      },
      "value": {
        "shape": "tagValue"
      },
      "max": 50
    },
    "tagValue": {
      "type": "string",
      "max": 255,
      "pattern": ".{0,255}"
    },
    "timestamp": {
      "type": "timestamp"
    }
  },
  "documentation": "<fullname>AWS Health</fullname> <p>The AWS Health API provides programmatic access to the AWS Health information that appears in the <a href=\"https://phd.aws.amazon.com/phd/home#/\">AWS Personal Health Dashboard</a>. You can use the API operations to get information about AWS Health events that affect your AWS services and resources.</p> <note> <p>You must have a Business or Enterprise support plan from <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a> to use the AWS Health API. If you call the AWS Health API from an AWS account that doesn't have a Business or Enterprise support plan, you receive a <code>SubscriptionRequiredException</code> error.</p> </note> <p>AWS Health has a single endpoint: health.us-east-1.amazonaws.com (HTTPS). Use this endpoint to call the AWS Health API operations.</p> <p>For authentication of requests, AWS Health uses the <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>.</p> <p>If your AWS account is part of AWS Organizations, you can use the AWS Health organizational view feature. This feature provides a centralized view of AWS Health events across all accounts in your organization. You can aggregate AWS Health events in real time to identify accounts in your organization that are affected by an operational event or get notified of security vulnerabilities. Use the organizational view API operations to enable this feature and return event information. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html\">Aggregating AWS Health events</a> in the <i>AWS Health User Guide</i>.</p> <note> <p>When you use the AWS Health API operations to return AWS Health events, see the following recommendations:</p> <ul> <li> <p>Use the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode\">eventScopeCode</a> parameter to specify whether to return AWS Health events that are public or account-specific.</p> </li> <li> <p>Use pagination to view all events from the response. For example, if you call the <code>DescribeEventsForOrganization</code> operation to get all events in your organization, you might receive several page results. Specify the <code>nextToken</code> in the next request to return more results.</p> </li> </ul> </note>"
}
]===]))