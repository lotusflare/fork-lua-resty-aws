local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2014-11-12",
    "endpointPrefix": "config",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Config Service",
    "serviceFullName": "AWS Config",
    "serviceId": "Config Service",
    "signatureVersion": "v4",
    "targetPrefix": "StarlingDoveService",
    "uid": "config-2014-11-12"
  },
  "operations": {
    "BatchGetAggregateResourceConfig": {
      "name": "BatchGetAggregateResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetAggregateResourceConfigRequest"
      },
      "output": {
        "shape": "BatchGetAggregateResourceConfigResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Returns the current configuration items for resources that are present in your AWS Config aggregator. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty <code>unprocessedResourceIdentifiers</code> list. </p> <note> <ul> <li> <p>The API does not return results for deleted resources.</p> </li> <li> <p> The API does not return tags and relationships.</p> </li> </ul> </note>"
    },
    "BatchGetResourceConfig": {
      "name": "BatchGetResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetResourceConfigRequest"
      },
      "output": {
        "shape": "BatchGetResourceConfigResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NoAvailableConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Returns the current configuration for one or more requested resources. The operation also returns a list of resources that are not processed in the current request. If there are no unprocessed resources, the operation returns an empty unprocessedResourceKeys list. </p> <note> <ul> <li> <p>The API does not return results for deleted resources.</p> </li> <li> <p> The API does not return any tags for the requested resources. This information is filtered out of the supplementaryConfiguration section of the API response.</p> </li> </ul> </note>"
    },
    "DeleteAggregationAuthorization": {
      "name": "DeleteAggregationAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAggregationAuthorizationRequest"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Deletes the authorization granted to the specified configuration aggregator account in a specified region.</p>"
    },
    "DeleteConfigRule": {
      "name": "DeleteConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConfigRuleRequest"
      },
      "errors": [
        {
          "shape": "NoSuchConfigRuleException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes the specified AWS Config rule and all of its evaluation results.</p> <p>AWS Config sets the state of a rule to <code>DELETING</code> until the deletion is complete. You cannot update a rule while it is in this state. If you make a <code>PutConfigRule</code> or <code>DeleteConfigRule</code> request for the rule, you will receive a <code>ResourceInUseException</code>.</p> <p>You can check the state of a rule by using the <code>DescribeConfigRules</code> request.</p>"
    },
    "DeleteConfigurationAggregator": {
      "name": "DeleteConfigurationAggregator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConfigurationAggregatorRequest"
      },
      "errors": [
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Deletes the specified configuration aggregator and the aggregated data associated with the aggregator.</p>"
    },
    "DeleteConfigurationRecorder": {
      "name": "DeleteConfigurationRecorder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConfigurationRecorderRequest"
      },
      "errors": [
        {
          "shape": "NoSuchConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Deletes the configuration recorder.</p> <p>After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder.</p> <p>This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the <code>GetResourceConfigHistory</code> action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.</p>"
    },
    "DeleteConformancePack": {
      "name": "DeleteConformancePack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConformancePackRequest"
      },
      "errors": [
        {
          "shape": "NoSuchConformancePackException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes the specified conformance pack and all the AWS Config rules, remediation actions, and all evaluation results within that conformance pack.</p> <p>AWS Config sets the conformance pack to <code>DELETE_IN_PROGRESS</code> until the deletion is complete. You cannot update a conformance pack while it is in this state.</p>"
    },
    "DeleteDeliveryChannel": {
      "name": "DeleteDeliveryChannel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDeliveryChannelRequest"
      },
      "errors": [
        {
          "shape": "NoSuchDeliveryChannelException"
        },
        {
          "shape": "LastDeliveryChannelDeleteFailedException"
        }
      ],
      "documentation": "<p>Deletes the delivery channel.</p> <p>Before you can delete the delivery channel, you must stop the configuration recorder by using the <a>StopConfigurationRecorder</a> action.</p>"
    },
    "DeleteEvaluationResults": {
      "name": "DeleteEvaluationResults",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEvaluationResultsRequest"
      },
      "output": {
        "shape": "DeleteEvaluationResultsResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConfigRuleException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes the evaluation results for the specified AWS Config rule. You can specify one AWS Config rule per request. After you delete the evaluation results, you can call the <a>StartConfigRulesEvaluation</a> API to start evaluating your AWS resources against the rule.</p>"
    },
    "DeleteOrganizationConfigRule": {
      "name": "DeleteOrganizationConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteOrganizationConfigRuleRequest"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConfigRuleException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the specified organization config rule and all of its evaluation results from all member accounts in that organization. </p> <p>Only a master account and a delegated administrator account can delete an organization config rule. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p> <p>AWS Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion is complete. You cannot update a rule while it is in this state.</p>"
    },
    "DeleteOrganizationConformancePack": {
      "name": "DeleteOrganizationConformancePack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteOrganizationConformancePackRequest"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConformancePackException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the specified organization conformance pack and all of the config rules and remediation actions from all member accounts in that organization. </p> <p> Only a master account or a delegated administrator account can delete an organization conformance pack. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p> <p>AWS Config sets the state of a conformance pack to DELETE_IN_PROGRESS until the deletion is complete. You cannot update a conformance pack while it is in this state. </p>"
    },
    "DeletePendingAggregationRequest": {
      "name": "DeletePendingAggregationRequest",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePendingAggregationRequestRequest"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Deletes pending authorization requests for a specified aggregator account in a specified region.</p>"
    },
    "DeleteRemediationConfiguration": {
      "name": "DeleteRemediationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRemediationConfigurationRequest"
      },
      "output": {
        "shape": "DeleteRemediationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "NoSuchRemediationConfigurationException"
        },
        {
          "shape": "RemediationInProgressException"
        },
        {
          "shape": "InsufficientPermissionsException"
        }
      ],
      "documentation": "<p>Deletes the remediation configuration.</p>"
    },
    "DeleteRemediationExceptions": {
      "name": "DeleteRemediationExceptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRemediationExceptionsRequest"
      },
      "output": {
        "shape": "DeleteRemediationExceptionsResponse"
      },
      "errors": [
        {
          "shape": "NoSuchRemediationExceptionException"
        }
      ],
      "documentation": "<p>Deletes one or more remediation exceptions mentioned in the resource keys.</p> <note> <p>AWS Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.</p> </note>"
    },
    "DeleteResourceConfig": {
      "name": "DeleteResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResourceConfigRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NoRunningConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Records the configuration state for a custom resource that has been deleted. This API records a new ConfigurationItem with a ResourceDeleted status. You can retrieve the ConfigurationItems recorded for this resource in your AWS Config History. </p>"
    },
    "DeleteRetentionConfiguration": {
      "name": "DeleteRetentionConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRetentionConfigurationRequest"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "NoSuchRetentionConfigurationException"
        }
      ],
      "documentation": "<p>Deletes the retention configuration.</p>"
    },
    "DeliverConfigSnapshot": {
      "name": "DeliverConfigSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeliverConfigSnapshotRequest"
      },
      "output": {
        "shape": "DeliverConfigSnapshotResponse"
      },
      "errors": [
        {
          "shape": "NoSuchDeliveryChannelException"
        },
        {
          "shape": "NoAvailableConfigurationRecorderException"
        },
        {
          "shape": "NoRunningConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends the following notifications using an Amazon SNS topic that you have specified.</p> <ul> <li> <p>Notification of the start of the delivery.</p> </li> <li> <p>Notification of the completion of the delivery, if the delivery was successfully completed.</p> </li> <li> <p>Notification of delivery failure, if the delivery failed.</p> </li> </ul>"
    },
    "DescribeAggregateComplianceByConfigRules": {
      "name": "DescribeAggregateComplianceByConfigRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAggregateComplianceByConfigRulesRequest"
      },
      "output": {
        "shape": "DescribeAggregateComplianceByConfigRulesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules. </p> <note> <p>The results can return an empty result page, but if you have a <code>nextToken</code>, the results are displayed on the next page.</p> </note>"
    },
    "DescribeAggregationAuthorizations": {
      "name": "DescribeAggregationAuthorizations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAggregationAuthorizationsRequest"
      },
      "output": {
        "shape": "DescribeAggregationAuthorizationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidLimitException"
        }
      ],
      "documentation": "<p>Returns a list of authorizations granted to various aggregator accounts and regions.</p>"
    },
    "DescribeComplianceByConfigRule": {
      "name": "DescribeComplianceByConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeComplianceByConfigRuleRequest"
      },
      "output": {
        "shape": "DescribeComplianceByConfigRuleResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "NoSuchConfigRuleException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.</p> <p>A rule is compliant if all of the evaluated resources comply with it. It is noncompliant if any of these resources do not comply.</p> <p>If AWS Config has no current evaluation results for the rule, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>"
    },
    "DescribeComplianceByResource": {
      "name": "DescribeComplianceByResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeComplianceByResourceRequest"
      },
      "output": {
        "shape": "DescribeComplianceByResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.</p> <p>A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.</p> <p>If AWS Config has no current evaluation results for the resource, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions about the rules that evaluate the resource:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>"
    },
    "DescribeConfigRuleEvaluationStatus": {
      "name": "DescribeConfigRuleEvaluationStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigRuleEvaluationStatusRequest"
      },
      "output": {
        "shape": "DescribeConfigRuleEvaluationStatusResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConfigRuleException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.</p>"
    },
    "DescribeConfigRules": {
      "name": "DescribeConfigRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigRulesRequest"
      },
      "output": {
        "shape": "DescribeConfigRulesResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConfigRuleException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns details about your AWS Config rules.</p>"
    },
    "DescribeConfigurationAggregatorSourcesStatus": {
      "name": "DescribeConfigurationAggregatorSourcesStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationAggregatorSourcesStatusRequest"
      },
      "output": {
        "shape": "DescribeConfigurationAggregatorSourcesStatusResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidLimitException"
        }
      ],
      "documentation": "<p>Returns status information for sources within an aggregator. The status includes information about the last time AWS Config verified authorization between the source account and an aggregator account. In case of a failure, the status contains the related error code or message. </p>"
    },
    "DescribeConfigurationAggregators": {
      "name": "DescribeConfigurationAggregators",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationAggregatorsRequest"
      },
      "output": {
        "shape": "DescribeConfigurationAggregatorsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidLimitException"
        }
      ],
      "documentation": "<p>Returns the details of one or more configuration aggregators. If the configuration aggregator is not specified, this action returns the details for all the configuration aggregators associated with the account. </p>"
    },
    "DescribeConfigurationRecorderStatus": {
      "name": "DescribeConfigurationRecorderStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationRecorderStatusRequest"
      },
      "output": {
        "shape": "DescribeConfigurationRecorderStatusResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorders associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>"
    },
    "DescribeConfigurationRecorders": {
      "name": "DescribeConfigurationRecorders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationRecordersRequest"
      },
      "output": {
        "shape": "DescribeConfigurationRecordersResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>"
    },
    "DescribeConformancePackCompliance": {
      "name": "DescribeConformancePackCompliance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConformancePackComplianceRequest"
      },
      "output": {
        "shape": "DescribeConformancePackComplianceResponse"
      },
      "errors": [
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "NoSuchConfigRuleInConformancePackException"
        },
        {
          "shape": "NoSuchConformancePackException"
        }
      ],
      "documentation": "<p>Returns compliance details for each rule in that conformance pack.</p> <note> <p>You must provide exact rule names.</p> </note>"
    },
    "DescribeConformancePackStatus": {
      "name": "DescribeConformancePackStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConformancePackStatusRequest"
      },
      "output": {
        "shape": "DescribeConformancePackStatusResponse"
      },
      "errors": [
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Provides one or more conformance packs deployment status.</p> <note> <p>If there are no conformance packs then you will see an empty result.</p> </note>"
    },
    "DescribeConformancePacks": {
      "name": "DescribeConformancePacks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConformancePacksRequest"
      },
      "output": {
        "shape": "DescribeConformancePacksResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConformancePackException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Returns a list of one or more conformance packs.</p>"
    },
    "DescribeDeliveryChannelStatus": {
      "name": "DescribeDeliveryChannelStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDeliveryChannelStatusRequest"
      },
      "output": {
        "shape": "DescribeDeliveryChannelStatusResponse"
      },
      "errors": [
        {
          "shape": "NoSuchDeliveryChannelException"
        }
      ],
      "documentation": "<p>Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>"
    },
    "DescribeDeliveryChannels": {
      "name": "DescribeDeliveryChannels",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDeliveryChannelsRequest"
      },
      "output": {
        "shape": "DescribeDeliveryChannelsResponse"
      },
      "errors": [
        {
          "shape": "NoSuchDeliveryChannelException"
        }
      ],
      "documentation": "<p>Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>"
    },
    "DescribeOrganizationConfigRuleStatuses": {
      "name": "DescribeOrganizationConfigRuleStatuses",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrganizationConfigRuleStatusesRequest"
      },
      "output": {
        "shape": "DescribeOrganizationConfigRuleStatusesResponse"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConfigRuleException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Provides organization config rule deployment status for an organization.</p> <p>Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p> <note> <p>The status is not considered successful until organization config rule is successfully deployed in all the member accounts with an exception of excluded accounts.</p> <p>When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization config rule names. It is only applicable, when you request all the organization config rules.</p> </note>"
    },
    "DescribeOrganizationConfigRules": {
      "name": "DescribeOrganizationConfigRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrganizationConfigRulesRequest"
      },
      "output": {
        "shape": "DescribeOrganizationConfigRulesResponse"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConfigRuleException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Returns a list of organization config rules. </p> <p>Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.&#x2028;</p> <note> <p>When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization config rule names. It is only applicable, when you request all the organization config rules.</p> </note>"
    },
    "DescribeOrganizationConformancePackStatuses": {
      "name": "DescribeOrganizationConformancePackStatuses",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrganizationConformancePackStatusesRequest"
      },
      "output": {
        "shape": "DescribeOrganizationConformancePackStatusesResponse"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConformancePackException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Provides organization conformance pack deployment status for an organization. </p> <p> Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p> <note> <p>The status is not considered successful until organization conformance pack is successfully deployed in all the member accounts with an exception of excluded accounts.</p> <p>When you specify the limit and the next token, you receive a paginated response. Limit and next token are not applicable if you specify organization conformance pack names. They are only applicable, when you request all the organization conformance packs.</p> </note>"
    },
    "DescribeOrganizationConformancePacks": {
      "name": "DescribeOrganizationConformancePacks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrganizationConformancePacksRequest"
      },
      "output": {
        "shape": "DescribeOrganizationConformancePacksResponse"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConformancePackException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Returns a list of organization conformance packs. </p> <p>Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p> <note> <p>When you specify the limit and the next token, you receive a paginated response. </p> <p>Limit and next token are not applicable if you specify organization conformance packs names. They are only applicable, when you request all the organization conformance packs. </p> </note>"
    },
    "DescribePendingAggregationRequests": {
      "name": "DescribePendingAggregationRequests",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePendingAggregationRequestsRequest"
      },
      "output": {
        "shape": "DescribePendingAggregationRequestsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidLimitException"
        }
      ],
      "documentation": "<p>Returns a list of all pending aggregation requests.</p>"
    },
    "DescribeRemediationConfigurations": {
      "name": "DescribeRemediationConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRemediationConfigurationsRequest"
      },
      "output": {
        "shape": "DescribeRemediationConfigurationsResponse"
      },
      "documentation": "<p>Returns the details of one or more remediation configurations.</p>"
    },
    "DescribeRemediationExceptions": {
      "name": "DescribeRemediationExceptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRemediationExceptionsRequest"
      },
      "output": {
        "shape": "DescribeRemediationExceptionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Returns the details of one or more remediation exceptions. A detailed view of a remediation exception for a set of resources that includes an explanation of an exception and the time when the exception will be deleted. When you specify the limit and the next token, you receive a paginated response. </p> <note> <p>AWS Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.</p> <p>When you specify the limit and the next token, you receive a paginated response. </p> <p>Limit and next token are not applicable if you request resources in batch. It is only applicable, when you request all resources.</p> </note>"
    },
    "DescribeRemediationExecutionStatus": {
      "name": "DescribeRemediationExecutionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRemediationExecutionStatusRequest"
      },
      "output": {
        "shape": "DescribeRemediationExecutionStatusResponse"
      },
      "errors": [
        {
          "shape": "NoSuchRemediationConfigurationException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed. When you specify the limit and the next token, you receive a paginated response.</p>"
    },
    "DescribeRetentionConfigurations": {
      "name": "DescribeRetentionConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRetentionConfigurationsRequest"
      },
      "output": {
        "shape": "DescribeRetentionConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "NoSuchRetentionConfigurationException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns the details of one or more retention configurations. If the retention configuration name is not specified, this action returns the details for all the retention configurations for that account.</p> <note> <p>Currently, AWS Config supports only one retention configuration per region in your account.</p> </note>"
    },
    "GetAggregateComplianceDetailsByConfigRule": {
      "name": "GetAggregateComplianceDetailsByConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAggregateComplianceDetailsByConfigRuleRequest"
      },
      "output": {
        "shape": "GetAggregateComplianceDetailsByConfigRuleResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule. </p> <note> <p>The results can return an empty result page. But if you have a <code>nextToken</code>, the results are displayed on the next page.</p> </note>"
    },
    "GetAggregateConfigRuleComplianceSummary": {
      "name": "GetAggregateConfigRuleComplianceSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAggregateConfigRuleComplianceSummaryRequest"
      },
      "output": {
        "shape": "GetAggregateConfigRuleComplianceSummaryResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.</p> <note> <p>The results can return an empty result page, but if you have a nextToken, the results are displayed on the next page.</p> </note>"
    },
    "GetAggregateDiscoveredResourceCounts": {
      "name": "GetAggregateDiscoveredResourceCounts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAggregateDiscoveredResourceCountsRequest"
      },
      "output": {
        "shape": "GetAggregateDiscoveredResourceCountsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Returns the resource counts across accounts and regions that are present in your AWS Config aggregator. You can request the resource counts by providing filters and GroupByKey.</p> <p>For example, if the input contains accountID 12345678910 and region us-east-1 in filters, the API returns the count of resources in account ID 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API returns resource counts for all source accounts that are present in your aggregator.</p>"
    },
    "GetAggregateResourceConfig": {
      "name": "GetAggregateResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAggregateResourceConfigRequest"
      },
      "output": {
        "shape": "GetAggregateResourceConfigResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        },
        {
          "shape": "OversizedConfigurationItemException"
        },
        {
          "shape": "ResourceNotDiscoveredException"
        }
      ],
      "documentation": "<p>Returns configuration item that is aggregated for your specific resource in a specific source account and region.</p>"
    },
    "GetComplianceDetailsByConfigRule": {
      "name": "GetComplianceDetailsByConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetComplianceDetailsByConfigRuleRequest"
      },
      "output": {
        "shape": "GetComplianceDetailsByConfigRuleResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConfigRuleException"
        }
      ],
      "documentation": "<p>Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.</p>"
    },
    "GetComplianceDetailsByResource": {
      "name": "GetComplianceDetailsByResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetComplianceDetailsByResourceRequest"
      },
      "output": {
        "shape": "GetComplianceDetailsByResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.</p>"
    },
    "GetComplianceSummaryByConfigRule": {
      "name": "GetComplianceSummaryByConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "GetComplianceSummaryByConfigRuleResponse"
      },
      "documentation": "<p>Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.</p>"
    },
    "GetComplianceSummaryByResourceType": {
      "name": "GetComplianceSummaryByResourceType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetComplianceSummaryByResourceTypeRequest"
      },
      "output": {
        "shape": "GetComplianceSummaryByResourceTypeResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.</p>"
    },
    "GetConformancePackComplianceDetails": {
      "name": "GetConformancePackComplianceDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConformancePackComplianceDetailsRequest"
      },
      "output": {
        "shape": "GetConformancePackComplianceDetailsResponse"
      },
      "errors": [
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConformancePackException"
        },
        {
          "shape": "NoSuchConfigRuleInConformancePackException"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Returns compliance details of a conformance pack for all AWS resources that are monitered by conformance pack.</p>"
    },
    "GetConformancePackComplianceSummary": {
      "name": "GetConformancePackComplianceSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConformancePackComplianceSummaryRequest"
      },
      "output": {
        "shape": "GetConformancePackComplianceSummaryResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConformancePackException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack.</p>"
    },
    "GetDiscoveredResourceCounts": {
      "name": "GetDiscoveredResourceCounts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDiscoveredResourceCountsRequest"
      },
      "output": {
        "shape": "GetDiscoveredResourceCountsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account. </p> <p class=\"title\"> <b>Example</b> </p> <ol> <li> <p>AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets.</p> </li> <li> <p>You make a call to the <code>GetDiscoveredResourceCounts</code> action and specify that you want all resource types. </p> </li> <li> <p>AWS Config returns the following:</p> <ul> <li> <p>The resource types (EC2 instances, IAM users, and S3 buckets).</p> </li> <li> <p>The number of each resource type (25, 20, and 15).</p> </li> <li> <p>The total number of all resources (60).</p> </li> </ul> </li> </ol> <p>The response is paginated. By default, AWS Config lists 100 <a>ResourceCount</a> objects on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p> <note> <p>If you make a call to the <a>GetDiscoveredResourceCounts</a> action, you might not immediately receive resource counts in the following situations:</p> <ul> <li> <p>You are a new AWS Config customer.</p> </li> <li> <p>You just enabled resource recording.</p> </li> </ul> <p>It might take a few minutes for AWS Config to record and count your resources. Wait a few minutes and then retry the <a>GetDiscoveredResourceCounts</a> action. </p> </note>"
    },
    "GetOrganizationConfigRuleDetailedStatus": {
      "name": "GetOrganizationConfigRuleDetailedStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOrganizationConfigRuleDetailedStatusRequest"
      },
      "output": {
        "shape": "GetOrganizationConfigRuleDetailedStatusResponse"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConfigRuleException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Returns detailed status for each member account within an organization for a given organization config rule.</p> <p>Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p>"
    },
    "GetOrganizationConformancePackDetailedStatus": {
      "name": "GetOrganizationConformancePackDetailedStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOrganizationConformancePackDetailedStatusRequest"
      },
      "output": {
        "shape": "GetOrganizationConformancePackDetailedStatusResponse"
      },
      "errors": [
        {
          "shape": "NoSuchOrganizationConformancePackException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        }
      ],
      "documentation": "<p>Returns detailed status for each member account within an organization for a given organization conformance pack.</p> <p>Only a master account and a delegated administrator account can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p>"
    },
    "GetResourceConfigHistory": {
      "name": "GetResourceConfigHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResourceConfigHistoryRequest"
      },
      "output": {
        "shape": "GetResourceConfigHistoryResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidTimeRangeException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoAvailableConfigurationRecorderException"
        },
        {
          "shape": "ResourceNotDiscoveredException"
        }
      ],
      "documentation": "<p>Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your <code>ConfigurationItems</code> between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the <code>ConfigurationItems</code> for the specified retention period. </p> <p>The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p> <note> <p>Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified <code>limit</code>. In such cases, you can make another call, using the <code>nextToken</code>.</p> </note>"
    },
    "ListAggregateDiscoveredResources": {
      "name": "ListAggregateDiscoveredResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAggregateDiscoveredResourcesRequest"
      },
      "output": {
        "shape": "ListAggregateDiscoveredResourcesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        }
      ],
      "documentation": "<p>Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions. A resource identifier includes the resource type, ID, (if available) the custom resource name, source account, and source region. You can narrow the results to include only resources that have specific resource IDs, or a resource name, or source account ID, or source region.</p> <p>For example, if the input consists of accountID 12345678910 and the region is us-east-1 for resource type <code>AWS::EC2::Instance</code> then the API returns all the EC2 instance identifiers of accountID 12345678910 and region us-east-1.</p>"
    },
    "ListDiscoveredResources": {
      "name": "ListDiscoveredResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDiscoveredResourcesRequest"
      },
      "output": {
        "shape": "ListDiscoveredResourcesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "NoAvailableConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.</p> <note> <p>You can specify either resource IDs or a resource name, but not both, in the same request.</p> </note> <p>The response is paginated. By default, AWS Config lists 100 resource identifiers on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string. To get the next page of results, run the request again and specify the string for the <code>nextToken</code> parameter.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>List the tags for AWS Config resource.</p>"
    },
    "PutAggregationAuthorization": {
      "name": "PutAggregationAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAggregationAuthorizationRequest"
      },
      "output": {
        "shape": "PutAggregationAuthorizationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Authorizes the aggregator account and region to collect data from the source account and region. </p>"
    },
    "PutConfigRule": {
      "name": "PutConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutConfigRuleRequest"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MaxNumberOfConfigRulesExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "NoAvailableConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.</p> <p>You can use this action for custom AWS Config rules and AWS managed Config rules. A custom AWS Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.</p> <p>If you are adding a new custom AWS Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the <code>PutConfigRule</code> action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the <code>SourceIdentifier</code> key. This key is part of the <code>Source</code> object, which is part of the <code>ConfigRule</code> object. </p> <p>If you are adding an AWS managed Config rule, specify the rule's identifier for the <code>SourceIdentifier</code> key. To reference AWS managed Config rule identifiers, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html\">About AWS Managed Config Rules</a>.</p> <p>For any new rule that you add, specify the <code>ConfigRuleName</code> in the <code>ConfigRule</code> object. Do not specify the <code>ConfigRuleArn</code> or the <code>ConfigRuleId</code>. These values are generated by AWS Config for new rules.</p> <p>If you are updating a rule that you added previously, you can specify the rule by <code>ConfigRuleName</code>, <code>ConfigRuleId</code>, or <code>ConfigRuleArn</code> in the <code>ConfigRule</code> data type that you use in this request.</p> <p>The maximum number of rules that AWS Config supports is 150.</p> <p>For information about requesting a rule limit increase, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config\">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p> <p>For more information about developing and using AWS Config rules, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html\">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>"
    },
    "PutConfigurationAggregator": {
      "name": "PutConfigurationAggregator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutConfigurationAggregatorRequest"
      },
      "output": {
        "shape": "PutConfigurationAggregatorResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidRoleException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        },
        {
          "shape": "OrganizationAllFeaturesNotEnabledException"
        }
      ],
      "documentation": "<p>Creates and updates the configuration aggregator with the selected source accounts and regions. The source account can be individual account(s) or an organization.</p> <note> <p>AWS Config should be enabled in source accounts and regions you want to aggregate.</p> <p>If your source type is an organization, you must be signed in to the master account and all features must be enabled in your organization. AWS Config calls <code>EnableAwsServiceAccess</code> API to enable integration between AWS Config and AWS Organizations. </p> </note>"
    },
    "PutConfigurationRecorder": {
      "name": "PutConfigurationRecorder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutConfigurationRecorderRequest"
      },
      "errors": [
        {
          "shape": "MaxNumberOfConfigurationRecordersExceededException"
        },
        {
          "shape": "InvalidConfigurationRecorderNameException"
        },
        {
          "shape": "InvalidRoleException"
        },
        {
          "shape": "InvalidRecordingGroupException"
        }
      ],
      "documentation": "<p>Creates a new configuration recorder to record the selected resource configurations.</p> <p>You can use this action to change the role <code>roleARN</code> or the <code>recordingGroup</code> of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> <p>If <code>ConfigurationRecorder</code> does not have the <b>recordingGroup</b> parameter specified, the default is to record all supported resource types.</p> </note>"
    },
    "PutConformancePack": {
      "name": "PutConformancePack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutConformancePackRequest"
      },
      "output": {
        "shape": "PutConformancePackResponse"
      },
      "errors": [
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "ConformancePackTemplateValidationException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MaxNumberOfConformancePacksExceededException"
        }
      ],
      "documentation": "<p>Creates or updates a conformance pack. A conformance pack is a collection of AWS Config rules that can be easily deployed in an account and a region and across AWS Organization.</p> <p>This API creates a service linked role <code>AWSServiceRoleForConfigConforms</code> in your account. The service linked role is created only when the role does not exist in your account. </p> <note> <p>You must specify either the <code>TemplateS3Uri</code> or the <code>TemplateBody</code> parameter, but not both. If you provide both AWS Config uses the <code>TemplateS3Uri</code> parameter and ignores the <code>TemplateBody</code> parameter.</p> </note>"
    },
    "PutDeliveryChannel": {
      "name": "PutDeliveryChannel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutDeliveryChannelRequest"
      },
      "errors": [
        {
          "shape": "MaxNumberOfDeliveryChannelsExceededException"
        },
        {
          "shape": "NoAvailableConfigurationRecorderException"
        },
        {
          "shape": "InvalidDeliveryChannelNameException"
        },
        {
          "shape": "NoSuchBucketException"
        },
        {
          "shape": "InvalidS3KeyPrefixException"
        },
        {
          "shape": "InvalidSNSTopicARNException"
        },
        {
          "shape": "InsufficientDeliveryPolicyException"
        }
      ],
      "documentation": "<p>Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.</p> <p>Before you can create a delivery channel, you must create a configuration recorder.</p> <p>You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.</p> <note> <p>You can have only one delivery channel per region in your account.</p> </note>"
    },
    "PutEvaluations": {
      "name": "PutEvaluations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutEvaluationsRequest"
      },
      "output": {
        "shape": "PutEvaluationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidResultTokenException"
        },
        {
          "shape": "NoSuchConfigRuleException"
        }
      ],
      "documentation": "<p>Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.</p>"
    },
    "PutOrganizationConfigRule": {
      "name": "PutOrganizationConfigRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutOrganizationConfigRuleRequest"
      },
      "output": {
        "shape": "PutOrganizationConfigRuleResponse"
      },
      "errors": [
        {
          "shape": "MaxNumberOfOrganizationConfigRulesExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        },
        {
          "shape": "OrganizationAllFeaturesNotEnabledException"
        },
        {
          "shape": "InsufficientPermissionsException"
        }
      ],
      "documentation": "<p>Adds or updates organization config rule for your entire organization evaluating whether your AWS resources comply with your desired configurations.</p> <p> Only a master account and a delegated administrator can create or update an organization config rule. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added. </p> <p>This API enables organization service access through the <code>EnableAWSServiceAccess</code> action and creates a service linked role <code>AWSServiceRoleForConfigMultiAccountSetup</code> in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. AWS Config verifies the existence of role with <code>GetRole</code> action.</p> <p>To use this API with delegated administrator, register a delegated administrator by calling AWS Organization <code>register-delegated-administrator</code> for <code>config-multiaccountsetup.amazonaws.com</code>. </p> <p>You can use this action to create both custom AWS Config rules and AWS managed Config rules. If you are adding a new custom AWS Config rule, you must first create AWS Lambda function in the master account or a delegated administrator that the rule invokes to evaluate your resources. When you use the <code>PutOrganizationConfigRule</code> action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. If you are adding an AWS managed Config rule, specify the rule's identifier for the <code>RuleIdentifier</code> key.</p> <p>The maximum number of organization config rules that AWS Config supports is 150 and 3 delegated administrator per organization. </p> <note> <p>Prerequisite: Ensure you call <code>EnableAllFeatures</code> API to enable all features in an organization.</p> <p>Specify either <code>OrganizationCustomRuleMetadata</code> or <code>OrganizationManagedRuleMetadata</code>.</p> </note>"
    },
    "PutOrganizationConformancePack": {
      "name": "PutOrganizationConformancePack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutOrganizationConformancePackRequest"
      },
      "output": {
        "shape": "PutOrganizationConformancePackResponse"
      },
      "errors": [
        {
          "shape": "MaxNumberOfOrganizationConformancePacksExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "OrganizationAccessDeniedException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "OrganizationConformancePackTemplateValidationException"
        },
        {
          "shape": "OrganizationAllFeaturesNotEnabledException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Deploys conformance packs across member accounts in an AWS Organization.</p> <p>Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations <code>ListDelegatedAdministrator</code> permissions are added.</p> <p>This API enables organization service access for <code>config-multiaccountsetup.amazonaws.com</code> through the <code>EnableAWSServiceAccess</code> action and creates a service linked role <code>AWSServiceRoleForConfigMultiAccountSetup</code> in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling AWS Organization <code>register-delegate-admin</code> for <code>config-multiaccountsetup.amazonaws.com</code>.</p> <note> <p>Prerequisite: Ensure you call <code>EnableAllFeatures</code> API to enable all features in an organization.</p> <p>You must specify either the <code>TemplateS3Uri</code> or the <code>TemplateBody</code> parameter, but not both. If you provide both AWS Config uses the <code>TemplateS3Uri</code> parameter and ignores the <code>TemplateBody</code> parameter.</p> <p>AWS Config sets the state of a conformance pack to CREATE_IN_PROGRESS and UPDATE_IN_PROGRESS until the conformance pack is created or updated. You cannot update a conformance pack while it is in this state.</p> <p>You can create 6 conformance packs with 25 AWS Config rules in each pack and 3 delegated administrator per organization. </p> </note>"
    },
    "PutRemediationConfigurations": {
      "name": "PutRemediationConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRemediationConfigurationsRequest"
      },
      "output": {
        "shape": "PutRemediationConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Adds or updates the remediation configuration with a specific AWS Config rule with the selected target or action. The API creates the <code>RemediationConfiguration</code> object for the AWS Config rule. The AWS Config rule must already exist for you to add a remediation configuration. The target (SSM document) must exist and have permissions to use the target. </p> <note> <p>If you make backward incompatible changes to the SSM document, you must call this again to ensure the remediations can run.</p> </note>"
    },
    "PutRemediationExceptions": {
      "name": "PutRemediationExceptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRemediationExceptionsRequest"
      },
      "output": {
        "shape": "PutRemediationExceptionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InsufficientPermissionsException"
        }
      ],
      "documentation": "<p>A remediation exception is when a specific resource is no longer considered for auto-remediation. This API adds a new exception or updates an exisiting exception for a specific resource with a specific AWS Config rule. </p> <note> <p>AWS Config generates a remediation exception when a problem occurs executing a remediation action to a specific resource. Remediation exceptions blocks auto-remediation until the exception is cleared.</p> </note>"
    },
    "PutResourceConfig": {
      "name": "PutResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutResourceConfigRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "NoRunningConfigurationRecorderException"
        },
        {
          "shape": "MaxActiveResourcesExceededException"
        }
      ],
      "documentation": "<p>Records the configuration state for the resource provided in the request. The configuration state of a resource is represented in AWS Config as Configuration Items. Once this API records the configuration item, you can retrieve the list of configuration items for the custom resource type using existing AWS Config APIs. </p> <note> <p>The custom resource type must be registered with AWS CloudFormation. This API accepts the configuration item registered with AWS CloudFormation.</p> <p>When you call this API, AWS Config only stores configuration state of the resource provided in the request. This API does not change or remediate the configuration of the resource. </p> <p>Write-only schema properites are not recorded as part of the published configuration item.</p> </note>"
    },
    "PutRetentionConfiguration": {
      "name": "PutRetentionConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRetentionConfigurationRequest"
      },
      "output": {
        "shape": "PutRetentionConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "MaxNumberOfRetentionConfigurationsExceededException"
        }
      ],
      "documentation": "<p>Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information. The API creates the <code>RetentionConfiguration</code> object and names the object as <b>default</b>. When you have a <code>RetentionConfiguration</code> object named <b>default</b>, calling the API modifies the default object. </p> <note> <p>Currently, AWS Config supports only one retention configuration per region in your account.</p> </note>"
    },
    "SelectAggregateResourceConfig": {
      "name": "SelectAggregateResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SelectAggregateResourceConfigRequest"
      },
      "output": {
        "shape": "SelectAggregateResourceConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidExpressionException"
        },
        {
          "shape": "NoSuchConfigurationAggregatorException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Accepts a structured query language (SQL) SELECT command and an aggregator to query configuration state of AWS resources across multiple accounts and regions, performs the corresponding search, and returns resource configurations matching the properties.</p> <p>For more information about query components, see the <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/query-components.html\"> <b>Query Components</b> </a> section in the AWS Config Developer Guide.</p>"
    },
    "SelectResourceConfig": {
      "name": "SelectResourceConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SelectResourceConfigRequest"
      },
      "output": {
        "shape": "SelectResourceConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidExpressionException"
        },
        {
          "shape": "InvalidLimitException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Accepts a structured query language (SQL) <code>SELECT</code> command, performs the corresponding search, and returns resource configurations matching the properties.</p> <p>For more information about query components, see the <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/query-components.html\"> <b>Query Components</b> </a> section in the AWS Config Developer Guide.</p>"
    },
    "StartConfigRulesEvaluation": {
      "name": "StartConfigRulesEvaluation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartConfigRulesEvaluationRequest"
      },
      "output": {
        "shape": "StartConfigRulesEvaluationResponse"
      },
      "errors": [
        {
          "shape": "NoSuchConfigRuleException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidParameterValueException"
        }
      ],
      "documentation": "<p>Runs an on-demand evaluation for the specified AWS Config rules against the last known configuration state of the resources. Use <code>StartConfigRulesEvaluation</code> when you want to test that a rule you updated is working as expected. <code>StartConfigRulesEvaluation</code> does not re-record the latest configuration state for your resources. It re-runs an evaluation against the last known state of your resources. </p> <p>You can specify up to 25 AWS Config rules per request. </p> <p>An existing <code>StartConfigRulesEvaluation</code> call for the specified rules must complete before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a <code>ConfigRuleEvaluationStarted</code> notification when the evaluation starts.</p> <note> <p>You don't need to call the <code>StartConfigRulesEvaluation</code> API to run an evaluation for a new rule. When you create a rule, AWS Config evaluates your resources against the rule automatically. </p> </note> <p>The <code>StartConfigRulesEvaluation</code> API is useful if you want to run on-demand evaluations, such as the following example:</p> <ol> <li> <p>You have a custom rule that evaluates your IAM resources every 24 hours.</p> </li> <li> <p>You update your Lambda function to add additional conditions to your rule.</p> </li> <li> <p>Instead of waiting for the next periodic evaluation, you call the <code>StartConfigRulesEvaluation</code> API.</p> </li> <li> <p>AWS Config invokes your Lambda function and evaluates your IAM resources.</p> </li> <li> <p>Your custom rule will still run periodic evaluations every 24 hours.</p> </li> </ol>"
    },
    "StartConfigurationRecorder": {
      "name": "StartConfigurationRecorder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartConfigurationRecorderRequest"
      },
      "errors": [
        {
          "shape": "NoSuchConfigurationRecorderException"
        },
        {
          "shape": "NoAvailableDeliveryChannelException"
        }
      ],
      "documentation": "<p>Starts recording configurations of the AWS resources you have selected to record in your AWS account.</p> <p>You must have created at least one delivery channel to successfully start the configuration recorder.</p>"
    },
    "StartRemediationExecution": {
      "name": "StartRemediationExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartRemediationExecutionRequest"
      },
      "output": {
        "shape": "StartRemediationExecutionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InsufficientPermissionsException"
        },
        {
          "shape": "NoSuchRemediationConfigurationException"
        }
      ],
      "documentation": "<p>Runs an on-demand remediation for the specified AWS Config rules against the last known remediation configuration. It runs an execution against the current state of your resources. Remediation execution is asynchronous.</p> <p>You can specify up to 100 resource keys per request. An existing StartRemediationExecution call for the specified resource keys must complete before you can call the API again.</p>"
    },
    "StopConfigurationRecorder": {
      "name": "StopConfigurationRecorder",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopConfigurationRecorderRequest"
      },
      "errors": [
        {
          "shape": "NoSuchConfigurationRecorderException"
        }
      ],
      "documentation": "<p>Stops recording configurations of the AWS resources you have selected to record in your AWS account.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes specified tags from a resource.</p>"
    }
  },
  "shapes": {
    "ARN": {
      "type": "string"
    },
    "AccountAggregationSource": {
      "type": "structure",
      "required": [
        "AccountIds"
      ],
      "members": {
        "AccountIds": {
          "shape": "AccountAggregationSourceAccountList",
          "documentation": "<p>The 12-digit account ID of the account being aggregated. </p>"
        },
        "AllAwsRegions": {
          "shape": "Boolean",
          "documentation": "<p>If true, aggregate existing AWS Config regions and future regions.</p>"
        },
        "AwsRegions": {
          "shape": "AggregatorRegionList",
          "documentation": "<p>The source regions being aggregated.</p>"
        }
      },
      "documentation": "<p>A collection of accounts and regions.</p>"
    },
    "AccountAggregationSourceAccountList": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      },
      "min": 1
    },
    "AccountAggregationSourceList": {
      "type": "list",
      "member": {
        "shape": "AccountAggregationSource"
      },
      "max": 1,
      "min": 0
    },
    "AccountId": {
      "type": "string",
      "pattern": "\\d{12}"
    },
    "AggregateComplianceByConfigRule": {
      "type": "structure",
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "Compliance": {
          "shape": "Compliance",
          "documentation": "<p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the source account.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region from where the data is aggregated.</p>"
        }
      },
      "documentation": "<p>Indicates whether an AWS Config rule is compliant based on account ID, region, compliance, and rule name.</p> <p>A rule is compliant if all of the resources that the rule evaluated comply with it. It is noncompliant if any of these resources do not comply.</p>"
    },
    "AggregateComplianceByConfigRuleList": {
      "type": "list",
      "member": {
        "shape": "AggregateComplianceByConfigRule"
      }
    },
    "AggregateComplianceCount": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The 12-digit account ID or region based on the GroupByKey value.</p>"
        },
        "ComplianceSummary": {
          "shape": "ComplianceSummary",
          "documentation": "<p>The number of compliant and noncompliant AWS Config rules.</p>"
        }
      },
      "documentation": "<p>Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator.</p>"
    },
    "AggregateComplianceCountList": {
      "type": "list",
      "member": {
        "shape": "AggregateComplianceCount"
      }
    },
    "AggregateEvaluationResult": {
      "type": "structure",
      "members": {
        "EvaluationResultIdentifier": {
          "shape": "EvaluationResultIdentifier",
          "documentation": "<p>Uniquely identifies the evaluation result.</p>"
        },
        "ComplianceType": {
          "shape": "ComplianceType",
          "documentation": "<p>The resource compliance status.</p> <p>For the <code>AggregationEvaluationResult</code> data type, AWS Config supports only the <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. AWS Config does not support the <code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code> value.</p>"
        },
        "ResultRecordedTime": {
          "shape": "Date",
          "documentation": "<p>The time when AWS Config recorded the aggregate evaluation result.</p>"
        },
        "ConfigRuleInvokedTime": {
          "shape": "Date",
          "documentation": "<p>The time when the AWS Config rule evaluated the AWS resource.</p>"
        },
        "Annotation": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Supplementary information about how the agrregate evaluation determined the compliance.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the source account.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region from where the data is aggregated.</p>"
        }
      },
      "documentation": "<p>The details of an AWS Config evaluation for an account ID and region in an aggregator. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information. </p>"
    },
    "AggregateEvaluationResultList": {
      "type": "list",
      "member": {
        "shape": "AggregateEvaluationResult"
      }
    },
    "AggregateResourceIdentifier": {
      "type": "structure",
      "required": [
        "SourceAccountId",
        "SourceRegion",
        "ResourceId",
        "ResourceType"
      ],
      "members": {
        "SourceAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the source account.</p>"
        },
        "SourceRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region where data is aggregated.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the AWS resource.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the AWS resource.</p>"
        },
        "ResourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the AWS resource.</p>"
        }
      },
      "documentation": "<p>The details that identify a resource that is collected by AWS Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.</p>"
    },
    "AggregatedSourceStatus": {
      "type": "structure",
      "members": {
        "SourceId": {
          "shape": "String",
          "documentation": "<p>The source account ID or an organization.</p>"
        },
        "SourceType": {
          "shape": "AggregatedSourceType",
          "documentation": "<p>The source account or an organization.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region authorized to collect aggregated data.</p>"
        },
        "LastUpdateStatus": {
          "shape": "AggregatedSourceStatusType",
          "documentation": "<p>Filters the last updated status type.</p> <ul> <li> <p>Valid value FAILED indicates errors while moving data.</p> </li> <li> <p>Valid value SUCCEEDED indicates the data was successfully moved.</p> </li> <li> <p>Valid value OUTDATED indicates the data is not the most recent.</p> </li> </ul>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>The time of the last update.</p>"
        },
        "LastErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code that AWS Config returned when the source account aggregation last failed.</p>"
        },
        "LastErrorMessage": {
          "shape": "String",
          "documentation": "<p>The message indicating that the source account aggregation failed due to an error.</p>"
        }
      },
      "documentation": "<p>The current sync status between the source and the aggregator account.</p>"
    },
    "AggregatedSourceStatusList": {
      "type": "list",
      "member": {
        "shape": "AggregatedSourceStatus"
      }
    },
    "AggregatedSourceStatusType": {
      "type": "string",
      "enum": [
        "FAILED",
        "SUCCEEDED",
        "OUTDATED"
      ]
    },
    "AggregatedSourceStatusTypeList": {
      "type": "list",
      "member": {
        "shape": "AggregatedSourceStatusType"
      },
      "min": 1
    },
    "AggregatedSourceType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "ORGANIZATION"
      ]
    },
    "AggregationAuthorization": {
      "type": "structure",
      "members": {
        "AggregationAuthorizationArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the aggregation object.</p>"
        },
        "AuthorizedAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the account authorized to aggregate data.</p>"
        },
        "AuthorizedAwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region authorized to collect aggregated data.</p>"
        },
        "CreationTime": {
          "shape": "Date",
          "documentation": "<p>The time stamp when the aggregation authorization was created.</p>"
        }
      },
      "documentation": "<p>An object that represents the authorizations granted to aggregator accounts and regions.</p>"
    },
    "AggregationAuthorizationList": {
      "type": "list",
      "member": {
        "shape": "AggregationAuthorization"
      }
    },
    "AggregatorRegionList": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "min": 1
    },
    "AllSupported": {
      "type": "boolean"
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "Annotation": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "AutoRemediationAttemptSeconds": {
      "type": "long",
      "box": true,
      "max": 2678000,
      "min": 1
    },
    "AutoRemediationAttempts": {
      "type": "integer",
      "box": true,
      "max": 25,
      "min": 1
    },
    "AvailabilityZone": {
      "type": "string"
    },
    "AwsRegion": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "BaseConfigurationItem": {
      "type": "structure",
      "members": {
        "version": {
          "shape": "Version",
          "documentation": "<p>The version number of the resource configuration.</p>"
        },
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit AWS account ID associated with the resource.</p>"
        },
        "configurationItemCaptureTime": {
          "shape": "ConfigurationItemCaptureTime",
          "documentation": "<p>The time when the configuration recording was initiated.</p>"
        },
        "configurationItemStatus": {
          "shape": "ConfigurationItemStatus",
          "documentation": "<p>The configuration item status. The valid values are:</p> <ul> <li> <p>OK – The resource configuration has been updated</p> </li> <li> <p>ResourceDiscovered – The resource was newly discovered</p> </li> <li> <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type</p> </li> <li> <p>ResourceDeleted – The resource was deleted</p> </li> <li> <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type</p> </li> </ul> <note> <p>The CIs do not incur any cost.</p> </note>"
        },
        "configurationStateId": {
          "shape": "ConfigurationStateId",
          "documentation": "<p>An identifier that indicates the ordering of the configuration items of a resource.</p>"
        },
        "arn": {
          "shape": "ARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of AWS resource.</p>"
        },
        "resourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource (for example., sg-xxxxxx).</p>"
        },
        "resourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The custom name of the resource, if available.</p>"
        },
        "awsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region where the resource resides.</p>"
        },
        "availabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p>The Availability Zone associated with the resource.</p>"
        },
        "resourceCreationTime": {
          "shape": "ResourceCreationTime",
          "documentation": "<p>The time stamp when the resource was created.</p>"
        },
        "configuration": {
          "shape": "Configuration",
          "documentation": "<p>The description of the resource configuration.</p>"
        },
        "supplementaryConfiguration": {
          "shape": "SupplementaryConfiguration",
          "documentation": "<p>Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the configuration parameter.</p>"
        }
      },
      "documentation": "<p>The detailed configuration of a specified resource.</p>"
    },
    "BaseConfigurationItems": {
      "type": "list",
      "member": {
        "shape": "BaseConfigurationItem"
      }
    },
    "BaseResourceId": {
      "type": "string",
      "max": 768,
      "min": 1
    },
    "BatchGetAggregateResourceConfigRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName",
        "ResourceIdentifiers"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "ResourceIdentifiers": {
          "shape": "ResourceIdentifiersList",
          "documentation": "<p>A list of aggregate ResourceIdentifiers objects. </p>"
        }
      }
    },
    "BatchGetAggregateResourceConfigResponse": {
      "type": "structure",
      "members": {
        "BaseConfigurationItems": {
          "shape": "BaseConfigurationItems",
          "documentation": "<p>A list that contains the current configuration of one or more resources.</p>"
        },
        "UnprocessedResourceIdentifiers": {
          "shape": "UnprocessedResourceIdentifierList",
          "documentation": "<p>A list of resource identifiers that were not processed with current scope. The list is empty if all the resources are processed.</p>"
        }
      }
    },
    "BatchGetResourceConfigRequest": {
      "type": "structure",
      "required": [
        "resourceKeys"
      ],
      "members": {
        "resourceKeys": {
          "shape": "ResourceKeys",
          "documentation": "<p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID.</p>"
        }
      }
    },
    "BatchGetResourceConfigResponse": {
      "type": "structure",
      "members": {
        "baseConfigurationItems": {
          "shape": "BaseConfigurationItems",
          "documentation": "<p>A list that contains the current configuration of one or more resources.</p>"
        },
        "unprocessedResourceKeys": {
          "shape": "ResourceKeys",
          "documentation": "<p>A list of resource keys that were not processed with the current response. The unprocessesResourceKeys value is in the same form as ResourceKeys, so the value can be directly provided to a subsequent BatchGetResourceConfig operation. If there are no unprocessed resource keys, the response contains an empty unprocessedResourceKeys list. </p>"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "ChannelName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ChronologicalOrder": {
      "type": "string",
      "enum": [
        "Reverse",
        "Forward"
      ]
    },
    "Compliance": {
      "type": "structure",
      "members": {
        "ComplianceType": {
          "shape": "ComplianceType",
          "documentation": "<p>Indicates whether an AWS resource or AWS Config rule is compliant.</p> <p>A resource is compliant if it complies with all of the AWS Config rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.</p> <p>A rule is compliant if all of the resources that the rule evaluates comply with it. A rule is noncompliant if any of these resources do not comply.</p> <p>AWS Config returns the <code>INSUFFICIENT_DATA</code> value when no evaluation results are available for the AWS resource or AWS Config rule.</p> <p>For the <code>Compliance</code> data type, AWS Config supports only <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code> values. AWS Config does not support the <code>NOT_APPLICABLE</code> value for the <code>Compliance</code> data type.</p>"
        },
        "ComplianceContributorCount": {
          "shape": "ComplianceContributorCount",
          "documentation": "<p>The number of AWS resources or AWS Config rules that cause a result of <code>NON_COMPLIANT</code>, up to a maximum number.</p>"
        }
      },
      "documentation": "<p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>"
    },
    "ComplianceByConfigRule": {
      "type": "structure",
      "members": {
        "ConfigRuleName": {
          "shape": "StringWithCharLimit64",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "Compliance": {
          "shape": "Compliance",
          "documentation": "<p>Indicates whether the AWS Config rule is compliant.</p>"
        }
      },
      "documentation": "<p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it. A rule is noncompliant if any of these resources do not comply.</p>"
    },
    "ComplianceByConfigRules": {
      "type": "list",
      "member": {
        "shape": "ComplianceByConfigRule"
      }
    },
    "ComplianceByResource": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of the AWS resource that was evaluated.</p>"
        },
        "ResourceId": {
          "shape": "BaseResourceId",
          "documentation": "<p>The ID of the AWS resource that was evaluated.</p>"
        },
        "Compliance": {
          "shape": "Compliance",
          "documentation": "<p>Indicates whether the AWS resource complies with all of the AWS Config rules that evaluated it.</p>"
        }
      },
      "documentation": "<p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.</p>"
    },
    "ComplianceByResources": {
      "type": "list",
      "member": {
        "shape": "ComplianceByResource"
      }
    },
    "ComplianceContributorCount": {
      "type": "structure",
      "members": {
        "CappedCount": {
          "shape": "Integer",
          "documentation": "<p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item.</p>"
        },
        "CapExceeded": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the maximum count is reached.</p>"
        }
      },
      "documentation": "<p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.</p>"
    },
    "ComplianceResourceTypes": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit256"
      },
      "max": 100,
      "min": 0
    },
    "ComplianceSummariesByResourceType": {
      "type": "list",
      "member": {
        "shape": "ComplianceSummaryByResourceType"
      }
    },
    "ComplianceSummary": {
      "type": "structure",
      "members": {
        "CompliantResourceCount": {
          "shape": "ComplianceContributorCount",
          "documentation": "<p>The number of AWS Config rules or AWS resources that are compliant, up to a maximum of 25 for rules and 100 for resources.</p>"
        },
        "NonCompliantResourceCount": {
          "shape": "ComplianceContributorCount",
          "documentation": "<p>The number of AWS Config rules or AWS resources that are noncompliant, up to a maximum of 25 for rules and 100 for resources.</p>"
        },
        "ComplianceSummaryTimestamp": {
          "shape": "Date",
          "documentation": "<p>The time that AWS Config created the compliance summary.</p>"
        }
      },
      "documentation": "<p>The number of AWS Config rules or AWS resources that are compliant and noncompliant.</p>"
    },
    "ComplianceSummaryByResourceType": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of AWS resource.</p>"
        },
        "ComplianceSummary": {
          "shape": "ComplianceSummary",
          "documentation": "<p>The number of AWS resources that are compliant or noncompliant, up to a maximum of 100 for each.</p>"
        }
      },
      "documentation": "<p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each.</p>"
    },
    "ComplianceType": {
      "type": "string",
      "enum": [
        "COMPLIANT",
        "NON_COMPLIANT",
        "NOT_APPLICABLE",
        "INSUFFICIENT_DATA"
      ]
    },
    "ComplianceTypes": {
      "type": "list",
      "member": {
        "shape": "ComplianceType"
      },
      "max": 3,
      "min": 0
    },
    "ConfigExportDeliveryInfo": {
      "type": "structure",
      "members": {
        "lastStatus": {
          "shape": "DeliveryStatus",
          "documentation": "<p>Status of the last attempted delivery.</p>"
        },
        "lastErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code from the last attempted delivery.</p>"
        },
        "lastErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message from the last attempted delivery.</p>"
        },
        "lastAttemptTime": {
          "shape": "Date",
          "documentation": "<p>The time of the last attempted delivery.</p>"
        },
        "lastSuccessfulTime": {
          "shape": "Date",
          "documentation": "<p>The time of the last successful delivery.</p>"
        },
        "nextDeliveryTime": {
          "shape": "Date",
          "documentation": "<p>The time that the next delivery occurs.</p>"
        }
      },
      "documentation": "<p>Provides status of the delivery of the snapshot or the configuration history to the specified Amazon S3 bucket. Also provides the status of notifications about the Amazon S3 delivery to the specified Amazon SNS topic.</p>"
    },
    "ConfigRule": {
      "type": "structure",
      "required": [
        "Source"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name that you assign to the AWS Config rule. The name is required if you are adding a new rule.</p>"
        },
        "ConfigRuleArn": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Config rule.</p>"
        },
        "ConfigRuleId": {
          "shape": "StringWithCharLimit64",
          "documentation": "<p>The ID of the AWS Config rule.</p>"
        },
        "Description": {
          "shape": "EmptiableStringWithCharLimit256",
          "documentation": "<p>The description that you provide for the AWS Config rule.</p>"
        },
        "Scope": {
          "shape": "Scope",
          "documentation": "<p>Defines which resources can trigger an evaluation for the rule. The scope can include one or more resource types, a combination of one resource type and one resource ID, or a combination of a tag key and value. Specify a scope to constrain the resources that can trigger an evaluation for the rule. If you do not specify a scope, evaluations are triggered when any resource in the recording group changes.</p> <note> <p>The scope can be empty. </p> </note>"
        },
        "Source": {
          "shape": "Source",
          "documentation": "<p>Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.</p>"
        },
        "InputParameters": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>A string, in JSON format, that is passed to the AWS Config rule Lambda function.</p>"
        },
        "MaximumExecutionFrequency": {
          "shape": "MaximumExecutionFrequency",
          "documentation": "<p>The maximum frequency with which AWS Config runs evaluations for a rule. You can specify a value for <code>MaximumExecutionFrequency</code> when:</p> <ul> <li> <p>You are using an AWS managed rule that is triggered at a periodic frequency.</p> </li> <li> <p>Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </li> </ul> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> </note>"
        },
        "ConfigRuleState": {
          "shape": "ConfigRuleState",
          "documentation": "<p>Indicates whether the AWS Config rule is active or is currently being deleted by AWS Config. It can also indicate the evaluation status for the AWS Config rule.</p> <p>AWS Config sets the state of the rule to <code>EVALUATING</code> temporarily after you use the <code>StartConfigRulesEvaluation</code> request to evaluate your resources against the AWS Config rule.</p> <p>AWS Config sets the state of the rule to <code>DELETING_RESULTS</code> temporarily after you use the <code>DeleteEvaluationResults</code> request to delete the current evaluation results for the AWS Config rule.</p> <p>AWS Config temporarily sets the state of a rule to <code>DELETING</code> after you use the <code>DeleteConfigRule</code> request to delete the rule. After AWS Config deletes the rule, the rule and all of its evaluations are erased and are no longer available.</p>"
        },
        "CreatedBy": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Service principal name of the service that created the rule.</p> <note> <p>The field is populated only if the service linked rule is created by a service. The field is empty if you create your own rule.</p> </note>"
        }
      },
      "documentation": "<p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html\">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>"
    },
    "ConfigRuleComplianceFilters": {
      "type": "structure",
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "ComplianceType": {
          "shape": "ComplianceType",
          "documentation": "<p>The rule compliance status.</p> <p>For the <code>ConfigRuleComplianceFilters</code> data type, AWS Config supports only <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. AWS Config does not support the <code>NOT_APPLICABLE</code> and the <code>INSUFFICIENT_DATA</code> values.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the source account. </p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region where the data is aggregated. </p>"
        }
      },
      "documentation": "<p>Filters the compliance results based on account ID, region, compliance type, and rule name.</p>"
    },
    "ConfigRuleComplianceSummaryFilters": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the source account.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region where the data is aggregated.</p>"
        }
      },
      "documentation": "<p>Filters the results based on the account IDs and regions.</p>"
    },
    "ConfigRuleComplianceSummaryGroupKey": {
      "type": "string",
      "enum": [
        "ACCOUNT_ID",
        "AWS_REGION"
      ]
    },
    "ConfigRuleEvaluationStatus": {
      "type": "structure",
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "ConfigRuleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Config rule.</p>"
        },
        "ConfigRuleId": {
          "shape": "String",
          "documentation": "<p>The ID of the AWS Config rule.</p>"
        },
        "LastSuccessfulInvocationTime": {
          "shape": "Date",
          "documentation": "<p>The time that AWS Config last successfully invoked the AWS Config rule to evaluate your AWS resources.</p>"
        },
        "LastFailedInvocationTime": {
          "shape": "Date",
          "documentation": "<p>The time that AWS Config last failed to invoke the AWS Config rule to evaluate your AWS resources.</p>"
        },
        "LastSuccessfulEvaluationTime": {
          "shape": "Date",
          "documentation": "<p>The time that AWS Config last successfully evaluated your AWS resources against the rule.</p>"
        },
        "LastFailedEvaluationTime": {
          "shape": "Date",
          "documentation": "<p>The time that AWS Config last failed to evaluate your AWS resources against the rule.</p>"
        },
        "FirstActivatedTime": {
          "shape": "Date",
          "documentation": "<p>The time that you first activated the AWS Config rule.</p>"
        },
        "LastDeactivatedTime": {
          "shape": "Date",
          "documentation": "<p>The time that you last turned off the AWS Config rule.</p>"
        },
        "LastErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code that AWS Config returned when the rule last failed.</p>"
        },
        "LastErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message that AWS Config returned when the rule last failed.</p>"
        },
        "FirstEvaluationStarted": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether AWS Config has evaluated your resources against the rule at least once.</p> <ul> <li> <p> <code>true</code> - AWS Config has evaluated your AWS resources against the rule at least once.</p> </li> <li> <p> <code>false</code> - AWS Config has not once finished evaluating your AWS resources against the rule.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom AWS Config rules.</p>"
    },
    "ConfigRuleEvaluationStatusList": {
      "type": "list",
      "member": {
        "shape": "ConfigRuleEvaluationStatus"
      }
    },
    "ConfigRuleName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "ConfigRuleNames": {
      "type": "list",
      "member": {
        "shape": "ConfigRuleName"
      },
      "max": 25,
      "min": 0
    },
    "ConfigRuleState": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DELETING",
        "DELETING_RESULTS",
        "EVALUATING"
      ]
    },
    "ConfigRules": {
      "type": "list",
      "member": {
        "shape": "ConfigRule"
      }
    },
    "ConfigSnapshotDeliveryProperties": {
      "type": "structure",
      "members": {
        "deliveryFrequency": {
          "shape": "MaximumExecutionFrequency",
          "documentation": "<p>The frequency with which AWS Config delivers configuration snapshots.</p>"
        }
      },
      "documentation": "<p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for AWS Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>"
    },
    "ConfigStreamDeliveryInfo": {
      "type": "structure",
      "members": {
        "lastStatus": {
          "shape": "DeliveryStatus",
          "documentation": "<p>Status of the last attempted delivery.</p> <p> <b>Note</b> Providing an SNS topic on a <a href=\"https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html\">DeliveryChannel</a> for AWS Config is optional. If the SNS delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>"
        },
        "lastErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code from the last attempted delivery.</p>"
        },
        "lastErrorMessage": {
          "shape": "String",
          "documentation": "<p>The error message from the last attempted delivery.</p>"
        },
        "lastStatusChangeTime": {
          "shape": "Date",
          "documentation": "<p>The time from the last status change.</p>"
        }
      },
      "documentation": "<p>A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.</p>"
    },
    "Configuration": {
      "type": "string"
    },
    "ConfigurationAggregator": {
      "type": "structure",
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the aggregator.</p>"
        },
        "ConfigurationAggregatorArn": {
          "shape": "ConfigurationAggregatorArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the aggregator.</p>"
        },
        "AccountAggregationSources": {
          "shape": "AccountAggregationSourceList",
          "documentation": "<p>Provides a list of source accounts and regions to be aggregated.</p>"
        },
        "OrganizationAggregationSource": {
          "shape": "OrganizationAggregationSource",
          "documentation": "<p>Provides an organization and list of regions to be aggregated.</p>"
        },
        "CreationTime": {
          "shape": "Date",
          "documentation": "<p>The time stamp when the configuration aggregator was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Date",
          "documentation": "<p>The time of the last update.</p>"
        },
        "CreatedBy": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>AWS service that created the configuration aggregator.</p>"
        }
      },
      "documentation": "<p>The details about the configuration aggregator, including information about source accounts, regions, and metadata of the aggregator. </p>"
    },
    "ConfigurationAggregatorArn": {
      "type": "string",
      "pattern": "arn:aws[a-z\\-]*:config:[a-z\\-\\d]+:\\d+:config-aggregator/config-aggregator-[a-z\\d]+"
    },
    "ConfigurationAggregatorList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationAggregator"
      }
    },
    "ConfigurationAggregatorName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\w\\-]+"
    },
    "ConfigurationAggregatorNameList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationAggregatorName"
      },
      "max": 10,
      "min": 0
    },
    "ConfigurationItem": {
      "type": "structure",
      "members": {
        "version": {
          "shape": "Version",
          "documentation": "<p>The version number of the resource configuration.</p>"
        },
        "accountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit AWS account ID associated with the resource.</p>"
        },
        "configurationItemCaptureTime": {
          "shape": "ConfigurationItemCaptureTime",
          "documentation": "<p>The time when the configuration recording was initiated.</p>"
        },
        "configurationItemStatus": {
          "shape": "ConfigurationItemStatus",
          "documentation": "<p>The configuration item status. The valid values are:</p> <ul> <li> <p>OK – The resource configuration has been updated</p> </li> <li> <p>ResourceDiscovered – The resource was newly discovered</p> </li> <li> <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type</p> </li> <li> <p>ResourceDeleted – The resource was deleted</p> </li> <li> <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type</p> </li> </ul> <note> <p>The CIs do not incur any cost.</p> </note>"
        },
        "configurationStateId": {
          "shape": "ConfigurationStateId",
          "documentation": "<p>An identifier that indicates the ordering of the configuration items of a resource.</p>"
        },
        "configurationItemMD5Hash": {
          "shape": "ConfigurationItemMD5Hash",
          "documentation": "<p>Unique MD5 hash that represents the configuration item's state.</p> <p>You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.</p>"
        },
        "arn": {
          "shape": "ARN",
          "documentation": "<p>accoun</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of AWS resource.</p>"
        },
        "resourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource (for example, <code>sg-xxxxxx</code>).</p>"
        },
        "resourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The custom name of the resource, if available.</p>"
        },
        "awsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region where the resource resides.</p>"
        },
        "availabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p>The Availability Zone associated with the resource.</p>"
        },
        "resourceCreationTime": {
          "shape": "ResourceCreationTime",
          "documentation": "<p>The time stamp when the resource was created.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>A mapping of key value tags associated with the resource.</p>"
        },
        "relatedEvents": {
          "shape": "RelatedEventList",
          "documentation": "<p>A list of CloudTrail event IDs.</p> <p>A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html\">What Is AWS CloudTrail</a>.</p> <p>An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html\">LookupEvents API</a> in the <i>AWS CloudTrail API Reference</i> to retrieve the events for the resource.</p>"
        },
        "relationships": {
          "shape": "RelationshipList",
          "documentation": "<p>A list of related AWS resources.</p>"
        },
        "configuration": {
          "shape": "Configuration",
          "documentation": "<p>The description of the resource configuration.</p>"
        },
        "supplementaryConfiguration": {
          "shape": "SupplementaryConfiguration",
          "documentation": "<p>Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the <code>configuration</code> parameter.</p>"
        }
      },
      "documentation": "<p>A list that contains detailed configurations of a specified resource.</p>"
    },
    "ConfigurationItemCaptureTime": {
      "type": "timestamp"
    },
    "ConfigurationItemList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationItem"
      }
    },
    "ConfigurationItemMD5Hash": {
      "type": "string"
    },
    "ConfigurationItemStatus": {
      "type": "string",
      "enum": [
        "OK",
        "ResourceDiscovered",
        "ResourceNotRecorded",
        "ResourceDeleted",
        "ResourceDeletedNotRecorded"
      ]
    },
    "ConfigurationRecorder": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "RecorderName",
          "documentation": "<p>The name of the recorder. By default, AWS Config automatically assigns the name \"default\" when creating the configuration recorder. You cannot change the assigned name.</p>"
        },
        "roleARN": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the IAM role used to describe the AWS resources associated with the account.</p>"
        },
        "recordingGroup": {
          "shape": "RecordingGroup",
          "documentation": "<p>Specifies the types of AWS resources for which AWS Config records configuration changes.</p>"
        }
      },
      "documentation": "<p>An object that represents the recording of configuration changes of an AWS resource.</p>"
    },
    "ConfigurationRecorderList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationRecorder"
      }
    },
    "ConfigurationRecorderNameList": {
      "type": "list",
      "member": {
        "shape": "RecorderName"
      }
    },
    "ConfigurationRecorderStatus": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the configuration recorder.</p>"
        },
        "lastStartTime": {
          "shape": "Date",
          "documentation": "<p>The time the recorder was last started.</p>"
        },
        "lastStopTime": {
          "shape": "Date",
          "documentation": "<p>The time the recorder was last stopped.</p>"
        },
        "recording": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether or not the recorder is currently recording.</p>"
        },
        "lastStatus": {
          "shape": "RecorderStatus",
          "documentation": "<p>The last (previous) status of the recorder.</p>"
        },
        "lastErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code indicating that the recording failed.</p>"
        },
        "lastErrorMessage": {
          "shape": "String",
          "documentation": "<p>The message indicating that the recording failed due to an error.</p>"
        },
        "lastStatusChangeTime": {
          "shape": "Date",
          "documentation": "<p>The time when the status was last changed.</p>"
        }
      },
      "documentation": "<p>The current status of the configuration recorder.</p>"
    },
    "ConfigurationRecorderStatusList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationRecorderStatus"
      }
    },
    "ConfigurationStateId": {
      "type": "string"
    },
    "ConformancePackArn": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "ConformancePackComplianceFilters": {
      "type": "structure",
      "members": {
        "ConfigRuleNames": {
          "shape": "ConformancePackConfigRuleNames",
          "documentation": "<p>Filters the results by AWS Config rule names.</p>"
        },
        "ComplianceType": {
          "shape": "ConformancePackComplianceType",
          "documentation": "<p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>"
        }
      },
      "documentation": "<p>Filters the conformance pack by compliance types and AWS Config rule names.</p>"
    },
    "ConformancePackComplianceResourceIds": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit256"
      },
      "max": 5,
      "min": 0
    },
    "ConformancePackComplianceSummary": {
      "type": "structure",
      "required": [
        "ConformancePackName",
        "ConformancePackComplianceStatus"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>The name of the conformance pack name.</p>"
        },
        "ConformancePackComplianceStatus": {
          "shape": "ConformancePackComplianceType",
          "documentation": "<p>The status of the conformance pack. The allowed values are COMPLIANT and NON_COMPLIANT. </p>"
        }
      },
      "documentation": "<p>Summary includes the name and status of the conformance pack.</p>"
    },
    "ConformancePackComplianceSummaryList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackComplianceSummary"
      },
      "max": 5,
      "min": 1
    },
    "ConformancePackComplianceType": {
      "type": "string",
      "enum": [
        "COMPLIANT",
        "NON_COMPLIANT"
      ]
    },
    "ConformancePackConfigRuleNames": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit64"
      },
      "max": 10,
      "min": 0
    },
    "ConformancePackDetail": {
      "type": "structure",
      "required": [
        "ConformancePackName",
        "ConformancePackArn",
        "ConformancePackId",
        "DeliveryS3Bucket"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack.</p>"
        },
        "ConformancePackArn": {
          "shape": "ConformancePackArn",
          "documentation": "<p>Amazon Resource Name (ARN) of the conformance pack.</p>"
        },
        "ConformancePackId": {
          "shape": "ConformancePackId",
          "documentation": "<p>ID of the conformance pack.</p>"
        },
        "DeliveryS3Bucket": {
          "shape": "DeliveryS3Bucket",
          "documentation": "<p>Conformance pack template that is used to create a pack. The delivery bucket name should start with awsconfigconforms. For example: \"Resource\": \"arn:aws:s3:::your_bucket_name/*\".</p>"
        },
        "DeliveryS3KeyPrefix": {
          "shape": "DeliveryS3KeyPrefix",
          "documentation": "<p>The prefix for the Amazon S3 bucket.</p>"
        },
        "ConformancePackInputParameters": {
          "shape": "ConformancePackInputParameters",
          "documentation": "<p>A list of <code>ConformancePackInputParameter</code> objects.</p>"
        },
        "LastUpdateRequestedTime": {
          "shape": "Date",
          "documentation": "<p>Last time when conformation pack update was requested. </p>"
        },
        "CreatedBy": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>AWS service that created the conformance pack.</p>"
        }
      },
      "documentation": "<p>Returns details of a conformance pack. A conformance pack is a collection of AWS Config rules and remediation actions that can be easily deployed in an account and a region.</p>"
    },
    "ConformancePackDetailList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackDetail"
      },
      "max": 25,
      "min": 0
    },
    "ConformancePackEvaluationFilters": {
      "type": "structure",
      "members": {
        "ConfigRuleNames": {
          "shape": "ConformancePackConfigRuleNames",
          "documentation": "<p>Filters the results by AWS Config rule names.</p>"
        },
        "ComplianceType": {
          "shape": "ConformancePackComplianceType",
          "documentation": "<p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>"
        },
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Filters the results by the resource type (for example, <code>\"AWS::EC2::Instance\"</code>). </p>"
        },
        "ResourceIds": {
          "shape": "ConformancePackComplianceResourceIds",
          "documentation": "<p>Filters the results by resource IDs.</p> <note> <p>This is valid only when you provide resource type. If there is no resource type, you will see an error.</p> </note>"
        }
      },
      "documentation": "<p>Filters a conformance pack by AWS Config rule names, compliance types, AWS resource types, and resource IDs.</p>"
    },
    "ConformancePackEvaluationResult": {
      "type": "structure",
      "required": [
        "ComplianceType",
        "EvaluationResultIdentifier",
        "ConfigRuleInvokedTime",
        "ResultRecordedTime"
      ],
      "members": {
        "ComplianceType": {
          "shape": "ConformancePackComplianceType",
          "documentation": "<p>The compliance type. The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. </p>"
        },
        "EvaluationResultIdentifier": {
          "shape": "EvaluationResultIdentifier"
        },
        "ConfigRuleInvokedTime": {
          "shape": "Date",
          "documentation": "<p>The time when AWS Config rule evaluated AWS resource.</p>"
        },
        "ResultRecordedTime": {
          "shape": "Date",
          "documentation": "<p>The time when AWS Config recorded the evaluation result. </p>"
        },
        "Annotation": {
          "shape": "Annotation",
          "documentation": "<p>Supplementary information about how the evaluation determined the compliance. </p>"
        }
      },
      "documentation": "<p>The details of a conformance pack evaluation. Provides AWS Config rule and AWS resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information. </p>"
    },
    "ConformancePackId": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ConformancePackInputParameter": {
      "type": "structure",
      "required": [
        "ParameterName",
        "ParameterValue"
      ],
      "members": {
        "ParameterName": {
          "shape": "ParameterName",
          "documentation": "<p>One part of a key-value pair.</p>"
        },
        "ParameterValue": {
          "shape": "ParameterValue",
          "documentation": "<p>Another part of the key-value pair. </p>"
        }
      },
      "documentation": "<p>Input parameters in the form of key-value pairs for the conformance pack, both of which you define. Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.</p>"
    },
    "ConformancePackInputParameters": {
      "type": "list",
      "member": {
        "shape": "ConformancePackInputParameter"
      },
      "max": 60,
      "min": 0
    },
    "ConformancePackName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z][-a-zA-Z0-9]*"
    },
    "ConformancePackNamesList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackName"
      },
      "max": 25,
      "min": 0
    },
    "ConformancePackNamesToSummarizeList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackName"
      },
      "max": 5,
      "min": 1
    },
    "ConformancePackRuleCompliance": {
      "type": "structure",
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>Name of the config rule.</p>"
        },
        "ComplianceType": {
          "shape": "ConformancePackComplianceType",
          "documentation": "<p>Compliance of the AWS Config rule</p> <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>"
        }
      },
      "documentation": "<p>Compliance information of one or more AWS Config rules within a conformance pack. You can filter using AWS Config rule names and compliance types.</p>"
    },
    "ConformancePackRuleComplianceList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackRuleCompliance"
      },
      "max": 1000,
      "min": 0
    },
    "ConformancePackRuleEvaluationResultsList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackEvaluationResult"
      },
      "max": 100,
      "min": 0
    },
    "ConformancePackState": {
      "type": "string",
      "enum": [
        "CREATE_IN_PROGRESS",
        "CREATE_COMPLETE",
        "CREATE_FAILED",
        "DELETE_IN_PROGRESS",
        "DELETE_FAILED"
      ]
    },
    "ConformancePackStatusDetail": {
      "type": "structure",
      "required": [
        "ConformancePackName",
        "ConformancePackId",
        "ConformancePackArn",
        "ConformancePackState",
        "StackArn",
        "LastUpdateRequestedTime"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack.</p>"
        },
        "ConformancePackId": {
          "shape": "ConformancePackId",
          "documentation": "<p>ID of the conformance pack.</p>"
        },
        "ConformancePackArn": {
          "shape": "ConformancePackArn",
          "documentation": "<p>Amazon Resource Name (ARN) of comformance pack.</p>"
        },
        "ConformancePackState": {
          "shape": "ConformancePackState",
          "documentation": "<p>Indicates deployment status of conformance pack.</p> <p>AWS Config sets the state of the conformance pack to:</p> <ul> <li> <p>CREATE_IN_PROGRESS when a conformance pack creation is in progress for an account.</p> </li> <li> <p>CREATE_COMPLETE when a conformance pack has been successfully created in your account.</p> </li> <li> <p>CREATE_FAILED when a conformance pack creation failed in your account.</p> </li> <li> <p>DELETE_IN_PROGRESS when a conformance pack deletion is in progress. </p> </li> <li> <p>DELETE_FAILED when a conformance pack deletion failed in your account.</p> </li> </ul>"
        },
        "StackArn": {
          "shape": "StackArn",
          "documentation": "<p>Amazon Resource Name (ARN) of AWS CloudFormation stack. </p>"
        },
        "ConformancePackStatusReason": {
          "shape": "ConformancePackStatusReason",
          "documentation": "<p>The reason of conformance pack creation failure.</p>"
        },
        "LastUpdateRequestedTime": {
          "shape": "Date",
          "documentation": "<p>Last time when conformation pack creation and update was requested.</p>"
        },
        "LastUpdateCompletedTime": {
          "shape": "Date",
          "documentation": "<p>Last time when conformation pack creation and update was successful.</p>"
        }
      },
      "documentation": "<p>Status details of a conformance pack.</p>"
    },
    "ConformancePackStatusDetailsList": {
      "type": "list",
      "member": {
        "shape": "ConformancePackStatusDetail"
      },
      "max": 25,
      "min": 0
    },
    "ConformancePackStatusReason": {
      "type": "string",
      "max": 2000,
      "min": 0
    },
    "CosmosPageLimit": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "Date": {
      "type": "timestamp"
    },
    "DeleteAggregationAuthorizationRequest": {
      "type": "structure",
      "required": [
        "AuthorizedAccountId",
        "AuthorizedAwsRegion"
      ],
      "members": {
        "AuthorizedAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the account authorized to aggregate data.</p>"
        },
        "AuthorizedAwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region authorized to collect aggregated data.</p>"
        }
      }
    },
    "DeleteConfigRuleRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule that you want to delete.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteConfigurationAggregatorRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        }
      }
    },
    "DeleteConfigurationRecorderRequest": {
      "type": "structure",
      "required": [
        "ConfigurationRecorderName"
      ],
      "members": {
        "ConfigurationRecorderName": {
          "shape": "RecorderName",
          "documentation": "<p>The name of the configuration recorder to be deleted. You can retrieve the name of your configuration recorder by using the <code>DescribeConfigurationRecorders</code> action.</p>"
        }
      },
      "documentation": "<p>The request object for the <code>DeleteConfigurationRecorder</code> action.</p>"
    },
    "DeleteConformancePackRequest": {
      "type": "structure",
      "required": [
        "ConformancePackName"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack you want to delete.</p>"
        }
      }
    },
    "DeleteDeliveryChannelRequest": {
      "type": "structure",
      "required": [
        "DeliveryChannelName"
      ],
      "members": {
        "DeliveryChannelName": {
          "shape": "ChannelName",
          "documentation": "<p>The name of the delivery channel to delete.</p>"
        }
      },
      "documentation": "<p>The input for the <a>DeleteDeliveryChannel</a> action. The action accepts the following data, in JSON format. </p>"
    },
    "DeleteEvaluationResultsRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "StringWithCharLimit64",
          "documentation": "<p>The name of the AWS Config rule for which you want to delete the evaluation results.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEvaluationResultsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The output when you delete the evaluation results for the specified AWS Config rule.</p>"
    },
    "DeleteOrganizationConfigRuleRequest": {
      "type": "structure",
      "required": [
        "OrganizationConfigRuleName"
      ],
      "members": {
        "OrganizationConfigRuleName": {
          "shape": "OrganizationConfigRuleName",
          "documentation": "<p>The name of organization config rule that you want to delete.</p>"
        }
      }
    },
    "DeleteOrganizationConformancePackRequest": {
      "type": "structure",
      "required": [
        "OrganizationConformancePackName"
      ],
      "members": {
        "OrganizationConformancePackName": {
          "shape": "OrganizationConformancePackName",
          "documentation": "<p>The name of organization conformance pack that you want to delete.</p>"
        }
      }
    },
    "DeletePendingAggregationRequestRequest": {
      "type": "structure",
      "required": [
        "RequesterAccountId",
        "RequesterAwsRegion"
      ],
      "members": {
        "RequesterAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the account requesting to aggregate data.</p>"
        },
        "RequesterAwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region requesting to aggregate data.</p>"
        }
      }
    },
    "DeleteRemediationConfigurationRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule for which you want to delete remediation configuration.</p>"
        },
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>The type of a resource.</p>"
        }
      }
    },
    "DeleteRemediationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteRemediationExceptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName",
        "ResourceKeys"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule for which you want to delete remediation exception configuration.</p>"
        },
        "ResourceKeys": {
          "shape": "RemediationExceptionResourceKeys",
          "documentation": "<p>An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys. </p>"
        }
      }
    },
    "DeleteRemediationExceptionsResponse": {
      "type": "structure",
      "members": {
        "FailedBatches": {
          "shape": "FailedDeleteRemediationExceptionsBatches",
          "documentation": "<p>Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>"
        }
      }
    },
    "DeleteResourceConfigRequest": {
      "type": "structure",
      "required": [
        "ResourceType",
        "ResourceId"
      ],
      "members": {
        "ResourceType": {
          "shape": "ResourceTypeString",
          "documentation": "<p>The type of the resource.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Unique identifier of the resource.</p>"
        }
      }
    },
    "DeleteRetentionConfigurationRequest": {
      "type": "structure",
      "required": [
        "RetentionConfigurationName"
      ],
      "members": {
        "RetentionConfigurationName": {
          "shape": "RetentionConfigurationName",
          "documentation": "<p>The name of the retention configuration to delete.</p>"
        }
      }
    },
    "DeliverConfigSnapshotRequest": {
      "type": "structure",
      "required": [
        "deliveryChannelName"
      ],
      "members": {
        "deliveryChannelName": {
          "shape": "ChannelName",
          "documentation": "<p>The name of the delivery channel through which the snapshot is delivered.</p>"
        }
      },
      "documentation": "<p>The input for the <a>DeliverConfigSnapshot</a> action.</p>"
    },
    "DeliverConfigSnapshotResponse": {
      "type": "structure",
      "members": {
        "configSnapshotId": {
          "shape": "String",
          "documentation": "<p>The ID of the snapshot that is being created.</p>"
        }
      },
      "documentation": "<p>The output for the <a>DeliverConfigSnapshot</a> action, in JSON format.</p>"
    },
    "DeliveryChannel": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ChannelName",
          "documentation": "<p>The name of the delivery channel. By default, AWS Config assigns the name \"default\" when creating the delivery channel. To change the delivery channel name, you must use the DeleteDeliveryChannel action to delete your current delivery channel, and then you must use the PutDeliveryChannel command to create a delivery channel that has the desired name.</p>"
        },
        "s3BucketName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon S3 bucket to which AWS Config delivers configuration snapshots and configuration history files.</p> <p>If you specify a bucket that belongs to another AWS account, that bucket must have policies that grant access permissions to AWS Config. For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html\">Permissions for the Amazon S3 Bucket</a> in the AWS Config Developer Guide.</p>"
        },
        "s3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>The prefix for the specified Amazon S3 bucket.</p>"
        },
        "snsTopicARN": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which AWS Config sends notifications about configuration changes.</p> <p>If you choose a topic from another account, the topic must have policies that grant access permissions to AWS Config. For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html\">Permissions for the Amazon SNS Topic</a> in the AWS Config Developer Guide.</p>"
        },
        "configSnapshotDeliveryProperties": {
          "shape": "ConfigSnapshotDeliveryProperties",
          "documentation": "<p>The options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket.</p>"
        }
      },
      "documentation": "<p>The channel through which AWS Config delivers notifications and updated configuration states.</p>"
    },
    "DeliveryChannelList": {
      "type": "list",
      "member": {
        "shape": "DeliveryChannel"
      }
    },
    "DeliveryChannelNameList": {
      "type": "list",
      "member": {
        "shape": "ChannelName"
      }
    },
    "DeliveryChannelStatus": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the delivery channel.</p>"
        },
        "configSnapshotDeliveryInfo": {
          "shape": "ConfigExportDeliveryInfo",
          "documentation": "<p>A list containing the status of the delivery of the snapshot to the specified Amazon S3 bucket.</p>"
        },
        "configHistoryDeliveryInfo": {
          "shape": "ConfigExportDeliveryInfo",
          "documentation": "<p>A list that contains the status of the delivery of the configuration history to the specified Amazon S3 bucket.</p>"
        },
        "configStreamDeliveryInfo": {
          "shape": "ConfigStreamDeliveryInfo",
          "documentation": "<p>A list containing the status of the delivery of the configuration stream notification to the specified Amazon SNS topic.</p>"
        }
      },
      "documentation": "<p>The status of a specified delivery channel.</p> <p>Valid values: <code>Success</code> | <code>Failure</code> </p>"
    },
    "DeliveryChannelStatusList": {
      "type": "list",
      "member": {
        "shape": "DeliveryChannelStatus"
      }
    },
    "DeliveryS3Bucket": {
      "type": "string",
      "max": 63,
      "min": 3
    },
    "DeliveryS3KeyPrefix": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "DeliveryStatus": {
      "type": "string",
      "enum": [
        "Success",
        "Failure",
        "Not_Applicable"
      ]
    },
    "DescribeAggregateComplianceByConfigRulesRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "Filters": {
          "shape": "ConfigRuleComplianceFilters",
          "documentation": "<p>Filters the results by ConfigRuleComplianceFilters object. </p>"
        },
        "Limit": {
          "shape": "GroupByAPILimit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeAggregateComplianceByConfigRulesResponse": {
      "type": "structure",
      "members": {
        "AggregateComplianceByConfigRules": {
          "shape": "AggregateComplianceByConfigRuleList",
          "documentation": "<p>Returns a list of AggregateComplianceByConfigRule object.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeAggregationAuthorizationsRequest": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of AggregationAuthorizations returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeAggregationAuthorizationsResponse": {
      "type": "structure",
      "members": {
        "AggregationAuthorizations": {
          "shape": "AggregationAuthorizationList",
          "documentation": "<p>Returns a list of authorizations granted to various aggregator accounts and regions.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeComplianceByConfigRuleRequest": {
      "type": "structure",
      "members": {
        "ConfigRuleNames": {
          "shape": "ConfigRuleNames",
          "documentation": "<p>Specify one or more AWS Config rule names to filter the results by rule.</p>"
        },
        "ComplianceTypes": {
          "shape": "ComplianceTypes",
          "documentation": "<p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeComplianceByConfigRuleResponse": {
      "type": "structure",
      "members": {
        "ComplianceByConfigRules": {
          "shape": "ComplianceByConfigRules",
          "documentation": "<p>Indicates whether each of the specified AWS Config rules is compliant.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeComplianceByResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The types of AWS resources for which you want compliance information (for example, <code>AWS::EC2::Instance</code>). For this action, you can specify that the resource type is an AWS account by specifying <code>AWS::::Account</code>.</p>"
        },
        "ResourceId": {
          "shape": "BaseResourceId",
          "documentation": "<p>The ID of the AWS resource for which you want compliance information. You can specify only one resource ID. If you specify a resource ID, you must also specify a type for <code>ResourceType</code>.</p>"
        },
        "ComplianceTypes": {
          "shape": "ComplianceTypes",
          "documentation": "<p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeComplianceByResourceResponse": {
      "type": "structure",
      "members": {
        "ComplianceByResources": {
          "shape": "ComplianceByResources",
          "documentation": "<p>Indicates whether the specified AWS resource complies with all of the AWS Config rules that evaluate it.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeConfigRuleEvaluationStatusRequest": {
      "type": "structure",
      "members": {
        "ConfigRuleNames": {
          "shape": "ConfigRuleNames",
          "documentation": "<p>The name of the AWS managed Config rules for which you want status information. If you do not specify any names, AWS Config returns status information for all AWS managed Config rules that you use.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        },
        "Limit": {
          "shape": "RuleLimit",
          "documentation": "<p>The number of rule evaluation results that you want returned.</p> <p>This parameter is required if the rule limit for your account is more than the default of 150 rules.</p> <p>For information about requesting a rule limit increase, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config\">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeConfigRuleEvaluationStatusResponse": {
      "type": "structure",
      "members": {
        "ConfigRulesEvaluationStatus": {
          "shape": "ConfigRuleEvaluationStatusList",
          "documentation": "<p>Status information about your AWS managed Config rules.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeConfigRulesRequest": {
      "type": "structure",
      "members": {
        "ConfigRuleNames": {
          "shape": "ConfigRuleNames",
          "documentation": "<p>The names of the AWS Config rules for which you want details. If you do not specify any names, AWS Config returns details for all your rules.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeConfigRulesResponse": {
      "type": "structure",
      "members": {
        "ConfigRules": {
          "shape": "ConfigRules",
          "documentation": "<p>The details about your AWS Config rules.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeConfigurationAggregatorSourcesStatusRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "UpdateStatus": {
          "shape": "AggregatedSourceStatusTypeList",
          "documentation": "<p>Filters the status type.</p> <ul> <li> <p>Valid value FAILED indicates errors while moving data.</p> </li> <li> <p>Valid value SUCCEEDED indicates the data was successfully moved.</p> </li> <li> <p>Valid value OUTDATED indicates the data is not the most recent.</p> </li> </ul>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of AggregatorSourceStatus returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>"
        }
      }
    },
    "DescribeConfigurationAggregatorSourcesStatusResponse": {
      "type": "structure",
      "members": {
        "AggregatedSourceStatusList": {
          "shape": "AggregatedSourceStatusList",
          "documentation": "<p>Returns an AggregatedSourceStatus object. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConfigurationAggregatorsRequest": {
      "type": "structure",
      "members": {
        "ConfigurationAggregatorNames": {
          "shape": "ConfigurationAggregatorNameList",
          "documentation": "<p>The name of the configuration aggregators.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of configuration aggregators returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>"
        }
      }
    },
    "DescribeConfigurationAggregatorsResponse": {
      "type": "structure",
      "members": {
        "ConfigurationAggregators": {
          "shape": "ConfigurationAggregatorList",
          "documentation": "<p>Returns a ConfigurationAggregators object.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConfigurationRecorderStatusRequest": {
      "type": "structure",
      "members": {
        "ConfigurationRecorderNames": {
          "shape": "ConfigurationRecorderNameList",
          "documentation": "<p>The name(s) of the configuration recorder. If the name is not specified, the action returns the current status of all the configuration recorders associated with the account.</p>"
        }
      },
      "documentation": "<p>The input for the <a>DescribeConfigurationRecorderStatus</a> action.</p>"
    },
    "DescribeConfigurationRecorderStatusResponse": {
      "type": "structure",
      "members": {
        "ConfigurationRecordersStatus": {
          "shape": "ConfigurationRecorderStatusList",
          "documentation": "<p>A list that contains status of the specified recorders.</p>"
        }
      },
      "documentation": "<p>The output for the <a>DescribeConfigurationRecorderStatus</a> action, in JSON format.</p>"
    },
    "DescribeConfigurationRecordersRequest": {
      "type": "structure",
      "members": {
        "ConfigurationRecorderNames": {
          "shape": "ConfigurationRecorderNameList",
          "documentation": "<p>A list of configuration recorder names.</p>"
        }
      },
      "documentation": "<p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>"
    },
    "DescribeConfigurationRecordersResponse": {
      "type": "structure",
      "members": {
        "ConfigurationRecorders": {
          "shape": "ConfigurationRecorderList",
          "documentation": "<p>A list that contains the descriptions of the specified configuration recorders.</p>"
        }
      },
      "documentation": "<p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>"
    },
    "DescribeConformancePackComplianceLimit": {
      "type": "integer",
      "max": 1000,
      "min": 0
    },
    "DescribeConformancePackComplianceRequest": {
      "type": "structure",
      "required": [
        "ConformancePackName"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack.</p>"
        },
        "Filters": {
          "shape": "ConformancePackComplianceFilters",
          "documentation": "<p>A <code>ConformancePackComplianceFilters</code> object.</p>"
        },
        "Limit": {
          "shape": "DescribeConformancePackComplianceLimit",
          "documentation": "<p>The maximum number of AWS Config rules within a conformance pack are returned on each page.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConformancePackComplianceResponse": {
      "type": "structure",
      "required": [
        "ConformancePackName",
        "ConformancePackRuleComplianceList"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack.</p>"
        },
        "ConformancePackRuleComplianceList": {
          "shape": "ConformancePackRuleComplianceList",
          "documentation": "<p>Returns a list of <code>ConformancePackRuleCompliance</code> objects.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConformancePackStatusRequest": {
      "type": "structure",
      "members": {
        "ConformancePackNames": {
          "shape": "ConformancePackNamesList",
          "documentation": "<p>Comma-separated list of conformance pack names.</p>"
        },
        "Limit": {
          "shape": "PageSizeLimit",
          "documentation": "<p>The maximum number of conformance packs status returned on each page.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConformancePackStatusResponse": {
      "type": "structure",
      "members": {
        "ConformancePackStatusDetails": {
          "shape": "ConformancePackStatusDetailsList",
          "documentation": "<p>A list of <code>ConformancePackStatusDetail</code> objects.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConformancePacksRequest": {
      "type": "structure",
      "members": {
        "ConformancePackNames": {
          "shape": "ConformancePackNamesList",
          "documentation": "<p>Comma-separated list of conformance pack names for which you want details. If you do not specify any names, AWS Config returns details for all your conformance packs. </p>"
        },
        "Limit": {
          "shape": "PageSizeLimit",
          "documentation": "<p>The maximum number of conformance packs returned on each page.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeConformancePacksResponse": {
      "type": "structure",
      "members": {
        "ConformancePackDetails": {
          "shape": "ConformancePackDetailList",
          "documentation": "<p>Returns a list of <code>ConformancePackDetail</code> objects.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeDeliveryChannelStatusRequest": {
      "type": "structure",
      "members": {
        "DeliveryChannelNames": {
          "shape": "DeliveryChannelNameList",
          "documentation": "<p>A list of delivery channel names.</p>"
        }
      },
      "documentation": "<p>The input for the <a>DeliveryChannelStatus</a> action.</p>"
    },
    "DescribeDeliveryChannelStatusResponse": {
      "type": "structure",
      "members": {
        "DeliveryChannelsStatus": {
          "shape": "DeliveryChannelStatusList",
          "documentation": "<p>A list that contains the status of a specified delivery channel.</p>"
        }
      },
      "documentation": "<p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>"
    },
    "DescribeDeliveryChannelsRequest": {
      "type": "structure",
      "members": {
        "DeliveryChannelNames": {
          "shape": "DeliveryChannelNameList",
          "documentation": "<p>A list of delivery channel names.</p>"
        }
      },
      "documentation": "<p>The input for the <a>DescribeDeliveryChannels</a> action.</p>"
    },
    "DescribeDeliveryChannelsResponse": {
      "type": "structure",
      "members": {
        "DeliveryChannels": {
          "shape": "DeliveryChannelList",
          "documentation": "<p>A list that contains the descriptions of the specified delivery channel.</p>"
        }
      },
      "documentation": "<p>The output for the <a>DescribeDeliveryChannels</a> action.</p>"
    },
    "DescribeOrganizationConfigRuleStatusesRequest": {
      "type": "structure",
      "members": {
        "OrganizationConfigRuleNames": {
          "shape": "OrganizationConfigRuleNames",
          "documentation": "<p>The names of organization config rules for which you want status details. If you do not specify any names, AWS Config returns details for all your organization AWS Confg rules.</p>"
        },
        "Limit": {
          "shape": "CosmosPageLimit",
          "documentation": "<p>The maximum number of <code>OrganizationConfigRuleStatuses</code> returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeOrganizationConfigRuleStatusesResponse": {
      "type": "structure",
      "members": {
        "OrganizationConfigRuleStatuses": {
          "shape": "OrganizationConfigRuleStatuses",
          "documentation": "<p>A list of <code>OrganizationConfigRuleStatus</code> objects.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeOrganizationConfigRulesRequest": {
      "type": "structure",
      "members": {
        "OrganizationConfigRuleNames": {
          "shape": "OrganizationConfigRuleNames",
          "documentation": "<p>The names of organization config rules for which you want details. If you do not specify any names, AWS Config returns details for all your organization config rules.</p>"
        },
        "Limit": {
          "shape": "CosmosPageLimit",
          "documentation": "<p>The maximum number of organization config rules returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeOrganizationConfigRulesResponse": {
      "type": "structure",
      "members": {
        "OrganizationConfigRules": {
          "shape": "OrganizationConfigRules",
          "documentation": "<p>Returns a list of <code>OrganizationConfigRule</code> objects.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeOrganizationConformancePackStatusesRequest": {
      "type": "structure",
      "members": {
        "OrganizationConformancePackNames": {
          "shape": "OrganizationConformancePackNames",
          "documentation": "<p>The names of organization conformance packs for which you want status details. If you do not specify any names, AWS Config returns details for all your organization conformance packs. </p>"
        },
        "Limit": {
          "shape": "CosmosPageLimit",
          "documentation": "<p>The maximum number of OrganizationConformancePackStatuses returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeOrganizationConformancePackStatusesResponse": {
      "type": "structure",
      "members": {
        "OrganizationConformancePackStatuses": {
          "shape": "OrganizationConformancePackStatuses",
          "documentation": "<p>A list of <code>OrganizationConformancePackStatus</code> objects. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeOrganizationConformancePacksRequest": {
      "type": "structure",
      "members": {
        "OrganizationConformancePackNames": {
          "shape": "OrganizationConformancePackNames",
          "documentation": "<p>The name that you assign to an organization conformance pack.</p>"
        },
        "Limit": {
          "shape": "CosmosPageLimit",
          "documentation": "<p>The maximum number of organization config packs returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeOrganizationConformancePacksResponse": {
      "type": "structure",
      "members": {
        "OrganizationConformancePacks": {
          "shape": "OrganizationConformancePacks",
          "documentation": "<p>Returns a list of OrganizationConformancePacks objects.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribePendingAggregationRequestsLimit": {
      "type": "integer",
      "max": 20,
      "min": 0
    },
    "DescribePendingAggregationRequestsRequest": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "DescribePendingAggregationRequestsLimit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribePendingAggregationRequestsResponse": {
      "type": "structure",
      "members": {
        "PendingAggregationRequests": {
          "shape": "PendingAggregationRequestList",
          "documentation": "<p>Returns a PendingAggregationRequests object.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeRemediationConfigurationsRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleNames"
      ],
      "members": {
        "ConfigRuleNames": {
          "shape": "ConfigRuleNames",
          "documentation": "<p>A list of AWS Config rule names of remediation configurations for which you want details. </p>"
        }
      }
    },
    "DescribeRemediationConfigurationsResponse": {
      "type": "structure",
      "members": {
        "RemediationConfigurations": {
          "shape": "RemediationConfigurations",
          "documentation": "<p>Returns a remediation configuration object.</p>"
        }
      }
    },
    "DescribeRemediationExceptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "ResourceKeys": {
          "shape": "RemediationExceptionResourceKeys",
          "documentation": "<p>An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys. </p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeRemediationExceptionsResponse": {
      "type": "structure",
      "members": {
        "RemediationExceptions": {
          "shape": "RemediationExceptions",
          "documentation": "<p>Returns a list of remediation exception objects.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeRemediationExecutionStatusRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>A list of AWS Config rule names.</p>"
        },
        "ResourceKeys": {
          "shape": "ResourceKeys",
          "documentation": "<p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, AWS Config uses the default. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeRemediationExecutionStatusResponse": {
      "type": "structure",
      "members": {
        "RemediationExecutionStatuses": {
          "shape": "RemediationExecutionStatuses",
          "documentation": "<p>Returns a list of remediation execution statuses objects.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "DescribeRetentionConfigurationsRequest": {
      "type": "structure",
      "members": {
        "RetentionConfigurationNames": {
          "shape": "RetentionConfigurationNameList",
          "documentation": "<p>A list of names of retention configurations for which you want details. If you do not specify a name, AWS Config returns details for all the retention configurations for that account.</p> <note> <p>Currently, AWS Config supports only one retention configuration per region in your account.</p> </note>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DescribeRetentionConfigurationsResponse": {
      "type": "structure",
      "members": {
        "RetentionConfigurations": {
          "shape": "RetentionConfigurationList",
          "documentation": "<p>Returns a retention configuration object.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "DiscoveredResourceIdentifierList": {
      "type": "list",
      "member": {
        "shape": "AggregateResourceIdentifier"
      }
    },
    "EarlierTime": {
      "type": "timestamp"
    },
    "EmptiableStringWithCharLimit256": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Evaluation": {
      "type": "structure",
      "required": [
        "ComplianceResourceType",
        "ComplianceResourceId",
        "ComplianceType",
        "OrderingTimestamp"
      ],
      "members": {
        "ComplianceResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of AWS resource that was evaluated.</p>"
        },
        "ComplianceResourceId": {
          "shape": "BaseResourceId",
          "documentation": "<p>The ID of the AWS resource that was evaluated.</p>"
        },
        "ComplianceType": {
          "shape": "ComplianceType",
          "documentation": "<p>Indicates whether the AWS resource complies with the AWS Config rule that it was evaluated against.</p> <p>For the <code>Evaluation</code> data type, AWS Config supports only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values. AWS Config does not support the <code>INSUFFICIENT_DATA</code> value for this data type.</p> <p>Similarly, AWS Config does not accept <code>INSUFFICIENT_DATA</code> as the value for <code>ComplianceType</code> from a <code>PutEvaluations</code> request. For example, an AWS Lambda function for a custom AWS Config rule cannot pass an <code>INSUFFICIENT_DATA</code> value to AWS Config.</p>"
        },
        "Annotation": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Supplementary information about how the evaluation determined the compliance.</p>"
        },
        "OrderingTimestamp": {
          "shape": "OrderingTimestamp",
          "documentation": "<p>The time of the event in AWS Config that triggered the evaluation. For event-based evaluations, the time indicates when AWS Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when AWS Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).</p>"
        }
      },
      "documentation": "<p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>"
    },
    "EvaluationResult": {
      "type": "structure",
      "members": {
        "EvaluationResultIdentifier": {
          "shape": "EvaluationResultIdentifier",
          "documentation": "<p>Uniquely identifies the evaluation result.</p>"
        },
        "ComplianceType": {
          "shape": "ComplianceType",
          "documentation": "<p>Indicates whether the AWS resource complies with the AWS Config rule that evaluated it.</p> <p>For the <code>EvaluationResult</code> data type, AWS Config supports only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values. AWS Config does not support the <code>INSUFFICIENT_DATA</code> value for the <code>EvaluationResult</code> data type.</p>"
        },
        "ResultRecordedTime": {
          "shape": "Date",
          "documentation": "<p>The time when AWS Config recorded the evaluation result.</p>"
        },
        "ConfigRuleInvokedTime": {
          "shape": "Date",
          "documentation": "<p>The time when the AWS Config rule evaluated the AWS resource.</p>"
        },
        "Annotation": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Supplementary information about how the evaluation determined the compliance.</p>"
        },
        "ResultToken": {
          "shape": "String",
          "documentation": "<p>An encrypted token that associates an evaluation with an AWS Config rule. The token identifies the rule, the AWS resource being evaluated, and the event that triggered the evaluation.</p>"
        }
      },
      "documentation": "<p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related time stamps, and supplementary information.</p>"
    },
    "EvaluationResultIdentifier": {
      "type": "structure",
      "members": {
        "EvaluationResultQualifier": {
          "shape": "EvaluationResultQualifier",
          "documentation": "<p>Identifies an AWS Config rule used to evaluate an AWS resource, and provides the type and ID of the evaluated resource.</p>"
        },
        "OrderingTimestamp": {
          "shape": "Date",
          "documentation": "<p>The time of the event that triggered the evaluation of your AWS resources. The time can indicate when AWS Config delivered a configuration item change notification, or it can indicate when AWS Config delivered the configuration snapshot, depending on which event triggered the evaluation.</p>"
        }
      },
      "documentation": "<p>Uniquely identifies an evaluation result.</p>"
    },
    "EvaluationResultQualifier": {
      "type": "structure",
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule that was used in the evaluation.</p>"
        },
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of AWS resource that was evaluated.</p>"
        },
        "ResourceId": {
          "shape": "BaseResourceId",
          "documentation": "<p>The ID of the evaluated AWS resource.</p>"
        }
      },
      "documentation": "<p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>"
    },
    "EvaluationResults": {
      "type": "list",
      "member": {
        "shape": "EvaluationResult"
      }
    },
    "Evaluations": {
      "type": "list",
      "member": {
        "shape": "Evaluation"
      },
      "max": 100,
      "min": 0
    },
    "EventSource": {
      "type": "string",
      "enum": [
        "aws.config"
      ]
    },
    "ExcludedAccounts": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      },
      "max": 1000,
      "min": 0
    },
    "ExecutionControls": {
      "type": "structure",
      "members": {
        "SsmControls": {
          "shape": "SsmControls",
          "documentation": "<p>A SsmControls object.</p>"
        }
      },
      "documentation": "<p>The controls that AWS Config uses for executing remediations.</p>"
    },
    "Expression": {
      "type": "string",
      "max": 4096,
      "min": 1
    },
    "FailedDeleteRemediationExceptionsBatch": {
      "type": "structure",
      "members": {
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>Returns a failure message for delete remediation exception. For example, AWS Config creates an exception due to an internal error.</p>"
        },
        "FailedItems": {
          "shape": "RemediationExceptionResourceKeys",
          "documentation": "<p>Returns remediation exception resource key object of the failed items.</p>"
        }
      },
      "documentation": "<p>List of each of the failed delete remediation exceptions with specific reasons.</p>"
    },
    "FailedDeleteRemediationExceptionsBatches": {
      "type": "list",
      "member": {
        "shape": "FailedDeleteRemediationExceptionsBatch"
      }
    },
    "FailedRemediationBatch": {
      "type": "structure",
      "members": {
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>Returns a failure message. For example, the resource is already compliant.</p>"
        },
        "FailedItems": {
          "shape": "RemediationConfigurations",
          "documentation": "<p>Returns remediation configurations of the failed items.</p>"
        }
      },
      "documentation": "<p>List of each of the failed remediations with specific reasons.</p>"
    },
    "FailedRemediationBatches": {
      "type": "list",
      "member": {
        "shape": "FailedRemediationBatch"
      }
    },
    "FailedRemediationExceptionBatch": {
      "type": "structure",
      "members": {
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>Returns a failure message. For example, the auto-remediation has failed.</p>"
        },
        "FailedItems": {
          "shape": "RemediationExceptions",
          "documentation": "<p>Returns remediation exception resource key object of the failed items.</p>"
        }
      },
      "documentation": "<p>List of each of the failed remediation exceptions with specific reasons.</p>"
    },
    "FailedRemediationExceptionBatches": {
      "type": "list",
      "member": {
        "shape": "FailedRemediationExceptionBatch"
      }
    },
    "FieldInfo": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "FieldName",
          "documentation": "<p>Name of the field.</p>"
        }
      },
      "documentation": "<p>Details about the fields such as name of the field.</p>"
    },
    "FieldInfoList": {
      "type": "list",
      "member": {
        "shape": "FieldInfo"
      }
    },
    "FieldName": {
      "type": "string"
    },
    "GetAggregateComplianceDetailsByConfigRuleRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName",
        "ConfigRuleName",
        "AccountId",
        "AwsRegion"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule for which you want compliance information.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the source account.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region from where the data is aggregated.</p>"
        },
        "ComplianceType": {
          "shape": "ComplianceType",
          "documentation": "<p>The resource compliance status.</p> <note> <p>For the <code>GetAggregateComplianceDetailsByConfigRuleRequest</code> data type, AWS Config supports only the <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. AWS Config does not support the <code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code> values.</p> </note>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetAggregateComplianceDetailsByConfigRuleResponse": {
      "type": "structure",
      "members": {
        "AggregateEvaluationResults": {
          "shape": "AggregateEvaluationResultList",
          "documentation": "<p>Returns an AggregateEvaluationResults object.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetAggregateConfigRuleComplianceSummaryRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "Filters": {
          "shape": "ConfigRuleComplianceSummaryFilters",
          "documentation": "<p>Filters the results based on the ConfigRuleComplianceSummaryFilters object.</p>"
        },
        "GroupByKey": {
          "shape": "ConfigRuleComplianceSummaryGroupKey",
          "documentation": "<p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>"
        },
        "Limit": {
          "shape": "GroupByAPILimit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetAggregateConfigRuleComplianceSummaryResponse": {
      "type": "structure",
      "members": {
        "GroupByKey": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>"
        },
        "AggregateComplianceCounts": {
          "shape": "AggregateComplianceCountList",
          "documentation": "<p>Returns a list of AggregateComplianceCounts object.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetAggregateDiscoveredResourceCountsRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "Filters": {
          "shape": "ResourceCountFilters",
          "documentation": "<p>Filters the results based on the <code>ResourceCountFilters</code> object.</p>"
        },
        "GroupByKey": {
          "shape": "ResourceCountGroupKey",
          "documentation": "<p>The key to group the resource counts.</p>"
        },
        "Limit": {
          "shape": "GroupByAPILimit",
          "documentation": "<p>The maximum number of <a>GroupedResourceCount</a> objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "GetAggregateDiscoveredResourceCountsResponse": {
      "type": "structure",
      "required": [
        "TotalDiscoveredResources"
      ],
      "members": {
        "TotalDiscoveredResources": {
          "shape": "Long",
          "documentation": "<p>The total number of resources that are present in an aggregator with the filters that you provide.</p>"
        },
        "GroupByKey": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The key passed into the request object. If <code>GroupByKey</code> is not provided, the result will be empty.</p>"
        },
        "GroupedResourceCounts": {
          "shape": "GroupedResourceCountList",
          "documentation": "<p>Returns a list of GroupedResourceCount objects.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetAggregateResourceConfigRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName",
        "ResourceIdentifier"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "ResourceIdentifier": {
          "shape": "AggregateResourceIdentifier",
          "documentation": "<p>An object that identifies aggregate resource.</p>"
        }
      }
    },
    "GetAggregateResourceConfigResponse": {
      "type": "structure",
      "members": {
        "ConfigurationItem": {
          "shape": "ConfigurationItem",
          "documentation": "<p>Returns a <code>ConfigurationItem</code> object.</p>"
        }
      }
    },
    "GetComplianceDetailsByConfigRuleRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "StringWithCharLimit64",
          "documentation": "<p>The name of the AWS Config rule for which you want compliance information.</p>"
        },
        "ComplianceTypes": {
          "shape": "ComplianceTypes",
          "documentation": "<p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code>.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetComplianceDetailsByConfigRuleResponse": {
      "type": "structure",
      "members": {
        "EvaluationResults": {
          "shape": "EvaluationResults",
          "documentation": "<p>Indicates whether the AWS resource complies with the specified AWS Config rule.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetComplianceDetailsByResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceType",
        "ResourceId"
      ],
      "members": {
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of the AWS resource for which you want compliance information.</p>"
        },
        "ResourceId": {
          "shape": "BaseResourceId",
          "documentation": "<p>The ID of the AWS resource for which you want compliance information.</p>"
        },
        "ComplianceTypes": {
          "shape": "ComplianceTypes",
          "documentation": "<p>Filters the results by compliance.</p> <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code>.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetComplianceDetailsByResourceResponse": {
      "type": "structure",
      "members": {
        "EvaluationResults": {
          "shape": "EvaluationResults",
          "documentation": "<p>Indicates whether the specified AWS resource complies each AWS Config rule.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetComplianceSummaryByConfigRuleResponse": {
      "type": "structure",
      "members": {
        "ComplianceSummary": {
          "shape": "ComplianceSummary",
          "documentation": "<p>The number of AWS Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetComplianceSummaryByResourceTypeRequest": {
      "type": "structure",
      "members": {
        "ResourceTypes": {
          "shape": "ResourceTypes",
          "documentation": "<p>Specify one or more resource types to get the number of resources that are compliant and the number that are noncompliant for each resource type.</p> <p>For this request, you can specify an AWS resource type such as <code>AWS::EC2::Instance</code>. You can specify that the resource type is an AWS account by specifying <code>AWS::::Account</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetComplianceSummaryByResourceTypeResponse": {
      "type": "structure",
      "members": {
        "ComplianceSummariesByResourceType": {
          "shape": "ComplianceSummariesByResourceType",
          "documentation": "<p>The number of resources that are compliant and the number that are noncompliant. If one or more resource types were provided with the request, the numbers are returned for each resource type. The maximum number returned is 100.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetConformancePackComplianceDetailsLimit": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "GetConformancePackComplianceDetailsRequest": {
      "type": "structure",
      "required": [
        "ConformancePackName"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack.</p>"
        },
        "Filters": {
          "shape": "ConformancePackEvaluationFilters",
          "documentation": "<p>A <code>ConformancePackEvaluationFilters</code> object.</p>"
        },
        "Limit": {
          "shape": "GetConformancePackComplianceDetailsLimit",
          "documentation": "<p>The maximum number of evaluation results returned on each page. If you do no specify a number, AWS Config uses the default. The default is 100.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetConformancePackComplianceDetailsResponse": {
      "type": "structure",
      "required": [
        "ConformancePackName"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack.</p>"
        },
        "ConformancePackRuleEvaluationResults": {
          "shape": "ConformancePackRuleEvaluationResultsList",
          "documentation": "<p>Returns a list of <code>ConformancePackEvaluationResult</code> objects.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetConformancePackComplianceSummaryRequest": {
      "type": "structure",
      "required": [
        "ConformancePackNames"
      ],
      "members": {
        "ConformancePackNames": {
          "shape": "ConformancePackNamesToSummarizeList",
          "documentation": "<p>Names of conformance packs.</p>"
        },
        "Limit": {
          "shape": "PageSizeLimit",
          "documentation": "<p>The maximum number of conformance packs returned on each page.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetConformancePackComplianceSummaryResponse": {
      "type": "structure",
      "members": {
        "ConformancePackComplianceSummaryList": {
          "shape": "ConformancePackComplianceSummaryList",
          "documentation": "<p>A list of <code>ConformancePackComplianceSummary</code> objects. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetDiscoveredResourceCountsRequest": {
      "type": "structure",
      "members": {
        "resourceTypes": {
          "shape": "ResourceTypes",
          "documentation": "<p>The comma-separated list that specifies the resource types that you want AWS Config to return (for example, <code>\"AWS::EC2::Instance\"</code>, <code>\"AWS::IAM::User\"</code>).</p> <p>If a value for <code>resourceTypes</code> is not specified, AWS Config returns all resource types that AWS Config is recording in the region for your account.</p> <note> <p>If the configuration recorder is turned off, AWS Config returns an empty list of <a>ResourceCount</a> objects. If the configuration recorder is not recording a specific resource type (for example, S3 buckets), that resource type is not returned in the list of <a>ResourceCount</a> objects.</p> </note>"
        },
        "limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of <a>ResourceCount</a> objects returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetDiscoveredResourceCountsResponse": {
      "type": "structure",
      "members": {
        "totalDiscoveredResources": {
          "shape": "Long",
          "documentation": "<p>The total number of resources that AWS Config is recording in the region for your account. If you specify resource types in the request, AWS Config returns only the total number of resources for those resource types.</p> <p class=\"title\"> <b>Example</b> </p> <ol> <li> <p>AWS Config is recording three resource types in the US East (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3 buckets, for a total of 60 resources.</p> </li> <li> <p>You make a call to the <code>GetDiscoveredResourceCounts</code> action and specify the resource type, <code>\"AWS::EC2::Instances\"</code>, in the request.</p> </li> <li> <p>AWS Config returns 25 for <code>totalDiscoveredResources</code>.</p> </li> </ol>"
        },
        "resourceCounts": {
          "shape": "ResourceCounts",
          "documentation": "<p>The list of <code>ResourceCount</code> objects. Each object is listed in descending order by the number of resources.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "GetOrganizationConfigRuleDetailedStatusRequest": {
      "type": "structure",
      "required": [
        "OrganizationConfigRuleName"
      ],
      "members": {
        "OrganizationConfigRuleName": {
          "shape": "OrganizationConfigRuleName",
          "documentation": "<p>The name of organization config rule for which you want status details for member accounts.</p>"
        },
        "Filters": {
          "shape": "StatusDetailFilters",
          "documentation": "<p>A <code>StatusDetailFilters</code> object.</p>"
        },
        "Limit": {
          "shape": "CosmosPageLimit",
          "documentation": "<p>The maximum number of <code>OrganizationConfigRuleDetailedStatus</code> returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "GetOrganizationConfigRuleDetailedStatusResponse": {
      "type": "structure",
      "members": {
        "OrganizationConfigRuleDetailedStatus": {
          "shape": "OrganizationConfigRuleDetailedStatus",
          "documentation": "<p>A list of <code>MemberAccountStatus</code> objects.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "GetOrganizationConformancePackDetailedStatusRequest": {
      "type": "structure",
      "required": [
        "OrganizationConformancePackName"
      ],
      "members": {
        "OrganizationConformancePackName": {
          "shape": "OrganizationConformancePackName",
          "documentation": "<p>The name of organization conformance pack for which you want status details for member accounts.</p>"
        },
        "Filters": {
          "shape": "OrganizationResourceDetailedStatusFilters",
          "documentation": "<p>An <code>OrganizationResourceDetailedStatusFilters</code> object.</p>"
        },
        "Limit": {
          "shape": "CosmosPageLimit",
          "documentation": "<p>The maximum number of <code>OrganizationConformancePackDetailedStatuses</code> returned on each page. If you do not specify a number, AWS Config uses the default. The default is 100. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "GetOrganizationConformancePackDetailedStatusResponse": {
      "type": "structure",
      "members": {
        "OrganizationConformancePackDetailedStatuses": {
          "shape": "OrganizationConformancePackDetailedStatuses",
          "documentation": "<p>A list of <code>OrganizationConformancePackDetailedStatus</code> objects. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "GetResourceConfigHistoryRequest": {
      "type": "structure",
      "required": [
        "resourceType",
        "resourceId"
      ],
      "members": {
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type.</p>"
        },
        "resourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource (for example., <code>sg-xxxxxx</code>).</p>"
        },
        "laterTime": {
          "shape": "LaterTime",
          "documentation": "<p>The time stamp that indicates a later time. If not specified, current time is taken.</p>"
        },
        "earlierTime": {
          "shape": "EarlierTime",
          "documentation": "<p>The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.</p>"
        },
        "chronologicalOrder": {
          "shape": "ChronologicalOrder",
          "documentation": "<p>The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.</p>"
        },
        "limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p>The input for the <a>GetResourceConfigHistory</a> action.</p>"
    },
    "GetResourceConfigHistoryResponse": {
      "type": "structure",
      "members": {
        "configurationItems": {
          "shape": "ConfigurationItemList",
          "documentation": "<p>A list that contains the configuration history of one or more resources.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p>The output for the <a>GetResourceConfigHistory</a> action.</p>"
    },
    "GroupByAPILimit": {
      "type": "integer",
      "max": 1000,
      "min": 0
    },
    "GroupedResourceCount": {
      "type": "structure",
      "required": [
        "GroupName",
        "ResourceCount"
      ],
      "members": {
        "GroupName": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as <code>GroupByKey</code>.</p>"
        },
        "ResourceCount": {
          "shape": "Long",
          "documentation": "<p>The number of resources in the group.</p>"
        }
      },
      "documentation": "<p>The count of resources that are grouped by the group name.</p>"
    },
    "GroupedResourceCountList": {
      "type": "list",
      "member": {
        "shape": "GroupedResourceCount"
      }
    },
    "IncludeGlobalResourceTypes": {
      "type": "boolean"
    },
    "Integer": {
      "type": "integer"
    },
    "LaterTime": {
      "type": "timestamp"
    },
    "Limit": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "ListAggregateDiscoveredResourcesRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName",
        "ResourceType"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator. </p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resources that you want AWS Config to list in the response.</p>"
        },
        "Filters": {
          "shape": "ResourceFilters",
          "documentation": "<p>Filters the results based on the <code>ResourceFilters</code> object.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "ListAggregateDiscoveredResourcesResponse": {
      "type": "structure",
      "members": {
        "ResourceIdentifiers": {
          "shape": "DiscoveredResourceIdentifierList",
          "documentation": "<p>Returns a list of <code>ResourceIdentifiers</code> objects.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      }
    },
    "ListDiscoveredResourcesRequest": {
      "type": "structure",
      "required": [
        "resourceType"
      ],
      "members": {
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resources that you want AWS Config to list in the response.</p>"
        },
        "resourceIds": {
          "shape": "ResourceIdList",
          "documentation": "<p>The IDs of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.</p>"
        },
        "resourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The custom name of only those resources that you want AWS Config to list in the response. If you do not specify this parameter, AWS Config lists all resources of the specified type that it has discovered.</p>"
        },
        "limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of resource identifiers returned on each page. The default is 100. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.</p>"
        },
        "includeDeletedResources": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether AWS Config includes deleted resources in the results. By default, deleted resources are not included.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListDiscoveredResourcesResponse": {
      "type": "structure",
      "members": {
        "resourceIdentifiers": {
          "shape": "ResourceIdentifierList",
          "documentation": "<p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that you use in a subsequent request to get the next page of results in a paginated response.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, AWS Config uses the default. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the resource.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "MaximumExecutionFrequency": {
      "type": "string",
      "enum": [
        "One_Hour",
        "Three_Hours",
        "Six_Hours",
        "Twelve_Hours",
        "TwentyFour_Hours"
      ]
    },
    "MemberAccountRuleStatus": {
      "type": "string",
      "enum": [
        "CREATE_SUCCESSFUL",
        "CREATE_IN_PROGRESS",
        "CREATE_FAILED",
        "DELETE_SUCCESSFUL",
        "DELETE_FAILED",
        "DELETE_IN_PROGRESS",
        "UPDATE_SUCCESSFUL",
        "UPDATE_IN_PROGRESS",
        "UPDATE_FAILED"
      ]
    },
    "MemberAccountStatus": {
      "type": "structure",
      "required": [
        "AccountId",
        "ConfigRuleName",
        "MemberAccountRuleStatus"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of a member account.</p>"
        },
        "ConfigRuleName": {
          "shape": "StringWithCharLimit64",
          "documentation": "<p>The name of config rule deployed in the member account.</p>"
        },
        "MemberAccountRuleStatus": {
          "shape": "MemberAccountRuleStatus",
          "documentation": "<p>Indicates deployment status for config rule in the member account. When master account calls <code>PutOrganizationConfigRule</code> action for the first time, config rule status is created in the member account. When master account calls <code>PutOrganizationConfigRule</code> action for the second time, config rule status is updated in the member account. Config rule status is deleted when the master account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. </p> <p> AWS Config sets the state of the rule to:</p> <ul> <li> <p> <code>CREATE_SUCCESSFUL</code> when config rule has been created in the member account. </p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> when config rule is being created in the member account.</p> </li> <li> <p> <code>CREATE_FAILED</code> when config rule creation has failed in the member account.</p> </li> <li> <p> <code>DELETE_FAILED</code> when config rule deletion has failed in the member account.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> when config rule is being deleted in the member account.</p> </li> <li> <p> <code>DELETE_SUCCESSFUL</code> when config rule has been deleted in the member account. </p> </li> <li> <p> <code>UPDATE_SUCCESSFUL</code> when config rule has been updated in the member account.</p> </li> <li> <p> <code>UPDATE_IN_PROGRESS</code> when config rule is being updated in the member account.</p> </li> <li> <p> <code>UPDATE_FAILED</code> when config rule deletion has failed in the member account.</p> </li> </ul>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>An error code that is returned when config rule creation or deletion failed in the member account.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>An error message indicating that config rule account creation or deletion has failed due to an error in the member account.</p>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>The timestamp of the last status update.</p>"
        }
      },
      "documentation": "<p>Organization config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.</p>"
    },
    "MessageType": {
      "type": "string",
      "enum": [
        "ConfigurationItemChangeNotification",
        "ConfigurationSnapshotDeliveryCompleted",
        "ScheduledNotification",
        "OversizedConfigurationItemChangeNotification"
      ]
    },
    "Name": {
      "type": "string"
    },
    "NextToken": {
      "type": "string"
    },
    "OrderingTimestamp": {
      "type": "timestamp"
    },
    "OrganizationAggregationSource": {
      "type": "structure",
      "required": [
        "RoleArn"
      ],
      "members": {
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.</p>"
        },
        "AwsRegions": {
          "shape": "AggregatorRegionList",
          "documentation": "<p>The source regions being aggregated.</p>"
        },
        "AllAwsRegions": {
          "shape": "Boolean",
          "documentation": "<p>If true, aggregate existing AWS Config regions and future regions.</p>"
        }
      },
      "documentation": "<p>This object contains regions to set up the aggregator and an IAM role to retrieve organization details.</p>"
    },
    "OrganizationConfigRule": {
      "type": "structure",
      "required": [
        "OrganizationConfigRuleName",
        "OrganizationConfigRuleArn"
      ],
      "members": {
        "OrganizationConfigRuleName": {
          "shape": "OrganizationConfigRuleName",
          "documentation": "<p>The name that you assign to organization config rule.</p>"
        },
        "OrganizationConfigRuleArn": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Amazon Resource Name (ARN) of organization config rule.</p>"
        },
        "OrganizationManagedRuleMetadata": {
          "shape": "OrganizationManagedRuleMetadata",
          "documentation": "<p>An <code>OrganizationManagedRuleMetadata</code> object.</p>"
        },
        "OrganizationCustomRuleMetadata": {
          "shape": "OrganizationCustomRuleMetadata",
          "documentation": "<p>An <code>OrganizationCustomRuleMetadata</code> object.</p>"
        },
        "ExcludedAccounts": {
          "shape": "ExcludedAccounts",
          "documentation": "<p>A comma-separated list of accounts excluded from organization config rule.</p>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>The timestamp of the last update.</p>"
        }
      },
      "documentation": "<p>An organization config rule that has information about config rules that AWS Config creates in member accounts.</p>"
    },
    "OrganizationConfigRuleDetailedStatus": {
      "type": "list",
      "member": {
        "shape": "MemberAccountStatus"
      }
    },
    "OrganizationConfigRuleName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "OrganizationConfigRuleNames": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit64"
      },
      "max": 25,
      "min": 0
    },
    "OrganizationConfigRuleStatus": {
      "type": "structure",
      "required": [
        "OrganizationConfigRuleName",
        "OrganizationRuleStatus"
      ],
      "members": {
        "OrganizationConfigRuleName": {
          "shape": "OrganizationConfigRuleName",
          "documentation": "<p>The name that you assign to organization config rule.</p>"
        },
        "OrganizationRuleStatus": {
          "shape": "OrganizationRuleStatus",
          "documentation": "<p>Indicates deployment status of an organization config rule. When master account calls PutOrganizationConfigRule action for the first time, config rule status is created in all the member accounts. When master account calls PutOrganizationConfigRule action for the second time, config rule status is updated in all the member accounts. Additionally, config rule status is updated when one or more member accounts join or leave an organization. Config rule status is deleted when the master account deletes OrganizationConfigRule in all the member accounts and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.</p> <p>AWS Config sets the state of the rule to:</p> <ul> <li> <p> <code>CREATE_SUCCESSFUL</code> when an organization config rule has been successfully created in all the member accounts. </p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> when an organization config rule creation is in progress.</p> </li> <li> <p> <code>CREATE_FAILED</code> when an organization config rule creation failed in one or more member accounts within that organization.</p> </li> <li> <p> <code>DELETE_FAILED</code> when an organization config rule deletion failed in one or more member accounts within that organization.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> when an organization config rule deletion is in progress.</p> </li> <li> <p> <code>DELETE_SUCCESSFUL</code> when an organization config rule has been successfully deleted from all the member accounts.</p> </li> <li> <p> <code>UPDATE_SUCCESSFUL</code> when an organization config rule has been successfully updated in all the member accounts.</p> </li> <li> <p> <code>UPDATE_IN_PROGRESS</code> when an organization config rule update is in progress.</p> </li> <li> <p> <code>UPDATE_FAILED</code> when an organization config rule update failed in one or more member accounts within that organization.</p> </li> </ul>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>An error code that is returned when organization config rule creation or deletion has failed.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>An error message indicating that organization config rule creation or deletion failed due to an error.</p>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>The timestamp of the last update.</p>"
        }
      },
      "documentation": "<p>Returns the status for an organization config rule in an organization.</p>"
    },
    "OrganizationConfigRuleStatuses": {
      "type": "list",
      "member": {
        "shape": "OrganizationConfigRuleStatus"
      }
    },
    "OrganizationConfigRuleTriggerType": {
      "type": "string",
      "enum": [
        "ConfigurationItemChangeNotification",
        "OversizedConfigurationItemChangeNotification",
        "ScheduledNotification"
      ]
    },
    "OrganizationConfigRuleTriggerTypes": {
      "type": "list",
      "member": {
        "shape": "OrganizationConfigRuleTriggerType"
      }
    },
    "OrganizationConfigRules": {
      "type": "list",
      "member": {
        "shape": "OrganizationConfigRule"
      }
    },
    "OrganizationConformancePack": {
      "type": "structure",
      "required": [
        "OrganizationConformancePackName",
        "OrganizationConformancePackArn",
        "DeliveryS3Bucket",
        "LastUpdateTime"
      ],
      "members": {
        "OrganizationConformancePackName": {
          "shape": "OrganizationConformancePackName",
          "documentation": "<p>The name you assign to an organization conformance pack.</p>"
        },
        "OrganizationConformancePackArn": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Amazon Resource Name (ARN) of organization conformance pack.</p>"
        },
        "DeliveryS3Bucket": {
          "shape": "DeliveryS3Bucket",
          "documentation": "<p>Location of an Amazon S3 bucket where AWS Config can deliver evaluation results and conformance pack template that is used to create a pack. </p>"
        },
        "DeliveryS3KeyPrefix": {
          "shape": "DeliveryS3KeyPrefix",
          "documentation": "<p>Any folder structure you want to add to an Amazon S3 bucket.</p>"
        },
        "ConformancePackInputParameters": {
          "shape": "ConformancePackInputParameters",
          "documentation": "<p>A list of <code>ConformancePackInputParameter</code> objects.</p>"
        },
        "ExcludedAccounts": {
          "shape": "ExcludedAccounts",
          "documentation": "<p>A comma-separated list of accounts excluded from organization conformance pack.</p>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>Last time when organization conformation pack was updated.</p>"
        }
      },
      "documentation": "<p>An organization conformance pack that has information about conformance packs that AWS Config creates in member accounts. </p>"
    },
    "OrganizationConformancePackDetailedStatus": {
      "type": "structure",
      "required": [
        "AccountId",
        "ConformancePackName",
        "Status"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of a member account.</p>"
        },
        "ConformancePackName": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The name of conformance pack deployed in the member account.</p>"
        },
        "Status": {
          "shape": "OrganizationResourceDetailedStatus",
          "documentation": "<p>Indicates deployment status for conformance pack in a member account. When master account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account. When master account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. </p> <p> AWS Config sets the state of the conformance pack to:</p> <ul> <li> <p> <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p> </li> <li> <p> <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p> </li> <li> <p> <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p> </li> <li> <p> <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p> </li> <li> <p> <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p> </li> <li> <p> <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p> </li> <li> <p> <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p> </li> </ul>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>An error code that is returned when conformance pack creation or deletion failed in the member account. </p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>An error message indicating that conformance pack account creation or deletion has failed due to an error in the member account. </p>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>The timestamp of the last status update.</p>"
        }
      },
      "documentation": "<p>Organization conformance pack creation or deletion status in each member account. This includes the name of the conformance pack, the status, error code and error message when the conformance pack creation or deletion failed. </p>"
    },
    "OrganizationConformancePackDetailedStatuses": {
      "type": "list",
      "member": {
        "shape": "OrganizationConformancePackDetailedStatus"
      }
    },
    "OrganizationConformancePackName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z][-a-zA-Z0-9]*"
    },
    "OrganizationConformancePackNames": {
      "type": "list",
      "member": {
        "shape": "OrganizationConformancePackName"
      },
      "max": 25,
      "min": 0
    },
    "OrganizationConformancePackStatus": {
      "type": "structure",
      "required": [
        "OrganizationConformancePackName",
        "Status"
      ],
      "members": {
        "OrganizationConformancePackName": {
          "shape": "OrganizationConformancePackName",
          "documentation": "<p>The name that you assign to organization conformance pack.</p>"
        },
        "Status": {
          "shape": "OrganizationResourceStatus",
          "documentation": "<p>Indicates deployment status of an organization conformance pack. When master account calls PutOrganizationConformancePack for the first time, conformance pack status is created in all the member accounts. When master account calls PutOrganizationConformancePack for the second time, conformance pack status is updated in all the member accounts. Additionally, conformance pack status is updated when one or more member accounts join or leave an organization. Conformance pack status is deleted when the master account deletes OrganizationConformancePack in all the member accounts and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.</p> <p>AWS Config sets the state of the conformance pack to:</p> <ul> <li> <p> <code>CREATE_SUCCESSFUL</code> when an organization conformance pack has been successfully created in all the member accounts. </p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> when an organization conformance pack creation is in progress.</p> </li> <li> <p> <code>CREATE_FAILED</code> when an organization conformance pack creation failed in one or more member accounts within that organization.</p> </li> <li> <p> <code>DELETE_FAILED</code> when an organization conformance pack deletion failed in one or more member accounts within that organization.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> when an organization conformance pack deletion is in progress.</p> </li> <li> <p> <code>DELETE_SUCCESSFUL</code> when an organization conformance pack has been successfully deleted from all the member accounts.</p> </li> <li> <p> <code>UPDATE_SUCCESSFUL</code> when an organization conformance pack has been successfully updated in all the member accounts.</p> </li> <li> <p> <code>UPDATE_IN_PROGRESS</code> when an organization conformance pack update is in progress.</p> </li> <li> <p> <code>UPDATE_FAILED</code> when an organization conformance pack update failed in one or more member accounts within that organization.</p> </li> </ul>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>An error code that is returned when organization conformance pack creation or deletion has failed in a member account. </p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>An error message indicating that organization conformance pack creation or deletion failed due to an error. </p>"
        },
        "LastUpdateTime": {
          "shape": "Date",
          "documentation": "<p>The timestamp of the last update.</p>"
        }
      },
      "documentation": "<p>Returns the status for an organization conformance pack in an organization.</p>"
    },
    "OrganizationConformancePackStatuses": {
      "type": "list",
      "member": {
        "shape": "OrganizationConformancePackStatus"
      }
    },
    "OrganizationConformancePacks": {
      "type": "list",
      "member": {
        "shape": "OrganizationConformancePack"
      }
    },
    "OrganizationCustomRuleMetadata": {
      "type": "structure",
      "required": [
        "LambdaFunctionArn",
        "OrganizationConfigRuleTriggerTypes"
      ],
      "members": {
        "Description": {
          "shape": "StringWithCharLimit256Min0",
          "documentation": "<p>The description that you provide for organization config rule.</p>"
        },
        "LambdaFunctionArn": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The lambda function ARN.</p>"
        },
        "OrganizationConfigRuleTriggerTypes": {
          "shape": "OrganizationConfigRuleTriggerTypes",
          "documentation": "<p>The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:</p> <ul> <li> <p> <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.</p> </li> <li> <p> <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p> </li> <li> <p> <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p> </li> </ul>"
        },
        "InputParameters": {
          "shape": "StringWithCharLimit2048",
          "documentation": "<p>A string, in JSON format, that is passed to organization config rule Lambda function.</p>"
        },
        "MaximumExecutionFrequency": {
          "shape": "MaximumExecutionFrequency",
          "documentation": "<p>The maximum frequency with which AWS Config runs evaluations for a rule. Your custom rule is triggered when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> </note>"
        },
        "ResourceTypesScope": {
          "shape": "ResourceTypesScope",
          "documentation": "<p>The type of the AWS resource that was evaluated.</p>"
        },
        "ResourceIdScope": {
          "shape": "StringWithCharLimit768",
          "documentation": "<p>The ID of the AWS resource that was evaluated.</p>"
        },
        "TagKeyScope": {
          "shape": "StringWithCharLimit128",
          "documentation": "<p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values. </p>"
        },
        "TagValueScope": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). </p>"
        }
      },
      "documentation": "<p>An object that specifies organization custom rule metadata such as resource type, resource ID of AWS resource, Lamdba function ARN, and organization trigger types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.</p>"
    },
    "OrganizationManagedRuleMetadata": {
      "type": "structure",
      "required": [
        "RuleIdentifier"
      ],
      "members": {
        "Description": {
          "shape": "StringWithCharLimit256Min0",
          "documentation": "<p>The description that you provide for organization config rule.</p>"
        },
        "RuleIdentifier": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>For organization config managed rules, a predefined identifier from a list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed rule. To reference a managed rule, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html\">Using AWS Managed Config Rules</a>.</p>"
        },
        "InputParameters": {
          "shape": "StringWithCharLimit2048",
          "documentation": "<p>A string, in JSON format, that is passed to organization config rule Lambda function.</p>"
        },
        "MaximumExecutionFrequency": {
          "shape": "MaximumExecutionFrequency",
          "documentation": "<p>The maximum frequency with which AWS Config runs evaluations for a rule. You are using an AWS managed rule that is triggered at a periodic frequency.</p> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> </note>"
        },
        "ResourceTypesScope": {
          "shape": "ResourceTypesScope",
          "documentation": "<p>The type of the AWS resource that was evaluated.</p>"
        },
        "ResourceIdScope": {
          "shape": "StringWithCharLimit768",
          "documentation": "<p>The ID of the AWS resource that was evaluated.</p>"
        },
        "TagKeyScope": {
          "shape": "StringWithCharLimit128",
          "documentation": "<p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values. </p>"
        },
        "TagValueScope": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>"
        }
      },
      "documentation": "<p>An object that specifies organization managed rule metadata such as resource type and ID of AWS resource along with the rule identifier. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic.</p>"
    },
    "OrganizationResourceDetailedStatus": {
      "type": "string",
      "enum": [
        "CREATE_SUCCESSFUL",
        "CREATE_IN_PROGRESS",
        "CREATE_FAILED",
        "DELETE_SUCCESSFUL",
        "DELETE_FAILED",
        "DELETE_IN_PROGRESS",
        "UPDATE_SUCCESSFUL",
        "UPDATE_IN_PROGRESS",
        "UPDATE_FAILED"
      ]
    },
    "OrganizationResourceDetailedStatusFilters": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the member account within an organization.</p>"
        },
        "Status": {
          "shape": "OrganizationResourceDetailedStatus",
          "documentation": "<p>Indicates deployment status for conformance pack in a member account. When master account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account. When master account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. </p> <p> AWS Config sets the state of the conformance pack to:</p> <ul> <li> <p> <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p> </li> <li> <p> <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p> </li> <li> <p> <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p> </li> <li> <p> <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p> </li> <li> <p> <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p> </li> <li> <p> <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p> </li> <li> <p> <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.</p>"
    },
    "OrganizationResourceStatus": {
      "type": "string",
      "enum": [
        "CREATE_SUCCESSFUL",
        "CREATE_IN_PROGRESS",
        "CREATE_FAILED",
        "DELETE_SUCCESSFUL",
        "DELETE_FAILED",
        "DELETE_IN_PROGRESS",
        "UPDATE_SUCCESSFUL",
        "UPDATE_IN_PROGRESS",
        "UPDATE_FAILED"
      ]
    },
    "OrganizationRuleStatus": {
      "type": "string",
      "enum": [
        "CREATE_SUCCESSFUL",
        "CREATE_IN_PROGRESS",
        "CREATE_FAILED",
        "DELETE_SUCCESSFUL",
        "DELETE_FAILED",
        "DELETE_IN_PROGRESS",
        "UPDATE_SUCCESSFUL",
        "UPDATE_IN_PROGRESS",
        "UPDATE_FAILED"
      ]
    },
    "Owner": {
      "type": "string",
      "enum": [
        "CUSTOM_LAMBDA",
        "AWS"
      ]
    },
    "PageSizeLimit": {
      "type": "integer",
      "max": 20,
      "min": 0
    },
    "ParameterName": {
      "type": "string",
      "max": 255,
      "min": 0
    },
    "ParameterValue": {
      "type": "string",
      "max": 4096,
      "min": 0
    },
    "PendingAggregationRequest": {
      "type": "structure",
      "members": {
        "RequesterAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the account requesting to aggregate data.</p>"
        },
        "RequesterAwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region requesting to aggregate data. </p>"
        }
      },
      "documentation": "<p>An object that represents the account ID and region of an aggregator account that is requesting authorization but is not yet authorized.</p>"
    },
    "PendingAggregationRequestList": {
      "type": "list",
      "member": {
        "shape": "PendingAggregationRequest"
      }
    },
    "Percentage": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "PutAggregationAuthorizationRequest": {
      "type": "structure",
      "required": [
        "AuthorizedAccountId",
        "AuthorizedAwsRegion"
      ],
      "members": {
        "AuthorizedAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the account authorized to aggregate data.</p>"
        },
        "AuthorizedAwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The region authorized to collect aggregated data.</p>"
        },
        "Tags": {
          "shape": "TagsList",
          "documentation": "<p>An array of tag object.</p>"
        }
      }
    },
    "PutAggregationAuthorizationResponse": {
      "type": "structure",
      "members": {
        "AggregationAuthorization": {
          "shape": "AggregationAuthorization",
          "documentation": "<p>Returns an AggregationAuthorization object. </p>"
        }
      }
    },
    "PutConfigRuleRequest": {
      "type": "structure",
      "required": [
        "ConfigRule"
      ],
      "members": {
        "ConfigRule": {
          "shape": "ConfigRule",
          "documentation": "<p>The rule that you want to add to your account.</p>"
        },
        "Tags": {
          "shape": "TagsList",
          "documentation": "<p>An array of tag object.</p>"
        }
      }
    },
    "PutConfigurationAggregatorRequest": {
      "type": "structure",
      "required": [
        "ConfigurationAggregatorName"
      ],
      "members": {
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "AccountAggregationSources": {
          "shape": "AccountAggregationSourceList",
          "documentation": "<p>A list of AccountAggregationSource object. </p>"
        },
        "OrganizationAggregationSource": {
          "shape": "OrganizationAggregationSource",
          "documentation": "<p>An OrganizationAggregationSource object.</p>"
        },
        "Tags": {
          "shape": "TagsList",
          "documentation": "<p>An array of tag object.</p>"
        }
      }
    },
    "PutConfigurationAggregatorResponse": {
      "type": "structure",
      "members": {
        "ConfigurationAggregator": {
          "shape": "ConfigurationAggregator",
          "documentation": "<p>Returns a ConfigurationAggregator object.</p>"
        }
      }
    },
    "PutConfigurationRecorderRequest": {
      "type": "structure",
      "required": [
        "ConfigurationRecorder"
      ],
      "members": {
        "ConfigurationRecorder": {
          "shape": "ConfigurationRecorder",
          "documentation": "<p>The configuration recorder object that records each configuration change made to the resources.</p>"
        }
      },
      "documentation": "<p>The input for the <a>PutConfigurationRecorder</a> action.</p>"
    },
    "PutConformancePackRequest": {
      "type": "structure",
      "required": [
        "ConformancePackName",
        "DeliveryS3Bucket"
      ],
      "members": {
        "ConformancePackName": {
          "shape": "ConformancePackName",
          "documentation": "<p>Name of the conformance pack you want to create.</p>"
        },
        "TemplateS3Uri": {
          "shape": "TemplateS3Uri",
          "documentation": "<p>Location of file containing the template body (<code>s3://bucketname/prefix</code>). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack. </p> <note> <p>You must have access to read Amazon S3 bucket.</p> </note>"
        },
        "TemplateBody": {
          "shape": "TemplateBody",
          "documentation": "<p>A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p> <note> <p>You can only use a YAML template with one resource type, that is, config rule and a remediation action. </p> </note>"
        },
        "DeliveryS3Bucket": {
          "shape": "DeliveryS3Bucket",
          "documentation": "<p>AWS Config stores intermediate files while processing conformance pack template.</p>"
        },
        "DeliveryS3KeyPrefix": {
          "shape": "DeliveryS3KeyPrefix",
          "documentation": "<p>The prefix for the Amazon S3 bucket. </p>"
        },
        "ConformancePackInputParameters": {
          "shape": "ConformancePackInputParameters",
          "documentation": "<p>A list of <code>ConformancePackInputParameter</code> objects.</p>"
        }
      }
    },
    "PutConformancePackResponse": {
      "type": "structure",
      "members": {
        "ConformancePackArn": {
          "shape": "ConformancePackArn",
          "documentation": "<p>ARN of the conformance pack.</p>"
        }
      }
    },
    "PutDeliveryChannelRequest": {
      "type": "structure",
      "required": [
        "DeliveryChannel"
      ],
      "members": {
        "DeliveryChannel": {
          "shape": "DeliveryChannel",
          "documentation": "<p>The configuration delivery channel object that delivers the configuration information to an Amazon S3 bucket and to an Amazon SNS topic.</p>"
        }
      },
      "documentation": "<p>The input for the <a>PutDeliveryChannel</a> action.</p>"
    },
    "PutEvaluationsRequest": {
      "type": "structure",
      "required": [
        "ResultToken"
      ],
      "members": {
        "Evaluations": {
          "shape": "Evaluations",
          "documentation": "<p>The assessments that the AWS Lambda function performs. Each evaluation identifies an AWS resource and indicates whether it complies with the AWS Config rule that invokes the AWS Lambda function.</p>"
        },
        "ResultToken": {
          "shape": "String",
          "documentation": "<p>An encrypted token that associates an evaluation with an AWS Config rule. Identifies the rule and the event that triggered the evaluation.</p>"
        },
        "TestMode": {
          "shape": "Boolean",
          "documentation": "<p>Use this parameter to specify a test run for <code>PutEvaluations</code>. You can verify whether your AWS Lambda function will deliver evaluation results to AWS Config. No updates occur to your existing evaluations, and evaluation results are not sent to AWS Config.</p> <note> <p>When <code>TestMode</code> is <code>true</code>, <code>PutEvaluations</code> doesn't require a valid value for the <code>ResultToken</code> parameter, but the value cannot be null.</p> </note>"
        }
      },
      "documentation": "<p/>"
    },
    "PutEvaluationsResponse": {
      "type": "structure",
      "members": {
        "FailedEvaluations": {
          "shape": "Evaluations",
          "documentation": "<p>Requests that failed because of a client or server error.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "PutOrganizationConfigRuleRequest": {
      "type": "structure",
      "required": [
        "OrganizationConfigRuleName"
      ],
      "members": {
        "OrganizationConfigRuleName": {
          "shape": "OrganizationConfigRuleName",
          "documentation": "<p>The name that you assign to an organization config rule.</p>"
        },
        "OrganizationManagedRuleMetadata": {
          "shape": "OrganizationManagedRuleMetadata",
          "documentation": "<p>An <code>OrganizationManagedRuleMetadata</code> object. </p>"
        },
        "OrganizationCustomRuleMetadata": {
          "shape": "OrganizationCustomRuleMetadata",
          "documentation": "<p>An <code>OrganizationCustomRuleMetadata</code> object.</p>"
        },
        "ExcludedAccounts": {
          "shape": "ExcludedAccounts",
          "documentation": "<p>A comma-separated list of accounts that you want to exclude from an organization config rule.</p>"
        }
      }
    },
    "PutOrganizationConfigRuleResponse": {
      "type": "structure",
      "members": {
        "OrganizationConfigRuleArn": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The Amazon Resource Name (ARN) of an organization config rule.</p>"
        }
      }
    },
    "PutOrganizationConformancePackRequest": {
      "type": "structure",
      "required": [
        "OrganizationConformancePackName",
        "DeliveryS3Bucket"
      ],
      "members": {
        "OrganizationConformancePackName": {
          "shape": "OrganizationConformancePackName",
          "documentation": "<p>Name of the organization conformance pack you want to create.</p>"
        },
        "TemplateS3Uri": {
          "shape": "TemplateS3Uri",
          "documentation": "<p>Location of file containing the template body. The uri must point to the conformance pack template (max size: 300 KB).</p> <note> <p>You must have access to read Amazon S3 bucket.</p> </note>"
        },
        "TemplateBody": {
          "shape": "TemplateBody",
          "documentation": "<p>A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>"
        },
        "DeliveryS3Bucket": {
          "shape": "DeliveryS3Bucket",
          "documentation": "<p>Location of an Amazon S3 bucket where AWS Config can deliver evaluation results. AWS Config stores intermediate files while processing conformance pack template. </p> <p>The delivery bucket name should start with awsconfigconforms. For example: \"Resource\": \"arn:aws:s3:::your_bucket_name/*\". For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/conformance-pack-organization-apis.html\">Permissions for cross account bucket access</a>.</p>"
        },
        "DeliveryS3KeyPrefix": {
          "shape": "DeliveryS3KeyPrefix",
          "documentation": "<p>The prefix for the Amazon S3 bucket.</p>"
        },
        "ConformancePackInputParameters": {
          "shape": "ConformancePackInputParameters",
          "documentation": "<p>A list of <code>ConformancePackInputParameter</code> objects.</p>"
        },
        "ExcludedAccounts": {
          "shape": "ExcludedAccounts",
          "documentation": "<p>A list of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack.</p>"
        }
      }
    },
    "PutOrganizationConformancePackResponse": {
      "type": "structure",
      "members": {
        "OrganizationConformancePackArn": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>ARN of the organization conformance pack.</p>"
        }
      }
    },
    "PutRemediationConfigurationsRequest": {
      "type": "structure",
      "required": [
        "RemediationConfigurations"
      ],
      "members": {
        "RemediationConfigurations": {
          "shape": "RemediationConfigurations",
          "documentation": "<p>A list of remediation configuration objects.</p>"
        }
      }
    },
    "PutRemediationConfigurationsResponse": {
      "type": "structure",
      "members": {
        "FailedBatches": {
          "shape": "FailedRemediationBatches",
          "documentation": "<p>Returns a list of failed remediation batch objects.</p>"
        }
      }
    },
    "PutRemediationExceptionsRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName",
        "ResourceKeys"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule for which you want to create remediation exception.</p>"
        },
        "ResourceKeys": {
          "shape": "RemediationExceptionResourceKeys",
          "documentation": "<p>An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys. </p>"
        },
        "Message": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>The message contains an explanation of the exception.</p>"
        },
        "ExpirationTime": {
          "shape": "Date",
          "documentation": "<p>The exception is automatically deleted after the expiration date.</p>"
        }
      }
    },
    "PutRemediationExceptionsResponse": {
      "type": "structure",
      "members": {
        "FailedBatches": {
          "shape": "FailedRemediationExceptionBatches",
          "documentation": "<p>Returns a list of failed remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>"
        }
      }
    },
    "PutResourceConfigRequest": {
      "type": "structure",
      "required": [
        "ResourceType",
        "SchemaVersionId",
        "ResourceId",
        "Configuration"
      ],
      "members": {
        "ResourceType": {
          "shape": "ResourceTypeString",
          "documentation": "<p>The type of the resource. The custom resource type must be registered with AWS CloudFormation. </p> <note> <p>You cannot use the organization names “aws”, “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.</p> </note>"
        },
        "SchemaVersionId": {
          "shape": "SchemaVersionId",
          "documentation": "<p>Version of the schema registered for the ResourceType in AWS CloudFormation.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Unique identifier of the resource.</p>"
        },
        "ResourceName": {
          "shape": "ResourceName",
          "documentation": "<p>Name of the resource.</p>"
        },
        "Configuration": {
          "shape": "Configuration",
          "documentation": "<p>The configuration object of the resource in valid JSON format. It must match the schema registered with AWS CloudFormation.</p> <note> <p>The configuration JSON must not exceed 64 KB.</p> </note>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Tags associated with the resource.</p>"
        }
      }
    },
    "PutRetentionConfigurationRequest": {
      "type": "structure",
      "required": [
        "RetentionPeriodInDays"
      ],
      "members": {
        "RetentionPeriodInDays": {
          "shape": "RetentionPeriodInDays",
          "documentation": "<p>Number of days AWS Config stores your historical information.</p> <note> <p>Currently, only applicable to the configuration item history.</p> </note>"
        }
      }
    },
    "PutRetentionConfigurationResponse": {
      "type": "structure",
      "members": {
        "RetentionConfiguration": {
          "shape": "RetentionConfiguration",
          "documentation": "<p>Returns a retention configuration object.</p>"
        }
      }
    },
    "QueryInfo": {
      "type": "structure",
      "members": {
        "SelectFields": {
          "shape": "FieldInfoList",
          "documentation": "<p>Returns a <code>FieldInfo</code> object.</p>"
        }
      },
      "documentation": "<p>Details about the query.</p>"
    },
    "RecorderName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "RecorderStatus": {
      "type": "string",
      "enum": [
        "Pending",
        "Success",
        "Failure"
      ]
    },
    "RecordingGroup": {
      "type": "structure",
      "members": {
        "allSupported": {
          "shape": "AllSupported",
          "documentation": "<p>Specifies whether AWS Config records configuration changes for every supported type of regional resource.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of regional resource, it starts recording resources of that type automatically.</p> <p>If you set this option to <code>true</code>, you cannot enumerate a list of <code>resourceTypes</code>.</p>"
        },
        "includeGlobalResourceTypes": {
          "shape": "IncludeGlobalResourceTypes",
          "documentation": "<p>Specifies whether AWS Config includes all supported types of global resources (for example, IAM resources) with the resources that it records.</p> <p>Before you can set this option to <code>true</code>, you must set the <code>allSupported</code> option to <code>true</code>.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of global resource, it starts recording resources of that type automatically.</p> <p>The configuration details for any global resource are the same in all regions. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources.</p>"
        },
        "resourceTypes": {
          "shape": "ResourceTypeList",
          "documentation": "<p>A comma-separated list that specifies the types of AWS resources for which AWS Config records configuration changes (for example, <code>AWS::EC2::Instance</code> or <code>AWS::CloudTrail::Trail</code>).</p> <p>Before you can set this option to <code>true</code>, you must set the <code>allSupported</code> option to <code>false</code>.</p> <p>If you set this option to <code>true</code>, when AWS Config adds support for a new type of resource, it will not record resources of that type unless you manually add that type to your recording group.</p> <p>For a list of valid <code>resourceTypes</code> values, see the <b>resourceType Value</b> column in <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources\">Supported AWS Resource Types</a>.</p>"
        }
      },
      "documentation": "<p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources\">Supported Resource Types</a>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html\">Selecting Which Resources AWS Config Records</a>.</p>"
    },
    "ReevaluateConfigRuleNames": {
      "type": "list",
      "member": {
        "shape": "ConfigRuleName"
      },
      "max": 25,
      "min": 1
    },
    "RelatedEvent": {
      "type": "string"
    },
    "RelatedEventList": {
      "type": "list",
      "member": {
        "shape": "RelatedEvent"
      }
    },
    "Relationship": {
      "type": "structure",
      "members": {
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type of the related resource.</p>"
        },
        "resourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the related resource (for example, <code>sg-xxxxxx</code>).</p>"
        },
        "resourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The custom name of the related resource, if available.</p>"
        },
        "relationshipName": {
          "shape": "RelationshipName",
          "documentation": "<p>The type of relationship with the related resource.</p>"
        }
      },
      "documentation": "<p>The relationship of the related resource to the main resource.</p>"
    },
    "RelationshipList": {
      "type": "list",
      "member": {
        "shape": "Relationship"
      }
    },
    "RelationshipName": {
      "type": "string"
    },
    "RemediationConfiguration": {
      "type": "structure",
      "required": [
        "ConfigRuleName",
        "TargetType",
        "TargetId"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "TargetType": {
          "shape": "RemediationTargetType",
          "documentation": "<p>The type of the target. Target executes remediation. For example, SSM document.</p>"
        },
        "TargetId": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>Target ID is the name of the public document.</p>"
        },
        "TargetVersion": {
          "shape": "String",
          "documentation": "<p>Version of the target. For example, version of the SSM document.</p> <note> <p>If you make backward incompatible changes to the SSM document, you must call PutRemediationConfiguration API again to ensure the remediations can run.</p> </note>"
        },
        "Parameters": {
          "shape": "RemediationParameters",
          "documentation": "<p>An object of the RemediationParameterValue.</p>"
        },
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>The type of a resource. </p>"
        },
        "Automatic": {
          "shape": "Boolean",
          "documentation": "<p>The remediation is triggered automatically.</p>"
        },
        "ExecutionControls": {
          "shape": "ExecutionControls",
          "documentation": "<p>An ExecutionControls object.</p>"
        },
        "MaximumAutomaticAttempts": {
          "shape": "AutoRemediationAttempts",
          "documentation": "<p>The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.</p> <p>For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptsSeconds as 50 seconds, AWS Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.</p>"
        },
        "RetryAttemptSeconds": {
          "shape": "AutoRemediationAttemptSeconds",
          "documentation": "<p>Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds. </p> <p>For example, if you specify RetryAttemptsSeconds as 50 seconds and MaximumAutomaticAttempts as 5, AWS Config will run auto-remediations 5 times within 50 seconds before throwing an exception.</p>"
        },
        "Arn": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>Amazon Resource Name (ARN) of remediation configuration.</p>"
        },
        "CreatedByService": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>Name of the service that owns the service linked rule, if applicable.</p>"
        }
      },
      "documentation": "<p>An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.</p>"
    },
    "RemediationConfigurations": {
      "type": "list",
      "member": {
        "shape": "RemediationConfiguration"
      },
      "max": 25,
      "min": 0
    },
    "RemediationException": {
      "type": "structure",
      "required": [
        "ConfigRuleName",
        "ResourceType",
        "ResourceId"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The name of the AWS Config rule.</p>"
        },
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of a resource.</p>"
        },
        "ResourceId": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>The ID of the resource (for example., sg-xxxxxx).</p>"
        },
        "Message": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>An explanation of an remediation exception.</p>"
        },
        "ExpirationTime": {
          "shape": "Date",
          "documentation": "<p>The time when the remediation exception will be deleted.</p>"
        }
      },
      "documentation": "<p>An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type. </p>"
    },
    "RemediationExceptionResourceKey": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The type of a resource.</p>"
        },
        "ResourceId": {
          "shape": "StringWithCharLimit1024",
          "documentation": "<p>The ID of the resource (for example., sg-xxxxxx).</p>"
        }
      },
      "documentation": "<p>The details that identify a resource within AWS Config, including the resource type and resource ID. </p>"
    },
    "RemediationExceptionResourceKeys": {
      "type": "list",
      "member": {
        "shape": "RemediationExceptionResourceKey"
      },
      "max": 100,
      "min": 1
    },
    "RemediationExceptions": {
      "type": "list",
      "member": {
        "shape": "RemediationException"
      },
      "max": 25,
      "min": 0
    },
    "RemediationExecutionState": {
      "type": "string",
      "enum": [
        "QUEUED",
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "RemediationExecutionStatus": {
      "type": "structure",
      "members": {
        "ResourceKey": {
          "shape": "ResourceKey"
        },
        "State": {
          "shape": "RemediationExecutionState",
          "documentation": "<p>ENUM of the values.</p>"
        },
        "StepDetails": {
          "shape": "RemediationExecutionSteps",
          "documentation": "<p>Details of every step.</p>"
        },
        "InvocationTime": {
          "shape": "Date",
          "documentation": "<p>Start time when the remediation was executed.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Date",
          "documentation": "<p>The time when the remediation execution was last updated.</p>"
        }
      },
      "documentation": "<p>Provides details of the current status of the invoked remediation action for that resource.</p>"
    },
    "RemediationExecutionStatuses": {
      "type": "list",
      "member": {
        "shape": "RemediationExecutionStatus"
      }
    },
    "RemediationExecutionStep": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The details of the step.</p>"
        },
        "State": {
          "shape": "RemediationExecutionStepState",
          "documentation": "<p>The valid status of the step.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>An error message if the step was interrupted during execution.</p>"
        },
        "StartTime": {
          "shape": "Date",
          "documentation": "<p>The time when the step started.</p>"
        },
        "StopTime": {
          "shape": "Date",
          "documentation": "<p>The time when the step stopped.</p>"
        }
      },
      "documentation": "<p>Name of the step from the SSM document.</p>"
    },
    "RemediationExecutionStepState": {
      "type": "string",
      "enum": [
        "SUCCEEDED",
        "PENDING",
        "FAILED"
      ]
    },
    "RemediationExecutionSteps": {
      "type": "list",
      "member": {
        "shape": "RemediationExecutionStep"
      }
    },
    "RemediationParameterValue": {
      "type": "structure",
      "members": {
        "ResourceValue": {
          "shape": "ResourceValue",
          "documentation": "<p>The value is dynamic and changes at run-time.</p>"
        },
        "StaticValue": {
          "shape": "StaticValue",
          "documentation": "<p>The value is static and does not change at run-time.</p>"
        }
      },
      "documentation": "<p>The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.</p>"
    },
    "RemediationParameters": {
      "type": "map",
      "key": {
        "shape": "StringWithCharLimit256"
      },
      "value": {
        "shape": "RemediationParameterValue"
      },
      "max": 25,
      "min": 0
    },
    "RemediationTargetType": {
      "type": "string",
      "enum": [
        "SSM_DOCUMENT"
      ]
    },
    "ResourceCount": {
      "type": "structure",
      "members": {
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type (for example, <code>\"AWS::EC2::Instance\"</code>).</p>"
        },
        "count": {
          "shape": "Long",
          "documentation": "<p>The number of resources.</p>"
        }
      },
      "documentation": "<p>An object that contains the resource type and the number of resources.</p>"
    },
    "ResourceCountFilters": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the AWS resource.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit ID of the account.</p>"
        },
        "Region": {
          "shape": "AwsRegion",
          "documentation": "<p>The region where the account is located.</p>"
        }
      },
      "documentation": "<p>Filters the resource count based on account ID, region, and resource type.</p>"
    },
    "ResourceCountGroupKey": {
      "type": "string",
      "enum": [
        "RESOURCE_TYPE",
        "ACCOUNT_ID",
        "AWS_REGION"
      ]
    },
    "ResourceCounts": {
      "type": "list",
      "member": {
        "shape": "ResourceCount"
      }
    },
    "ResourceCreationTime": {
      "type": "timestamp"
    },
    "ResourceDeletionTime": {
      "type": "timestamp"
    },
    "ResourceFilters": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit source account ID.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource.</p>"
        },
        "ResourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the resource.</p>"
        },
        "Region": {
          "shape": "AwsRegion",
          "documentation": "<p>The source region.</p>"
        }
      },
      "documentation": "<p>Filters the results by resource account ID, region, resource ID, and resource name.</p>"
    },
    "ResourceId": {
      "type": "string",
      "max": 768,
      "min": 1
    },
    "ResourceIdList": {
      "type": "list",
      "member": {
        "shape": "ResourceId"
      }
    },
    "ResourceIdentifier": {
      "type": "structure",
      "members": {
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource.</p>"
        },
        "resourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource (for example, <code>sg-xxxxxx</code>).</p>"
        },
        "resourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The custom name of the resource (if available).</p>"
        },
        "resourceDeletionTime": {
          "shape": "ResourceDeletionTime",
          "documentation": "<p>The time that the resource was deleted.</p>"
        }
      },
      "documentation": "<p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>"
    },
    "ResourceIdentifierList": {
      "type": "list",
      "member": {
        "shape": "ResourceIdentifier"
      }
    },
    "ResourceIdentifiersList": {
      "type": "list",
      "member": {
        "shape": "AggregateResourceIdentifier"
      },
      "max": 100,
      "min": 1
    },
    "ResourceKey": {
      "type": "structure",
      "required": [
        "resourceType",
        "resourceId"
      ],
      "members": {
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type.</p>"
        },
        "resourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the resource (for example., sg-xxxxxx). </p>"
        }
      },
      "documentation": "<p>The details that identify a resource within AWS Config, including the resource type and resource ID.</p>"
    },
    "ResourceKeys": {
      "type": "list",
      "member": {
        "shape": "ResourceKey"
      },
      "max": 100,
      "min": 1
    },
    "ResourceName": {
      "type": "string"
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "AWS::EC2::CustomerGateway",
        "AWS::EC2::EIP",
        "AWS::EC2::Host",
        "AWS::EC2::Instance",
        "AWS::EC2::InternetGateway",
        "AWS::EC2::NetworkAcl",
        "AWS::EC2::NetworkInterface",
        "AWS::EC2::RouteTable",
        "AWS::EC2::SecurityGroup",
        "AWS::EC2::Subnet",
        "AWS::CloudTrail::Trail",
        "AWS::EC2::Volume",
        "AWS::EC2::VPC",
        "AWS::EC2::VPNConnection",
        "AWS::EC2::VPNGateway",
        "AWS::EC2::RegisteredHAInstance",
        "AWS::EC2::NatGateway",
        "AWS::EC2::EgressOnlyInternetGateway",
        "AWS::EC2::VPCEndpoint",
        "AWS::EC2::VPCEndpointService",
        "AWS::EC2::FlowLog",
        "AWS::EC2::VPCPeeringConnection",
        "AWS::Elasticsearch::Domain",
        "AWS::IAM::Group",
        "AWS::IAM::Policy",
        "AWS::IAM::Role",
        "AWS::IAM::User",
        "AWS::ElasticLoadBalancingV2::LoadBalancer",
        "AWS::ACM::Certificate",
        "AWS::RDS::DBInstance",
        "AWS::RDS::DBSubnetGroup",
        "AWS::RDS::DBSecurityGroup",
        "AWS::RDS::DBSnapshot",
        "AWS::RDS::DBCluster",
        "AWS::RDS::DBClusterSnapshot",
        "AWS::RDS::EventSubscription",
        "AWS::S3::Bucket",
        "AWS::S3::AccountPublicAccessBlock",
        "AWS::Redshift::Cluster",
        "AWS::Redshift::ClusterSnapshot",
        "AWS::Redshift::ClusterParameterGroup",
        "AWS::Redshift::ClusterSecurityGroup",
        "AWS::Redshift::ClusterSubnetGroup",
        "AWS::Redshift::EventSubscription",
        "AWS::SSM::ManagedInstanceInventory",
        "AWS::CloudWatch::Alarm",
        "AWS::CloudFormation::Stack",
        "AWS::ElasticLoadBalancing::LoadBalancer",
        "AWS::AutoScaling::AutoScalingGroup",
        "AWS::AutoScaling::LaunchConfiguration",
        "AWS::AutoScaling::ScalingPolicy",
        "AWS::AutoScaling::ScheduledAction",
        "AWS::DynamoDB::Table",
        "AWS::CodeBuild::Project",
        "AWS::WAF::RateBasedRule",
        "AWS::WAF::Rule",
        "AWS::WAF::RuleGroup",
        "AWS::WAF::WebACL",
        "AWS::WAFRegional::RateBasedRule",
        "AWS::WAFRegional::Rule",
        "AWS::WAFRegional::RuleGroup",
        "AWS::WAFRegional::WebACL",
        "AWS::CloudFront::Distribution",
        "AWS::CloudFront::StreamingDistribution",
        "AWS::Lambda::Function",
        "AWS::ElasticBeanstalk::Application",
        "AWS::ElasticBeanstalk::ApplicationVersion",
        "AWS::ElasticBeanstalk::Environment",
        "AWS::WAFv2::WebACL",
        "AWS::WAFv2::RuleGroup",
        "AWS::WAFv2::IPSet",
        "AWS::WAFv2::RegexPatternSet",
        "AWS::WAFv2::ManagedRuleSet",
        "AWS::XRay::EncryptionConfig",
        "AWS::SSM::AssociationCompliance",
        "AWS::SSM::PatchCompliance",
        "AWS::Shield::Protection",
        "AWS::ShieldRegional::Protection",
        "AWS::Config::ResourceCompliance",
        "AWS::ApiGateway::Stage",
        "AWS::ApiGateway::RestApi",
        "AWS::ApiGatewayV2::Stage",
        "AWS::ApiGatewayV2::Api",
        "AWS::CodePipeline::Pipeline",
        "AWS::ServiceCatalog::CloudFormationProvisionedProduct",
        "AWS::ServiceCatalog::CloudFormationProduct",
        "AWS::ServiceCatalog::Portfolio",
        "AWS::SQS::Queue",
        "AWS::KMS::Key",
        "AWS::QLDB::Ledger",
        "AWS::SecretsManager::Secret",
        "AWS::SNS::Topic",
        "AWS::SSM::FileData"
      ]
    },
    "ResourceTypeList": {
      "type": "list",
      "member": {
        "shape": "ResourceType"
      }
    },
    "ResourceTypeString": {
      "type": "string",
      "max": 196,
      "min": 1
    },
    "ResourceTypes": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit256"
      },
      "max": 20,
      "min": 0
    },
    "ResourceTypesScope": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit256"
      },
      "max": 100,
      "min": 0
    },
    "ResourceValue": {
      "type": "structure",
      "required": [
        "Value"
      ],
      "members": {
        "Value": {
          "shape": "ResourceValueType",
          "documentation": "<p>The value is a resource ID.</p>"
        }
      },
      "documentation": "<p>The dynamic value of the resource.</p>"
    },
    "ResourceValueType": {
      "type": "string",
      "enum": [
        "RESOURCE_ID"
      ]
    },
    "Results": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "RetentionConfiguration": {
      "type": "structure",
      "required": [
        "Name",
        "RetentionPeriodInDays"
      ],
      "members": {
        "Name": {
          "shape": "RetentionConfigurationName",
          "documentation": "<p>The name of the retention configuration object.</p>"
        },
        "RetentionPeriodInDays": {
          "shape": "RetentionPeriodInDays",
          "documentation": "<p>Number of days AWS Config stores your historical information.</p> <note> <p>Currently, only applicable to the configuration item history.</p> </note>"
        }
      },
      "documentation": "<p>An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in AWS Config.</p>"
    },
    "RetentionConfigurationList": {
      "type": "list",
      "member": {
        "shape": "RetentionConfiguration"
      }
    },
    "RetentionConfigurationName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\w\\-]+"
    },
    "RetentionConfigurationNameList": {
      "type": "list",
      "member": {
        "shape": "RetentionConfigurationName"
      },
      "max": 1,
      "min": 0
    },
    "RetentionPeriodInDays": {
      "type": "integer",
      "max": 2557,
      "min": 30
    },
    "RuleLimit": {
      "type": "integer",
      "max": 50,
      "min": 0
    },
    "SchemaVersionId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[A-Za-z0-9-]+"
    },
    "Scope": {
      "type": "structure",
      "members": {
        "ComplianceResourceTypes": {
          "shape": "ComplianceResourceTypes",
          "documentation": "<p>The resource types of only those AWS resources that you want to trigger an evaluation for the rule. You can only specify one type if you also specify a resource ID for <code>ComplianceResourceId</code>.</p>"
        },
        "TagKey": {
          "shape": "StringWithCharLimit128",
          "documentation": "<p>The tag key that is applied to only those AWS resources that you want to trigger an evaluation for the rule.</p>"
        },
        "TagValue": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule. If you specify a value for <code>TagValue</code>, you must also specify a value for <code>TagKey</code>.</p>"
        },
        "ComplianceResourceId": {
          "shape": "BaseResourceId",
          "documentation": "<p>The ID of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for <code>ComplianceResourceTypes</code>.</p>"
        }
      },
      "documentation": "<p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>"
    },
    "SelectAggregateResourceConfigRequest": {
      "type": "structure",
      "required": [
        "Expression",
        "ConfigurationAggregatorName"
      ],
      "members": {
        "Expression": {
          "shape": "Expression",
          "documentation": "<p>The SQL query SELECT command. </p>"
        },
        "ConfigurationAggregatorName": {
          "shape": "ConfigurationAggregatorName",
          "documentation": "<p>The name of the configuration aggregator.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of query results returned on each page. </p>"
        },
        "MaxResults": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of query results returned on each page. AWS Config also allows the Limit request parameter.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
        }
      }
    },
    "SelectAggregateResourceConfigResponse": {
      "type": "structure",
      "members": {
        "Results": {
          "shape": "Results",
          "documentation": "<p>Returns the results for the SQL query.</p>"
        },
        "QueryInfo": {
          "shape": "QueryInfo"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
        }
      }
    },
    "SelectResourceConfigRequest": {
      "type": "structure",
      "required": [
        "Expression"
      ],
      "members": {
        "Expression": {
          "shape": "Expression",
          "documentation": "<p>The SQL query <code>SELECT</code> command.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of query results returned on each page. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
        }
      }
    },
    "SelectResourceConfigResponse": {
      "type": "structure",
      "members": {
        "Results": {
          "shape": "Results",
          "documentation": "<p>Returns the results for the SQL query.</p>"
        },
        "QueryInfo": {
          "shape": "QueryInfo",
          "documentation": "<p>Returns the <code>QueryInfo</code> object.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
        }
      }
    },
    "Source": {
      "type": "structure",
      "required": [
        "Owner",
        "SourceIdentifier"
      ],
      "members": {
        "Owner": {
          "shape": "Owner",
          "documentation": "<p>Indicates whether AWS or the customer owns and manages the AWS Config rule.</p>"
        },
        "SourceIdentifier": {
          "shape": "StringWithCharLimit256",
          "documentation": "<p>For AWS Config managed rules, a predefined identifier from a list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed rule. To reference a managed rule, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html\">Using AWS Managed Config Rules</a>.</p> <p>For custom rules, the identifier is the Amazon Resource Name (ARN) of the rule's AWS Lambda function, such as <code>arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name</code>.</p>"
        },
        "SourceDetails": {
          "shape": "SourceDetails",
          "documentation": "<p>Provides the source and type of the event that causes AWS Config to evaluate your AWS resources.</p>"
        }
      },
      "documentation": "<p>Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.</p>"
    },
    "SourceDetail": {
      "type": "structure",
      "members": {
        "EventSource": {
          "shape": "EventSource",
          "documentation": "<p>The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWS resources.</p>"
        },
        "MessageType": {
          "shape": "MessageType",
          "documentation": "<p>The type of notification that triggers AWS Config to run an evaluation for a rule. You can specify the following notification types:</p> <ul> <li> <p> <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change.</p> </li> <li> <p> <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p> </li> <li> <p> <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p> </li> <li> <p> <code>ConfigurationSnapshotDeliveryCompleted</code> - Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.</p> </li> </ul> <p>If you want your custom rule to be triggered by configuration changes, specify two SourceDetail objects, one for <code>ConfigurationItemChangeNotification</code> and one for <code>OversizedConfigurationItemChangeNotification</code>.</p>"
        },
        "MaximumExecutionFrequency": {
          "shape": "MaximumExecutionFrequency",
          "documentation": "<p>The frequency at which you want AWS Config to run evaluations for a custom rule with a periodic trigger. If you specify a value for <code>MaximumExecutionFrequency</code>, then <code>MessageType</code> must use the <code>ScheduledNotification</code> value.</p> <note> <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid value for the <code>MaximumExecutionFrequency</code> parameter.</p> <p>Based on the valid value you choose, AWS Config runs evaluations once for each valid value. For example, if you choose <code>Three_Hours</code>, AWS Config runs evaluations once every three hours. In this case, <code>Three_Hours</code> is the frequency of this rule. </p> </note>"
        }
      },
      "documentation": "<p>Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for <code>SourceDetail</code> only for custom rules. </p>"
    },
    "SourceDetails": {
      "type": "list",
      "member": {
        "shape": "SourceDetail"
      },
      "max": 25,
      "min": 0
    },
    "SsmControls": {
      "type": "structure",
      "members": {
        "ConcurrentExecutionRatePercentage": {
          "shape": "Percentage",
          "documentation": "<p>The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10. </p>"
        },
        "ErrorPercentage": {
          "shape": "Percentage",
          "documentation": "<p>The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received. </p>"
        }
      },
      "documentation": "<p>AWS Systems Manager (SSM) specific remediation controls.</p>"
    },
    "StackArn": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "StartConfigRulesEvaluationRequest": {
      "type": "structure",
      "members": {
        "ConfigRuleNames": {
          "shape": "ReevaluateConfigRuleNames",
          "documentation": "<p>The list of names of AWS Config rules that you want to run evaluations for.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartConfigRulesEvaluationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>The output when you start the evaluation for the specified AWS Config rule.</p>"
    },
    "StartConfigurationRecorderRequest": {
      "type": "structure",
      "required": [
        "ConfigurationRecorderName"
      ],
      "members": {
        "ConfigurationRecorderName": {
          "shape": "RecorderName",
          "documentation": "<p>The name of the recorder object that records each configuration change made to the resources.</p>"
        }
      },
      "documentation": "<p>The input for the <a>StartConfigurationRecorder</a> action.</p>"
    },
    "StartRemediationExecutionRequest": {
      "type": "structure",
      "required": [
        "ConfigRuleName",
        "ResourceKeys"
      ],
      "members": {
        "ConfigRuleName": {
          "shape": "ConfigRuleName",
          "documentation": "<p>The list of names of AWS Config rules that you want to run remediation execution for.</p>"
        },
        "ResourceKeys": {
          "shape": "ResourceKeys",
          "documentation": "<p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>"
        }
      }
    },
    "StartRemediationExecutionResponse": {
      "type": "structure",
      "members": {
        "FailureMessage": {
          "shape": "String",
          "documentation": "<p>Returns a failure message. For example, the resource is already compliant.</p>"
        },
        "FailedItems": {
          "shape": "ResourceKeys",
          "documentation": "<p>For resources that have failed to start execution, the API returns a resource key object.</p>"
        }
      }
    },
    "StaticParameterValues": {
      "type": "list",
      "member": {
        "shape": "StringWithCharLimit256"
      },
      "max": 25,
      "min": 0
    },
    "StaticValue": {
      "type": "structure",
      "required": [
        "Values"
      ],
      "members": {
        "Values": {
          "shape": "StaticParameterValues",
          "documentation": "<p>A list of values. For example, the ARN of the assumed role. </p>"
        }
      },
      "documentation": "<p>The static value of the resource.</p>"
    },
    "StatusDetailFilters": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The 12-digit account ID of the member account within an organization.</p>"
        },
        "MemberAccountRuleStatus": {
          "shape": "MemberAccountRuleStatus",
          "documentation": "<p>Indicates deployment status for config rule in the member account. When master account calls <code>PutOrganizationConfigRule</code> action for the first time, config rule status is created in the member account. When master account calls <code>PutOrganizationConfigRule</code> action for the second time, config rule status is updated in the member account. Config rule status is deleted when the master account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. </p> <p>AWS Config sets the state of the rule to:</p> <ul> <li> <p> <code>CREATE_SUCCESSFUL</code> when config rule has been created in the member account.</p> </li> <li> <p> <code>CREATE_IN_PROGRESS</code> when config rule is being created in the member account.</p> </li> <li> <p> <code>CREATE_FAILED</code> when config rule creation has failed in the member account.</p> </li> <li> <p> <code>DELETE_FAILED</code> when config rule deletion has failed in the member account.</p> </li> <li> <p> <code>DELETE_IN_PROGRESS</code> when config rule is being deleted in the member account.</p> </li> <li> <p> <code>DELETE_SUCCESSFUL</code> when config rule has been deleted in the member account.</p> </li> <li> <p> <code>UPDATE_SUCCESSFUL</code> when config rule has been updated in the member account.</p> </li> <li> <p> <code>UPDATE_IN_PROGRESS</code> when config rule is being updated in the member account.</p> </li> <li> <p> <code>UPDATE_FAILED</code> when config rule deletion has failed in the member account.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Status filter object to filter results based on specific member account ID or status type for an organization config rule. </p>"
    },
    "StopConfigurationRecorderRequest": {
      "type": "structure",
      "required": [
        "ConfigurationRecorderName"
      ],
      "members": {
        "ConfigurationRecorderName": {
          "shape": "RecorderName",
          "documentation": "<p>The name of the recorder object that records each configuration change made to the resources.</p>"
        }
      },
      "documentation": "<p>The input for the <a>StopConfigurationRecorder</a> action.</p>"
    },
    "String": {
      "type": "string"
    },
    "StringWithCharLimit1024": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "StringWithCharLimit128": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "StringWithCharLimit2048": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "StringWithCharLimit256": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "StringWithCharLimit256Min0": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "StringWithCharLimit64": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "StringWithCharLimit768": {
      "type": "string",
      "max": 768,
      "min": 1
    },
    "SupplementaryConfiguration": {
      "type": "map",
      "key": {
        "shape": "SupplementaryConfigurationName"
      },
      "value": {
        "shape": "SupplementaryConfigurationValue"
      }
    },
    "SupplementaryConfigurationName": {
      "type": "string"
    },
    "SupplementaryConfigurationValue": {
      "type": "string"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>"
        }
      },
      "documentation": "<p>The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
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
      },
      "max": 50,
      "min": 1
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An array of tag object.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Tags": {
      "type": "map",
      "key": {
        "shape": "Name"
      },
      "value": {
        "shape": "Value"
      }
    },
    "TagsList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 0
    },
    "TemplateBody": {
      "type": "string",
      "max": 51200,
      "min": 1
    },
    "TemplateS3Uri": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "s3://.*"
    },
    "UnprocessedResourceIdentifierList": {
      "type": "list",
      "member": {
        "shape": "AggregateResourceIdentifier"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags to be removed.</p>"
        }
      }
    },
    "Value": {
      "type": "string"
    },
    "Version": {
      "type": "string"
    }
  },
  "documentation": "<fullname>AWS Config</fullname> <p>AWS Config provides a way to keep track of the configurations of all the AWS resources associated with your AWS account. You can use AWS Config to get the current and historical configurations of each AWS resource and also to get information about the relationship between the resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by AWS Config, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources\">Supported AWS Resources</a>.</p> <p>You can access and manage AWS Config through the AWS Management Console, the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS Config. This reference guide contains documentation for the AWS Config API and the AWS CLI commands that you can use to manage AWS Config. The AWS Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>. For detailed information about AWS Config features and their associated actions or commands, as well as how to work with AWS Management Console, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html\">What Is AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>"
}
]===]))