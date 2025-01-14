local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-07-25",
    "endpointPrefix": "api.elastic-inference",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Amazon Elastic Inference",
    "serviceFullName": "Amazon Elastic  Inference",
    "serviceId": "Elastic Inference",
    "signatureVersion": "v4",
    "signingName": "elastic-inference",
    "uid": "elastic-inference-2017-07-25"
  },
  "operations": {
    "DescribeAcceleratorOfferings": {
      "name": "DescribeAcceleratorOfferings",
      "http": {
        "method": "POST",
        "requestUri": "/describe-accelerator-offerings"
      },
      "input": {
        "shape": "DescribeAcceleratorOfferingsRequest"
      },
      "output": {
        "shape": "DescribeAcceleratorOfferingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Describes the locations in which a given accelerator type or set of types is present in a given region. </p>"
    },
    "DescribeAcceleratorTypes": {
      "name": "DescribeAcceleratorTypes",
      "http": {
        "method": "GET",
        "requestUri": "/describe-accelerator-types"
      },
      "input": {
        "shape": "DescribeAcceleratorTypesRequest"
      },
      "output": {
        "shape": "DescribeAcceleratorTypesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Describes the accelerator types available in a given region, as well as their characteristics, such as memory and throughput. </p>"
    },
    "DescribeAccelerators": {
      "name": "DescribeAccelerators",
      "http": {
        "method": "POST",
        "requestUri": "/describe-accelerators"
      },
      "input": {
        "shape": "DescribeAcceleratorsRequest"
      },
      "output": {
        "shape": "DescribeAcceleratorsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Describes information over a provided set of accelerators belonging to an account. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Returns all tags of an Elastic Inference Accelerator. </p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Adds the specified tags to an Elastic Inference Accelerator. </p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p> Removes the specified tags from an Elastic Inference Accelerator. </p>"
    }
  },
  "shapes": {
    "AcceleratorHealthStatus": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "AcceleratorId": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^eia-[0-9a-f]+$"
    },
    "AcceleratorIdList": {
      "type": "list",
      "member": {
        "shape": "AcceleratorId"
      },
      "max": 1000,
      "min": 0
    },
    "AcceleratorType": {
      "type": "structure",
      "members": {
        "acceleratorTypeName": {
          "shape": "AcceleratorTypeName",
          "documentation": "<p> The name of the Elastic Inference Accelerator type. </p>"
        },
        "memoryInfo": {
          "shape": "MemoryInfo",
          "documentation": "<p> The memory information of the Elastic Inference Accelerator type. </p>"
        },
        "throughputInfo": {
          "shape": "ThroughputInfoList",
          "documentation": "<p> The throughput information of the Elastic Inference Accelerator type. </p>"
        }
      },
      "documentation": "<p> The details of an Elastic Inference Accelerator type. </p>"
    },
    "AcceleratorTypeList": {
      "type": "list",
      "member": {
        "shape": "AcceleratorType"
      },
      "max": 100,
      "min": 0
    },
    "AcceleratorTypeName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^\\S+$"
    },
    "AcceleratorTypeNameList": {
      "type": "list",
      "member": {
        "shape": "AcceleratorTypeName"
      },
      "max": 100,
      "min": 0
    },
    "AcceleratorTypeOffering": {
      "type": "structure",
      "members": {
        "acceleratorType": {
          "shape": "AcceleratorTypeName",
          "documentation": "<p> The name of the Elastic Inference Accelerator type. </p>"
        },
        "locationType": {
          "shape": "LocationType",
          "documentation": "<p> The location type for the offering. It can assume the following values: region: defines that the offering is at the regional level. availability-zone: defines that the offering is at the availability zone level. availability-zone-id: defines that the offering is at the availability zone level, defined by the availability zone id. </p>"
        },
        "location": {
          "shape": "Location",
          "documentation": "<p> The location for the offering. It will return either the region, availability zone or availability zone id for the offering depending on the locationType value. </p>"
        }
      },
      "documentation": "<p> The offering for an Elastic Inference Accelerator type. </p>"
    },
    "AcceleratorTypeOfferingList": {
      "type": "list",
      "member": {
        "shape": "AcceleratorTypeOffering"
      },
      "max": 100,
      "min": 0
    },
    "AvailabilityZone": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DescribeAcceleratorOfferingsRequest": {
      "type": "structure",
      "required": [
        "locationType"
      ],
      "members": {
        "locationType": {
          "shape": "LocationType",
          "documentation": "<p> The location type that you want to describe accelerator type offerings for. It can assume the following values: region: will return the accelerator type offering at the regional level. availability-zone: will return the accelerator type offering at the availability zone level. availability-zone-id: will return the accelerator type offering at the availability zone level returning the availability zone id. </p>"
        },
        "acceleratorTypes": {
          "shape": "AcceleratorTypeNameList",
          "documentation": "<p> The list of accelerator types to describe. </p>"
        }
      }
    },
    "DescribeAcceleratorOfferingsResponse": {
      "type": "structure",
      "members": {
        "acceleratorTypeOfferings": {
          "shape": "AcceleratorTypeOfferingList",
          "documentation": "<p> The list of accelerator type offerings for a specific location. </p>"
        }
      }
    },
    "DescribeAcceleratorTypesRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeAcceleratorTypesResponse": {
      "type": "structure",
      "members": {
        "acceleratorTypes": {
          "shape": "AcceleratorTypeList",
          "documentation": "<p> The available accelerator types. </p>"
        }
      }
    },
    "DescribeAcceleratorsRequest": {
      "type": "structure",
      "members": {
        "acceleratorIds": {
          "shape": "AcceleratorIdList",
          "documentation": "<p> The IDs of the accelerators to describe. </p>"
        },
        "filters": {
          "shape": "FilterList",
          "documentation": "<p> One or more filters. Filter names and values are case-sensitive. Valid filter names are: accelerator-types: can provide a list of accelerator type names to filter for. instance-id: can provide a list of EC2 instance ids to filter for. </p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p> The total number of items to return in the command's output. If the total number of items available is more than the value specified, a NextToken is provided in the command's output. To resume pagination, provide the NextToken value in the starting-token argument of a subsequent command. Do not use the NextToken response element directly outside of the AWS CLI. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "DescribeAcceleratorsResponse": {
      "type": "structure",
      "members": {
        "acceleratorSet": {
          "shape": "ElasticInferenceAcceleratorSet",
          "documentation": "<p> The details of the Elastic Inference Accelerators. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p> A token to specify where to start paginating. This is the NextToken from a previously truncated response. </p>"
        }
      }
    },
    "ElasticInferenceAccelerator": {
      "type": "structure",
      "members": {
        "acceleratorHealth": {
          "shape": "ElasticInferenceAcceleratorHealth",
          "documentation": "<p> The health of the Elastic Inference Accelerator. </p>"
        },
        "acceleratorType": {
          "shape": "AcceleratorTypeName",
          "documentation": "<p> The type of the Elastic Inference Accelerator. </p>"
        },
        "acceleratorId": {
          "shape": "AcceleratorId",
          "documentation": "<p> The ID of the Elastic Inference Accelerator. </p>"
        },
        "availabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p> The availability zone where the Elastic Inference Accelerator is present. </p>"
        },
        "attachedResource": {
          "shape": "ResourceArn",
          "documentation": "<p> The ARN of the resource that the Elastic Inference Accelerator is attached to. </p>"
        }
      },
      "documentation": "<p> The details of an Elastic Inference Accelerator. </p>"
    },
    "ElasticInferenceAcceleratorHealth": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "AcceleratorHealthStatus",
          "documentation": "<p> The health status of the Elastic Inference Accelerator. </p>"
        }
      },
      "documentation": "<p> The health details of an Elastic Inference Accelerator. </p>"
    },
    "ElasticInferenceAcceleratorSet": {
      "type": "list",
      "member": {
        "shape": "ElasticInferenceAccelerator"
      }
    },
    "Filter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "FilterName",
          "documentation": "<p> The filter name for the Elastic Inference Accelerator list. It can assume the following values: accelerator-type: the type of Elastic Inference Accelerator to filter for. instance-id: an EC2 instance id to filter for. </p>"
        },
        "values": {
          "shape": "ValueStringList",
          "documentation": "<p> The values for the filter of the Elastic Inference Accelerator list. </p>"
        }
      },
      "documentation": "<p> A filter expression for the Elastic Inference Accelerator list. </p>"
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "Filter"
      },
      "max": 100,
      "min": 0
    },
    "FilterName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^\\S+$"
    },
    "Integer": {
      "type": "integer"
    },
    "Key": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^\\S+$"
    },
    "KeyValuePair": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "Key",
          "documentation": "<p> The throughput value of the Elastic Inference Accelerator type. It can assume the following values: TFLOPS16bit: the throughput expressed in 16bit TeraFLOPS. TFLOPS32bit: the throughput expressed in 32bit TeraFLOPS. </p>"
        },
        "value": {
          "shape": "Value",
          "documentation": "<p> The throughput value of the Elastic Inference Accelerator type. </p>"
        }
      },
      "documentation": "<p> A throughput entry for an Elastic Inference Accelerator type. </p>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceARN",
          "documentation": "<p> The ARN of the Elastic Inference Accelerator to list the tags for. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags of the Elastic Inference Accelerator. </p>"
        }
      }
    },
    "Location": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "LocationType": {
      "type": "string",
      "enum": [
        "region",
        "availability-zone",
        "availability-zone-id"
      ],
      "max": 256,
      "min": 1
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "MemoryInfo": {
      "type": "structure",
      "members": {
        "sizeInMiB": {
          "shape": "Integer",
          "documentation": "<p> The size in mebibytes of the Elastic Inference Accelerator type. </p>"
        }
      },
      "documentation": "<p> The memory information of an Elastic Inference Accelerator type. </p>"
    },
    "NextToken": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^[A-Za-z0-9+/]+={0,2}$"
    },
    "ResourceARN": {
      "type": "string",
      "max": 1011,
      "min": 1,
      "pattern": "^arn:aws\\S*:elastic-inference:\\S+:\\d{12}:elastic-inference-accelerator/eia-[0-9a-f]+$"
    },
    "ResourceArn": {
      "type": "string",
      "max": 1283,
      "min": 1
    },
    "String": {
      "type": "string",
      "max": 500000,
      "pattern": "^.*$"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^\\S$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceARN",
          "documentation": "<p> The ARN of the Elastic Inference Accelerator to tag. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags to add to the Elastic Inference Accelerator. </p>"
        }
      }
    },
    "TagResourceResult": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "ThroughputInfoList": {
      "type": "list",
      "member": {
        "shape": "KeyValuePair"
      },
      "max": 100,
      "min": 0
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceARN",
          "documentation": "<p> The ARN of the Elastic Inference Accelerator to untag. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p> The list of tags to remove from the Elastic Inference Accelerator. </p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResult": {
      "type": "structure",
      "members": {}
    },
    "Value": {
      "type": "integer"
    },
    "ValueStringList": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "max": 100,
      "min": 0
    }
  },
  "documentation": "<p> Elastic Inference public APIs. </p>"
}
]===]))
