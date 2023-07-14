local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-06-28",
    "endpointPrefix": "savingsplans",
    "globalEndpoint": "savingsplans.amazonaws.com",
    "jsonVersion": "1.0",
    "protocol": "rest-json",
    "serviceAbbreviation": "AWSSavingsPlans",
    "serviceFullName": "AWS Savings Plans",
    "serviceId": "savingsplans",
    "signatureVersion": "v4",
    "uid": "savingsplans-2019-06-28"
  },
  "operations": {
    "CreateSavingsPlan": {
      "name": "CreateSavingsPlan",
      "http": {
        "method": "POST",
        "requestUri": "/CreateSavingsPlan"
      },
      "input": {
        "shape": "CreateSavingsPlanRequest"
      },
      "output": {
        "shape": "CreateSavingsPlanResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p>Creates a Savings Plan.</p>"
    },
    "DescribeSavingsPlanRates": {
      "name": "DescribeSavingsPlanRates",
      "http": {
        "method": "POST",
        "requestUri": "/DescribeSavingsPlanRates"
      },
      "input": {
        "shape": "DescribeSavingsPlanRatesRequest"
      },
      "output": {
        "shape": "DescribeSavingsPlanRatesResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Describes the specified Savings Plans rates.</p>"
    },
    "DescribeSavingsPlans": {
      "name": "DescribeSavingsPlans",
      "http": {
        "method": "POST",
        "requestUri": "/DescribeSavingsPlans"
      },
      "input": {
        "shape": "DescribeSavingsPlansRequest"
      },
      "output": {
        "shape": "DescribeSavingsPlansResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Describes the specified Savings Plans.</p>"
    },
    "DescribeSavingsPlansOfferingRates": {
      "name": "DescribeSavingsPlansOfferingRates",
      "http": {
        "method": "POST",
        "requestUri": "/DescribeSavingsPlansOfferingRates"
      },
      "input": {
        "shape": "DescribeSavingsPlansOfferingRatesRequest"
      },
      "output": {
        "shape": "DescribeSavingsPlansOfferingRatesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the specified Savings Plans offering rates.</p>"
    },
    "DescribeSavingsPlansOfferings": {
      "name": "DescribeSavingsPlansOfferings",
      "http": {
        "method": "POST",
        "requestUri": "/DescribeSavingsPlansOfferings"
      },
      "input": {
        "shape": "DescribeSavingsPlansOfferingsRequest"
      },
      "output": {
        "shape": "DescribeSavingsPlansOfferingsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the specified Savings Plans offerings.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/ListTagsForResource"
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
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the tags for the specified resource.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/TagResource"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Adds the specified tags to the specified resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/UntagResource"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Removes the specified tags from the specified resource.</p>"
    }
  },
  "shapes": {
    "Amount": {
      "type": "string"
    },
    "ClientToken": {
      "type": "string"
    },
    "CreateSavingsPlanRequest": {
      "type": "structure",
      "required": [
        "savingsPlanOfferingId",
        "commitment"
      ],
      "members": {
        "savingsPlanOfferingId": {
          "shape": "SavingsPlanOfferingId",
          "documentation": "<p>The ID of the offering.</p>"
        },
        "commitment": {
          "shape": "Amount",
          "documentation": "<p>The hourly commitment, in USD. This is a value between 0.001 and 1 million. You cannot specify more than three digits after the decimal point.</p>"
        },
        "upfrontPaymentAmount": {
          "shape": "Amount",
          "documentation": "<p>The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan. This parameter is supported only if the payment option is <code>Partial Upfront</code>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>One or more tags.</p>"
        }
      }
    },
    "CreateSavingsPlanResponse": {
      "type": "structure",
      "members": {
        "savingsPlanId": {
          "shape": "SavingsPlanId",
          "documentation": "<p>The ID of the Savings Plan.</p>"
        }
      }
    },
    "CurrencyCode": {
      "type": "string",
      "enum": [
        "CNY",
        "USD"
      ]
    },
    "CurrencyList": {
      "type": "list",
      "member": {
        "shape": "CurrencyCode"
      }
    },
    "DescribeSavingsPlanRatesRequest": {
      "type": "structure",
      "required": [
        "savingsPlanId"
      ],
      "members": {
        "savingsPlanId": {
          "shape": "SavingsPlanId",
          "documentation": "<p>The ID of the Savings Plan.</p>"
        },
        "filters": {
          "shape": "SavingsPlanRateFilterList",
          "documentation": "<p>The filters.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next page of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.</p>"
        }
      }
    },
    "DescribeSavingsPlanRatesResponse": {
      "type": "structure",
      "members": {
        "savingsPlanId": {
          "shape": "SavingsPlanId",
          "documentation": "<p>The ID of the Savings Plan.</p>"
        },
        "searchResults": {
          "shape": "SavingsPlanRateList",
          "documentation": "<p>Information about the Savings Plans rates.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DescribeSavingsPlansOfferingRatesRequest": {
      "type": "structure",
      "members": {
        "savingsPlanOfferingIds": {
          "shape": "UUIDs",
          "documentation": "<p>The IDs of the offerings.</p>"
        },
        "savingsPlanPaymentOptions": {
          "shape": "SavingsPlanPaymentOptionList",
          "documentation": "<p>The payment options.</p>"
        },
        "savingsPlanTypes": {
          "shape": "SavingsPlanTypeList",
          "documentation": "<p>The plan types.</p>"
        },
        "products": {
          "shape": "SavingsPlanProductTypeList",
          "documentation": "<p>The AWS products.</p>"
        },
        "serviceCodes": {
          "shape": "SavingsPlanRateServiceCodeList",
          "documentation": "<p>The services.</p>"
        },
        "usageTypes": {
          "shape": "SavingsPlanRateUsageTypeList",
          "documentation": "<p>The usage details of the line item in the billing report.</p>"
        },
        "operations": {
          "shape": "SavingsPlanRateOperationList",
          "documentation": "<p>The specific AWS operation for the line item in the billing report.</p>"
        },
        "filters": {
          "shape": "SavingsPlanOfferingRateFiltersList",
          "documentation": "<p>The filters.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next page of results.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.</p>"
        }
      }
    },
    "DescribeSavingsPlansOfferingRatesResponse": {
      "type": "structure",
      "members": {
        "searchResults": {
          "shape": "SavingsPlanOfferingRatesList",
          "documentation": "<p>Information about the Savings Plans offering rates.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DescribeSavingsPlansOfferingsRequest": {
      "type": "structure",
      "members": {
        "offeringIds": {
          "shape": "UUIDs",
          "documentation": "<p>The IDs of the offerings.</p>"
        },
        "paymentOptions": {
          "shape": "SavingsPlanPaymentOptionList",
          "documentation": "<p>The payment options.</p>"
        },
        "productType": {
          "shape": "SavingsPlanProductType",
          "documentation": "<p>The product type.</p>"
        },
        "planTypes": {
          "shape": "SavingsPlanTypeList",
          "documentation": "<p>The plan type.</p>"
        },
        "durations": {
          "shape": "DurationsList",
          "documentation": "<p>The durations, in seconds.</p>"
        },
        "currencies": {
          "shape": "CurrencyList",
          "documentation": "<p>The currencies.</p>"
        },
        "descriptions": {
          "shape": "SavingsPlanDescriptionsList",
          "documentation": "<p>The descriptions.</p>"
        },
        "serviceCodes": {
          "shape": "SavingsPlanServiceCodeList",
          "documentation": "<p>The services.</p>"
        },
        "usageTypes": {
          "shape": "SavingsPlanUsageTypeList",
          "documentation": "<p>The usage details of the line item in the billing report.</p>"
        },
        "operations": {
          "shape": "SavingsPlanOperationList",
          "documentation": "<p>The specific AWS operation for the line item in the billing report.</p>"
        },
        "filters": {
          "shape": "SavingsPlanOfferingFiltersList",
          "documentation": "<p>The filters.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next page of results.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.</p>"
        }
      }
    },
    "DescribeSavingsPlansOfferingsResponse": {
      "type": "structure",
      "members": {
        "searchResults": {
          "shape": "SavingsPlanOfferingsList",
          "documentation": "<p>Information about the Savings Plans offerings.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DescribeSavingsPlansRequest": {
      "type": "structure",
      "members": {
        "savingsPlanArns": {
          "shape": "SavingsPlanArnList",
          "documentation": "<p>The Amazon Resource Names (ARN) of the Savings Plans.</p>"
        },
        "savingsPlanIds": {
          "shape": "SavingsPlanIdList",
          "documentation": "<p>The IDs of the Savings Plans.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next page of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve additional results, make another call with the returned token value.</p>"
        },
        "states": {
          "shape": "SavingsPlanStateList",
          "documentation": "<p>The states.</p>"
        },
        "filters": {
          "shape": "SavingsPlanFilterList",
          "documentation": "<p>The filters.</p>"
        }
      }
    },
    "DescribeSavingsPlansResponse": {
      "type": "structure",
      "members": {
        "savingsPlans": {
          "shape": "SavingsPlanList",
          "documentation": "<p>Information about the Savings Plans.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DurationsList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlansDuration"
      }
    },
    "EC2InstanceFamily": {
      "type": "string"
    },
    "FilterValuesList": {
      "type": "list",
      "member": {
        "shape": "JsonSafeFilterValueString"
      }
    },
    "JsonSafeFilterValueString": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_ \\/.\\:\\-\\(\\)]+$"
    },
    "ListOfStrings": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "SavingsPlanArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>Information about the tags.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "PageSize": {
      "type": "integer",
      "max": 1000,
      "min": 0
    },
    "PaginationToken": {
      "type": "string",
      "max": 1024,
      "pattern": "^[A-Za-z0-9/=\\+]+$"
    },
    "ParentSavingsPlanOffering": {
      "type": "structure",
      "members": {
        "offeringId": {
          "shape": "UUID",
          "documentation": "<p>The ID of the offering.</p>"
        },
        "paymentOption": {
          "shape": "SavingsPlanPaymentOption",
          "documentation": "<p>The payment option.</p>"
        },
        "planType": {
          "shape": "SavingsPlanType",
          "documentation": "<p>The plan type.</p>"
        },
        "durationSeconds": {
          "shape": "SavingsPlansDuration",
          "documentation": "<p>The duration, in seconds.</p>"
        },
        "currency": {
          "shape": "CurrencyCode",
          "documentation": "<p>The currency.</p>"
        },
        "planDescription": {
          "shape": "SavingsPlanDescription",
          "documentation": "<p>The description.</p>"
        }
      },
      "documentation": "<p>Information about a Savings Plan offering.</p>"
    },
    "Region": {
      "type": "string"
    },
    "SavingsPlan": {
      "type": "structure",
      "members": {
        "offeringId": {
          "shape": "SavingsPlanOfferingId",
          "documentation": "<p>The ID of the offering.</p>"
        },
        "savingsPlanId": {
          "shape": "SavingsPlanId",
          "documentation": "<p>The ID of the Savings Plan.</p>"
        },
        "savingsPlanArn": {
          "shape": "SavingsPlanArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Savings Plan.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The description.</p>"
        },
        "start": {
          "shape": "String",
          "documentation": "<p>The start time.</p>"
        },
        "end": {
          "shape": "String",
          "documentation": "<p>The end time.</p>"
        },
        "state": {
          "shape": "SavingsPlanState",
          "documentation": "<p>The state.</p>"
        },
        "region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region.</p>"
        },
        "ec2InstanceFamily": {
          "shape": "EC2InstanceFamily",
          "documentation": "<p>The EC2 instance family.</p>"
        },
        "savingsPlanType": {
          "shape": "SavingsPlanType",
          "documentation": "<p>The plan type.</p>"
        },
        "paymentOption": {
          "shape": "SavingsPlanPaymentOption",
          "documentation": "<p>The payment option.</p>"
        },
        "productTypes": {
          "shape": "SavingsPlanProductTypeList",
          "documentation": "<p>The product types.</p>"
        },
        "currency": {
          "shape": "CurrencyCode",
          "documentation": "<p>The currency.</p>"
        },
        "commitment": {
          "shape": "Amount",
          "documentation": "<p>The hourly commitment, in USD.</p>"
        },
        "upfrontPaymentAmount": {
          "shape": "Amount",
          "documentation": "<p>The up-front payment amount.</p>"
        },
        "recurringPaymentAmount": {
          "shape": "Amount",
          "documentation": "<p>The recurring payment amount.</p>"
        },
        "termDurationInSeconds": {
          "shape": "TermDurationInSeconds",
          "documentation": "<p>The duration of the term, in seconds.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>One or more tags.</p>"
        }
      },
      "documentation": "<p>Information about a Savings Plan.</p>"
    },
    "SavingsPlanArn": {
      "type": "string",
      "pattern": "arn:aws:[a-z]+:([a-z]{2}-[a-z]+-\\d{1}|):(\\d{12}):savingsplan\\/([0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12})$"
    },
    "SavingsPlanArnList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanArn"
      },
      "max": 100
    },
    "SavingsPlanDescription": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_\\- ]+$"
    },
    "SavingsPlanDescriptionsList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanDescription"
      }
    },
    "SavingsPlanFilter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SavingsPlansFilterName",
          "documentation": "<p>The filter name.</p>"
        },
        "values": {
          "shape": "ListOfStrings",
          "documentation": "<p>The filter value.</p>"
        }
      },
      "documentation": "<p>Information about a filter.</p>"
    },
    "SavingsPlanFilterList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanFilter"
      }
    },
    "SavingsPlanId": {
      "type": "string"
    },
    "SavingsPlanIdList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanId"
      }
    },
    "SavingsPlanList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlan"
      }
    },
    "SavingsPlanOffering": {
      "type": "structure",
      "members": {
        "offeringId": {
          "shape": "UUID",
          "documentation": "<p>The ID of the offering.</p>"
        },
        "productTypes": {
          "shape": "SavingsPlanProductTypeList",
          "documentation": "<p>The product type.</p>"
        },
        "planType": {
          "shape": "SavingsPlanType",
          "documentation": "<p>The plan type.</p>"
        },
        "description": {
          "shape": "SavingsPlanDescription",
          "documentation": "<p>The description.</p>"
        },
        "paymentOption": {
          "shape": "SavingsPlanPaymentOption",
          "documentation": "<p>The payment option.</p>"
        },
        "durationSeconds": {
          "shape": "SavingsPlansDuration",
          "documentation": "<p>The duration, in seconds.</p>"
        },
        "currency": {
          "shape": "CurrencyCode",
          "documentation": "<p>The currency.</p>"
        },
        "serviceCode": {
          "shape": "SavingsPlanServiceCode",
          "documentation": "<p>The service.</p>"
        },
        "usageType": {
          "shape": "SavingsPlanUsageType",
          "documentation": "<p>The usage details of the line item in the billing report.</p>"
        },
        "operation": {
          "shape": "SavingsPlanOperation",
          "documentation": "<p>The specific AWS operation for the line item in the billing report.</p>"
        },
        "properties": {
          "shape": "SavingsPlanOfferingPropertyList",
          "documentation": "<p>The properties.</p>"
        }
      },
      "documentation": "<p>Information about a Savings Plan offering.</p>"
    },
    "SavingsPlanOfferingFilterAttribute": {
      "type": "string",
      "enum": [
        "region",
        "instanceFamily"
      ]
    },
    "SavingsPlanOfferingFilterElement": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SavingsPlanOfferingFilterAttribute",
          "documentation": "<p>The filter name.</p>"
        },
        "values": {
          "shape": "FilterValuesList",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>Information about a filter.</p>"
    },
    "SavingsPlanOfferingFiltersList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOfferingFilterElement"
      }
    },
    "SavingsPlanOfferingId": {
      "type": "string"
    },
    "SavingsPlanOfferingProperty": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SavingsPlanOfferingPropertyKey",
          "documentation": "<p>The property name.</p>"
        },
        "value": {
          "shape": "JsonSafeFilterValueString",
          "documentation": "<p>The property value.</p>"
        }
      },
      "documentation": "<p>Information about a property.</p>"
    },
    "SavingsPlanOfferingPropertyKey": {
      "type": "string",
      "enum": [
        "region",
        "instanceFamily"
      ]
    },
    "SavingsPlanOfferingPropertyList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOfferingProperty"
      }
    },
    "SavingsPlanOfferingRate": {
      "type": "structure",
      "members": {
        "savingsPlanOffering": {
          "shape": "ParentSavingsPlanOffering",
          "documentation": "<p>The Savings Plan offering.</p>"
        },
        "rate": {
          "shape": "SavingsPlanRatePricePerUnit",
          "documentation": "<p>The Savings Plan rate.</p>"
        },
        "unit": {
          "shape": "SavingsPlanRateUnit",
          "documentation": "<p>The unit.</p>"
        },
        "productType": {
          "shape": "SavingsPlanProductType",
          "documentation": "<p>The product type.</p>"
        },
        "serviceCode": {
          "shape": "SavingsPlanRateServiceCode",
          "documentation": "<p>The service.</p>"
        },
        "usageType": {
          "shape": "SavingsPlanRateUsageType",
          "documentation": "<p>The usage details of the line item in the billing report.</p>"
        },
        "operation": {
          "shape": "SavingsPlanRateOperation",
          "documentation": "<p>The specific AWS operation for the line item in the billing report.</p>"
        },
        "properties": {
          "shape": "SavingsPlanOfferingRatePropertyList",
          "documentation": "<p>The properties.</p>"
        }
      },
      "documentation": "<p>Information about a Savings Plan offering rate.</p>"
    },
    "SavingsPlanOfferingRateFilterElement": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SavingsPlanRateFilterAttribute",
          "documentation": "<p>The filter name.</p>"
        },
        "values": {
          "shape": "FilterValuesList",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>Information about a filter.</p>"
    },
    "SavingsPlanOfferingRateFiltersList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOfferingRateFilterElement"
      }
    },
    "SavingsPlanOfferingRateProperty": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "JsonSafeFilterValueString",
          "documentation": "<p>The property name.</p>"
        },
        "value": {
          "shape": "JsonSafeFilterValueString",
          "documentation": "<p>The property value.</p>"
        }
      },
      "documentation": "<p>Information about a property.</p>"
    },
    "SavingsPlanOfferingRatePropertyList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOfferingRateProperty"
      }
    },
    "SavingsPlanOfferingRatesList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOfferingRate"
      }
    },
    "SavingsPlanOfferingsList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOffering"
      }
    },
    "SavingsPlanOperation": {
      "type": "string",
      "max": 255,
      "pattern": "^[a-zA-Z0-9_ \\/.:-]*$"
    },
    "SavingsPlanOperationList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanOperation"
      }
    },
    "SavingsPlanPaymentOption": {
      "type": "string",
      "enum": [
        "All Upfront",
        "Partial Upfront",
        "No Upfront"
      ]
    },
    "SavingsPlanPaymentOptionList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanPaymentOption"
      }
    },
    "SavingsPlanProductType": {
      "type": "string",
      "enum": [
        "EC2",
        "Fargate",
        "Lambda"
      ]
    },
    "SavingsPlanProductTypeList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanProductType"
      }
    },
    "SavingsPlanRate": {
      "type": "structure",
      "members": {
        "rate": {
          "shape": "Amount",
          "documentation": "<p>The rate.</p>"
        },
        "currency": {
          "shape": "CurrencyCode",
          "documentation": "<p>The currency.</p>"
        },
        "unit": {
          "shape": "SavingsPlanRateUnit",
          "documentation": "<p>The unit.</p>"
        },
        "productType": {
          "shape": "SavingsPlanProductType",
          "documentation": "<p>The product type.</p>"
        },
        "serviceCode": {
          "shape": "SavingsPlanRateServiceCode",
          "documentation": "<p>The service.</p>"
        },
        "usageType": {
          "shape": "SavingsPlanRateUsageType",
          "documentation": "<p>The usage details of the line item in the billing report.</p>"
        },
        "operation": {
          "shape": "SavingsPlanRateOperation",
          "documentation": "<p>The specific AWS operation for the line item in the billing report.</p>"
        },
        "properties": {
          "shape": "SavingsPlanRatePropertyList",
          "documentation": "<p>The properties.</p>"
        }
      },
      "documentation": "<p>Information about a Savings Plan rate.</p>"
    },
    "SavingsPlanRateFilter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SavingsPlanRateFilterName",
          "documentation": "<p>The filter name.</p>"
        },
        "values": {
          "shape": "ListOfStrings",
          "documentation": "<p>The filter values.</p>"
        }
      },
      "documentation": "<p>Information about a filter.</p>"
    },
    "SavingsPlanRateFilterAttribute": {
      "type": "string",
      "enum": [
        "region",
        "instanceFamily",
        "instanceType",
        "productDescription",
        "tenancy",
        "productId"
      ]
    },
    "SavingsPlanRateFilterList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanRateFilter"
      }
    },
    "SavingsPlanRateFilterName": {
      "type": "string",
      "enum": [
        "region",
        "instanceType",
        "productDescription",
        "tenancy",
        "productType",
        "serviceCode",
        "usageType",
        "operation"
      ]
    },
    "SavingsPlanRateList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanRate"
      }
    },
    "SavingsPlanRateOperation": {
      "type": "string",
      "max": 255,
      "pattern": "^[a-zA-Z0-9_ \\/.:-]*$"
    },
    "SavingsPlanRateOperationList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanRateOperation"
      }
    },
    "SavingsPlanRatePricePerUnit": {
      "type": "string"
    },
    "SavingsPlanRateProperty": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SavingsPlanRatePropertyKey",
          "documentation": "<p>The property name.</p>"
        },
        "value": {
          "shape": "JsonSafeFilterValueString",
          "documentation": "<p>The property value.</p>"
        }
      },
      "documentation": "<p>Information about a property.</p>"
    },
    "SavingsPlanRatePropertyKey": {
      "type": "string",
      "enum": [
        "region",
        "instanceType",
        "instanceFamily",
        "productDescription",
        "tenancy"
      ]
    },
    "SavingsPlanRatePropertyList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanRateProperty"
      }
    },
    "SavingsPlanRateServiceCode": {
      "type": "string",
      "enum": [
        "AmazonEC2",
        "AmazonECS",
        "AmazonEKS",
        "AWSLambda"
      ]
    },
    "SavingsPlanRateServiceCodeList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanRateServiceCode"
      }
    },
    "SavingsPlanRateUnit": {
      "type": "string",
      "enum": [
        "Hrs",
        "Lambda-GB-Second",
        "Request"
      ]
    },
    "SavingsPlanRateUsageType": {
      "type": "string",
      "max": 255,
      "pattern": "^[a-zA-Z0-9_ \\/.:-]+$"
    },
    "SavingsPlanRateUsageTypeList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanRateUsageType"
      }
    },
    "SavingsPlanServiceCode": {
      "type": "string",
      "max": 255,
      "pattern": "^[a-zA-Z]+$"
    },
    "SavingsPlanServiceCodeList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanServiceCode"
      }
    },
    "SavingsPlanState": {
      "type": "string",
      "enum": [
        "payment-pending",
        "payment-failed",
        "active",
        "retired"
      ]
    },
    "SavingsPlanStateList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanState"
      }
    },
    "SavingsPlanType": {
      "type": "string",
      "enum": [
        "Compute",
        "EC2Instance"
      ]
    },
    "SavingsPlanTypeList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanType"
      }
    },
    "SavingsPlanUsageType": {
      "type": "string",
      "max": 255,
      "pattern": "^[a-zA-Z0-9_ \\/.:-]+$"
    },
    "SavingsPlanUsageTypeList": {
      "type": "list",
      "member": {
        "shape": "SavingsPlanUsageType"
      }
    },
    "SavingsPlansDuration": {
      "type": "long",
      "min": 0
    },
    "SavingsPlansFilterName": {
      "type": "string",
      "enum": [
        "region",
        "ec2-instance-family",
        "commitment",
        "upfront",
        "term",
        "savings-plan-type",
        "payment-option",
        "start",
        "end"
      ]
    },
    "String": {
      "type": "string"
    },
    "TagKey": {
      "type": "string"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
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
          "shape": "SavingsPlanArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>One or more tags. For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string"
    },
    "TermDurationInSeconds": {
      "type": "long"
    },
    "UUID": {
      "type": "string",
      "pattern": "^(([0-9a-f]+)(-?))+$"
    },
    "UUIDs": {
      "type": "list",
      "member": {
        "shape": "UUID"
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
          "shape": "SavingsPlanArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<p>Savings Plans are a pricing model that offer significant savings on AWS usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For more information, see the <a href=\"https://docs.aws.amazon.com/savingsplans/latest/userguide/\">AWS Savings Plans User Guide</a>.</p>"
}
]===]))
