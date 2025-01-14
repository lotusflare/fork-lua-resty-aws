local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-08-08",
    "endpointPrefix": "globalaccelerator",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Global Accelerator",
    "serviceId": "Global Accelerator",
    "signatureVersion": "v4",
    "signingName": "globalaccelerator",
    "targetPrefix": "GlobalAccelerator_V20180706",
    "uid": "globalaccelerator-2018-08-08"
  },
  "operations": {
    "AdvertiseByoipCidr": {
      "name": "AdvertiseByoipCidr",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AdvertiseByoipCidrRequest"
      },
      "output": {
        "shape": "AdvertiseByoipCidrResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ByoipCidrNotFoundException"
        },
        {
          "shape": "IncorrectCidrStateException"
        }
      ],
      "documentation": "<p>Advertises an IPv4 address range that is provisioned for use with your AWS resources through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to the specified addresses starts routing to AWS because of propagation delays. To see an AWS CLI example of advertising an address range, scroll down to <b>Example</b>.</p> <p>To stop advertising the BYOIP address range, use <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html\"> WithdrawByoipCidr</a>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
    },
    "CreateAccelerator": {
      "name": "CreateAccelerator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAcceleratorRequest"
      },
      "output": {
        "shape": "CreateAcceleratorResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. To see an AWS CLI example of creating an accelerator, scroll down to <b>Example</b>.</p> <p>If you bring your own IP address ranges to AWS Global Accelerator (BYOIP), you can assign IP addresses from your own pool to your accelerator as the static IP address entry points. Only one IP address from each of your IP address ranges can be used for each accelerator.</p> <important> <p>You must specify the US West (Oregon) Region to create or update accelerators.</p> </important>"
    },
    "CreateEndpointGroup": {
      "name": "CreateEndpointGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEndpointGroupRequest"
      },
      "output": {
        "shape": "CreateEndpointGroupResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "EndpointGroupAlreadyExistsException"
        },
        {
          "shape": "ListenerNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one AWS Region. To see an AWS CLI example of creating an endpoint group, scroll down to <b>Example</b>.</p>"
    },
    "CreateListener": {
      "name": "CreateListener",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateListenerRequest"
      },
      "output": {
        "shape": "CreateListenerResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InvalidPortRangeException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static IP addresses on a port, port range, or list of port ranges that you specify. To see an AWS CLI example of creating a listener, scroll down to <b>Example</b>.</p>"
    },
    "DeleteAccelerator": {
      "name": "DeleteAccelerator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAcceleratorRequest"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "AcceleratorNotDisabledException"
        },
        {
          "shape": "AssociatedListenerFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups). To disable the accelerator, update the accelerator to set <code>Enabled</code> to false.</p> <important> <p>When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges. </p> <p>The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you <i>delete</i> an accelerator, you lose the static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them. As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html\">Authentication and Access Control</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p> </important>"
    },
    "DeleteEndpointGroup": {
      "name": "DeleteEndpointGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEndpointGroupRequest"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "EndpointGroupNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Delete an endpoint group from a listener.</p>"
    },
    "DeleteListener": {
      "name": "DeleteListener",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteListenerRequest"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ListenerNotFoundException"
        },
        {
          "shape": "AssociatedEndpointGroupFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Delete a listener from an accelerator.</p>"
    },
    "DeprovisionByoipCidr": {
      "name": "DeprovisionByoipCidr",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeprovisionByoipCidrRequest"
      },
      "output": {
        "shape": "DeprovisionByoipCidrResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ByoipCidrNotFoundException"
        },
        {
          "shape": "IncorrectCidrStateException"
        }
      ],
      "documentation": "<p>Releases the specified address range that you provisioned to use with your AWS resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. To see an AWS CLI example of deprovisioning an address range, scroll down to <b>Example</b>.</p> <p>Before you can release an address range, you must stop advertising it by using <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html\">WithdrawByoipCidr</a> and you must not have any accelerators that are using static IP addresses allocated from its address range. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
    },
    "DescribeAccelerator": {
      "name": "DescribeAccelerator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAcceleratorRequest"
      },
      "output": {
        "shape": "DescribeAcceleratorResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Describe an accelerator. To see an AWS CLI example of describing an accelerator, scroll down to <b>Example</b>.</p>"
    },
    "DescribeAcceleratorAttributes": {
      "name": "DescribeAcceleratorAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAcceleratorAttributesRequest"
      },
      "output": {
        "shape": "DescribeAcceleratorAttributesResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Describe the attributes of an accelerator. To see an AWS CLI example of describing the attributes of an accelerator, scroll down to <b>Example</b>.</p>"
    },
    "DescribeEndpointGroup": {
      "name": "DescribeEndpointGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEndpointGroupRequest"
      },
      "output": {
        "shape": "DescribeEndpointGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "EndpointGroupNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Describe an endpoint group. To see an AWS CLI example of describing an endpoint group, scroll down to <b>Example</b>.</p>"
    },
    "DescribeListener": {
      "name": "DescribeListener",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeListenerRequest"
      },
      "output": {
        "shape": "DescribeListenerResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ListenerNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Describe a listener. To see an AWS CLI example of describing a listener, scroll down to <b>Example</b>.</p>"
    },
    "ListAccelerators": {
      "name": "ListAccelerators",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAcceleratorsRequest"
      },
      "output": {
        "shape": "ListAcceleratorsResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>List the accelerators for an AWS account. To see an AWS CLI example of listing the accelerators for an AWS account, scroll down to <b>Example</b>.</p>"
    },
    "ListByoipCidrs": {
      "name": "ListByoipCidrs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListByoipCidrsRequest"
      },
      "output": {
        "shape": "ListByoipCidrsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists the IP address ranges that were specified in calls to <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html\">ProvisionByoipCidr</a>, including the current state and a history of state changes.</p> <p>To see an AWS CLI example of listing BYOIP CIDR addresses, scroll down to <b>Example</b>.</p>"
    },
    "ListEndpointGroups": {
      "name": "ListEndpointGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEndpointGroupsRequest"
      },
      "output": {
        "shape": "ListEndpointGroupsResponse"
      },
      "errors": [
        {
          "shape": "ListenerNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>List the endpoint groups that are associated with a listener. To see an AWS CLI example of listing the endpoint groups for listener, scroll down to <b>Example</b>.</p>"
    },
    "ListListeners": {
      "name": "ListListeners",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListListenersRequest"
      },
      "output": {
        "shape": "ListListenersResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>List the listeners for an accelerator. To see an AWS CLI example of listing the listeners for an accelerator, scroll down to <b>Example</b>.</p>"
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
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>List all tags for an accelerator. To see an AWS CLI example of listing tags for an accelerator, scroll down to <b>Example</b>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>. </p>"
    },
    "ProvisionByoipCidr": {
      "name": "ProvisionByoipCidr",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ProvisionByoipCidrRequest"
      },
      "output": {
        "shape": "ProvisionByoipCidrResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "IncorrectCidrStateException"
        }
      ],
      "documentation": "<p>Provisions an IP address range to use with your AWS resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, it is ready to be advertised using <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html\"> AdvertiseByoipCidr</a>.</p> <p>To see an AWS CLI example of provisioning an address range for BYOIP, scroll down to <b>Example</b>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
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
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Add tags to an accelerator resource. To see an AWS CLI example of adding tags to an accelerator, scroll down to <b>Example</b>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>. </p>"
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
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value. To see an AWS CLI example of removing tags from an accelerator, scroll down to <b>Example</b>. The operation succeeds even if you attempt to remove tags from an accelerator that was already removed.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
    },
    "UpdateAccelerator": {
      "name": "UpdateAccelerator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAcceleratorRequest"
      },
      "output": {
        "shape": "UpdateAcceleratorResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Update an accelerator. To see an AWS CLI example of updating an accelerator, scroll down to <b>Example</b>.</p> <important> <p>You must specify the US West (Oregon) Region to create or update accelerators.</p> </important>"
    },
    "UpdateAcceleratorAttributes": {
      "name": "UpdateAcceleratorAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAcceleratorAttributesRequest"
      },
      "output": {
        "shape": "UpdateAcceleratorAttributesResponse"
      },
      "errors": [
        {
          "shape": "AcceleratorNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Update the attributes for an accelerator. To see an AWS CLI example of updating an accelerator to enable flow logs, scroll down to <b>Example</b>.</p>"
    },
    "UpdateEndpointGroup": {
      "name": "UpdateEndpointGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateEndpointGroupRequest"
      },
      "output": {
        "shape": "UpdateEndpointGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "EndpointGroupNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Update an endpoint group. To see an AWS CLI example of updating an endpoint group, scroll down to <b>Example</b>.</p>"
    },
    "UpdateListener": {
      "name": "UpdateListener",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateListenerRequest"
      },
      "output": {
        "shape": "UpdateListenerResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidPortRangeException"
        },
        {
          "shape": "ListenerNotFoundException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Update a listener. To see an AWS CLI example of updating listener, scroll down to <b>Example</b>.</p>"
    },
    "WithdrawByoipCidr": {
      "name": "WithdrawByoipCidr",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "WithdrawByoipCidrRequest"
      },
      "output": {
        "shape": "WithdrawByoipCidrResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ByoipCidrNotFoundException"
        },
        {
          "shape": "IncorrectCidrStateException"
        }
      ],
      "documentation": "<p>Stops advertising an address range that is provisioned as an address pool. You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time. To see an AWS CLI example of withdrawing an address range for BYOIP so it will no longer be advertised by AWS, scroll down to <b>Example</b>.</p> <p>It can take a few minutes before traffic to the specified addresses stops routing to AWS because of propagation delays.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
    }
  },
  "shapes": {
    "Accelerator": {
      "type": "structure",
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator.</p>"
        },
        "Name": {
          "shape": "GenericString",
          "documentation": "<p>The name of the accelerator. The name must contain only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>"
        },
        "IpAddressType": {
          "shape": "IpAddressType",
          "documentation": "<p>The value for the address type must be IPv4. </p>"
        },
        "Enabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p> <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>"
        },
        "IpSets": {
          "shape": "IpSets",
          "documentation": "<p>The static IP addresses that Global Accelerator associates with the accelerator.</p>"
        },
        "DnsName": {
          "shape": "GenericString",
          "documentation": "<p>The Domain Name System (DNS) name that Global Accelerator creates that points to your accelerator's static IP addresses. </p> <p>The naming convention for the DNS name is the following: A lowercase letter a, followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example: a1234567890abcdef.awsglobalaccelerator.com.</p> <p>For more information about the default DNS name, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing\"> Support for DNS Addressing in Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        },
        "Status": {
          "shape": "AcceleratorStatus",
          "documentation": "<p>Describes the deployment status of the accelerator.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the accelerator was created.</p>"
        },
        "LastModifiedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the accelerator was last modified.</p>"
        }
      },
      "documentation": "<p>An accelerator is a complex type that includes one or more listeners that process inbound connections and then direct traffic to one or more endpoint groups, each of which includes endpoints, such as load balancers.</p>"
    },
    "AcceleratorAttributes": {
      "type": "structure",
      "members": {
        "FlowLogsEnabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Indicates whether flow logs are enabled. The default value is false. If the value is true, <code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        },
        "FlowLogsS3Bucket": {
          "shape": "GenericString",
          "documentation": "<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is <code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the bucket.</p>"
        },
        "FlowLogsS3Prefix": {
          "shape": "GenericString",
          "documentation": "<p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is <code>true</code>.</p> <p>If you don’t specify a prefix, the flow logs are stored in the root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p> <p>s3-bucket_name//AWSLogs/aws_account_id</p>"
        }
      },
      "documentation": "<p>Attributes of an accelerator.</p>"
    },
    "AcceleratorStatus": {
      "type": "string",
      "enum": [
        "DEPLOYED",
        "IN_PROGRESS"
      ]
    },
    "Accelerators": {
      "type": "list",
      "member": {
        "shape": "Accelerator"
      }
    },
    "AdvertiseByoipCidrRequest": {
      "type": "structure",
      "required": [
        "Cidr"
      ],
      "members": {
        "Cidr": {
          "shape": "GenericString",
          "documentation": "<p>The address range, in CIDR notation. This must be the exact range that you provisioned. You can't advertise only a portion of the provisioned range.</p>"
        }
      }
    },
    "AdvertiseByoipCidrResponse": {
      "type": "structure",
      "members": {
        "ByoipCidr": {
          "shape": "ByoipCidr",
          "documentation": "<p>Information about the address range.</p>"
        }
      }
    },
    "ByoipCidr": {
      "type": "structure",
      "members": {
        "Cidr": {
          "shape": "GenericString",
          "documentation": "<p>The address range, in CIDR notation.</p>"
        },
        "State": {
          "shape": "ByoipCidrState",
          "documentation": "<p>The state of the address pool.</p>"
        },
        "Events": {
          "shape": "ByoipCidrEvents",
          "documentation": "<p>A history of status changes for an IP address range that that you bring to AWS Global Accelerator through bring your own IP address (BYOIP).</p>"
        }
      },
      "documentation": "<p>Information about an IP address range that is provisioned for use with your AWS resources through bring your own IP address (BYOIP).</p> <p>The following describes each BYOIP <code>State</code> that your IP address range can be in.</p> <ul> <li> <p> <b>PENDING_PROVISIONING</b> — You’ve submitted a request to provision an IP address range but it is not yet provisioned with AWS Global Accelerator.</p> </li> <li> <p> <b>READY</b> — The address range is provisioned with AWS Global Accelerator and can be advertised.</p> </li> <li> <p> <b>PENDING_ADVERTISING</b> — You’ve submitted a request for AWS Global Accelerator to advertise an address range but it is not yet being advertised.</p> </li> <li> <p> <b>ADVERTISING</b> — The address range is being advertised by AWS Global Accelerator.</p> </li> <li> <p> <b>PENDING_WITHDRAWING</b> — You’ve submitted a request to withdraw an address range from being advertised but it is still being advertised by AWS Global Accelerator.</p> </li> <li> <p> <b>PENDING_DEPROVISIONING</b> — You’ve submitted a request to deprovision an address range from AWS Global Accelerator but it is still provisioned.</p> </li> <li> <p> <b>DEPROVISIONED</b> — The address range is deprovisioned from AWS Global Accelerator.</p> </li> <li> <p> <b>FAILED_PROVISION </b> — The request to provision the address range from AWS Global Accelerator was not successful. Please make sure that you provide all of the correct information, and try again. If the request fails a second time, contact AWS support.</p> </li> <li> <p> <b>FAILED_ADVERTISING</b> — The request for AWS Global Accelerator to advertise the address range was not successful. Please make sure that you provide all of the correct information, and try again. If the request fails a second time, contact AWS support.</p> </li> <li> <p> <b>FAILED_WITHDRAW</b> — The request to withdraw the address range from advertising by AWS Global Accelerator was not successful. Please make sure that you provide all of the correct information, and try again. If the request fails a second time, contact AWS support.</p> </li> <li> <p> <b>FAILED_DEPROVISION </b> — The request to deprovision the address range from AWS Global Accelerator was not successful. Please make sure that you provide all of the correct information, and try again. If the request fails a second time, contact AWS support.</p> </li> </ul>"
    },
    "ByoipCidrEvent": {
      "type": "structure",
      "members": {
        "Message": {
          "shape": "GenericString",
          "documentation": "<p>A string that contains an <code>Event</code> message describing changes that you make in the status of an IP address range that you bring to AWS Global Accelerator through bring your own IP address (BYOIP).</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp when you make a status change for an IP address range that you bring to AWS Global Accelerator through bring your own IP address (BYOIP).</p>"
        }
      },
      "documentation": "<p>A complex type that contains a <code>Message</code> and a <code>Timestamp</code> value for changes that you make in the status an IP address range that you bring to AWS Global Accelerator through bring your own IP address (BYOIP).</p>"
    },
    "ByoipCidrEvents": {
      "type": "list",
      "member": {
        "shape": "ByoipCidrEvent"
      }
    },
    "ByoipCidrState": {
      "type": "string",
      "enum": [
        "PENDING_PROVISIONING",
        "READY",
        "PENDING_ADVERTISING",
        "ADVERTISING",
        "PENDING_WITHDRAWING",
        "PENDING_DEPROVISIONING",
        "DEPROVISIONED",
        "FAILED_PROVISION",
        "FAILED_ADVERTISING",
        "FAILED_WITHDRAW",
        "FAILED_DEPROVISION"
      ]
    },
    "ByoipCidrs": {
      "type": "list",
      "member": {
        "shape": "ByoipCidr"
      }
    },
    "CidrAuthorizationContext": {
      "type": "structure",
      "required": [
        "Message",
        "Signature"
      ],
      "members": {
        "Message": {
          "shape": "GenericString",
          "documentation": "<p>The plain-text authorization message for the prefix and account.</p>"
        },
        "Signature": {
          "shape": "GenericString",
          "documentation": "<p>The signed authorization message for the prefix and account.</p>"
        }
      },
      "documentation": "<p>Provides authorization for Amazon to bring a specific IP address range to a specific AWS account using bring your own IP addresses (BYOIP). </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
    },
    "ClientAffinity": {
      "type": "string",
      "enum": [
        "NONE",
        "SOURCE_IP"
      ]
    },
    "CreateAcceleratorRequest": {
      "type": "structure",
      "required": [
        "Name",
        "IdempotencyToken"
      ],
      "members": {
        "Name": {
          "shape": "GenericString",
          "documentation": "<p>The name of an accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>"
        },
        "IpAddressType": {
          "shape": "IpAddressType",
          "documentation": "<p>The value for the address type must be IPv4. </p>"
        },
        "IpAddresses": {
          "shape": "IpAddresses",
          "documentation": "<p>Optionally, if you've added your own IP address pool to Global Accelerator, you can choose IP addresses from your own pool to use for the accelerator's static IP addresses. You can specify one or two addresses, separated by a comma. Do not include the /32 suffix.</p> <p>If you specify only one IP address from your IP address range, Global Accelerator assigns a second static IP address for the accelerator from the AWS IP address pool.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        },
        "Enabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p> <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the uniqueness—of an accelerator.</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Create tags for an accelerator.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html\">Tagging in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        }
      }
    },
    "CreateAcceleratorResponse": {
      "type": "structure",
      "members": {
        "Accelerator": {
          "shape": "Accelerator",
          "documentation": "<p>The accelerator that is created by specifying a listener and the supported IP address types.</p>"
        }
      }
    },
    "CreateEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "ListenerArn",
        "EndpointGroupRegion",
        "IdempotencyToken"
      ],
      "members": {
        "ListenerArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the listener.</p>"
        },
        "EndpointGroupRegion": {
          "shape": "GenericString",
          "documentation": "<p>The name of the AWS Region where the endpoint group is located. A listener can have only one endpoint group in a specific Region.</p>"
        },
        "EndpointConfigurations": {
          "shape": "EndpointConfigurations",
          "documentation": "<p>The list of endpoint objects.</p>"
        },
        "TrafficDialPercentage": {
          "shape": "TrafficDialPercentage",
          "documentation": "<p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. </p> <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p> <p>The default value is 100.</p>"
        },
        "HealthCheckPort": {
          "shape": "HealthCheckPort",
          "documentation": "<p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.</p>"
        },
        "HealthCheckProtocol": {
          "shape": "HealthCheckProtocol",
          "documentation": "<p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.</p>"
        },
        "HealthCheckPath": {
          "shape": "GenericString",
          "documentation": "<p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (/).</p>"
        },
        "HealthCheckIntervalSeconds": {
          "shape": "HealthCheckIntervalSeconds",
          "documentation": "<p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>"
        },
        "ThresholdCount": {
          "shape": "ThresholdCount",
          "documentation": "<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the uniqueness—of the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateEndpointGroupResponse": {
      "type": "structure",
      "members": {
        "EndpointGroup": {
          "shape": "EndpointGroup",
          "documentation": "<p>The information about the endpoint group that was created.</p>"
        }
      }
    },
    "CreateListenerRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn",
        "PortRanges",
        "Protocol",
        "IdempotencyToken"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of your accelerator.</p>"
        },
        "PortRanges": {
          "shape": "PortRanges",
          "documentation": "<p>The list of port ranges to support for connections from clients to your accelerator.</p>"
        },
        "Protocol": {
          "shape": "Protocol",
          "documentation": "<p>The protocol for connections from clients to your accelerator.</p>"
        },
        "ClientAffinity": {
          "shape": "ClientAffinity",
          "documentation": "<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications, regardless of the port and protocol of the client request. Clienty affinity gives you control over whether to always route each client to the same specific endpoint.</p> <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port, destination IP address, destination port, and protocol—to select the hash value, and then chooses the best endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not be always routed to the same endpoint because the hash value changes. </p> <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code> instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties— source (client) IP address and destination IP address—to select the hash value.</p> <p>The default value is <code>NONE</code>.</p>"
        },
        "IdempotencyToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the uniqueness—of the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateListenerResponse": {
      "type": "structure",
      "members": {
        "Listener": {
          "shape": "Listener",
          "documentation": "<p>The listener that you've created.</p>"
        }
      }
    },
    "DeleteAcceleratorRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of an accelerator.</p>"
        }
      }
    },
    "DeleteEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "EndpointGroupArn"
      ],
      "members": {
        "EndpointGroupArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>"
        }
      }
    },
    "DeleteListenerRequest": {
      "type": "structure",
      "required": [
        "ListenerArn"
      ],
      "members": {
        "ListenerArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the listener.</p>"
        }
      }
    },
    "DeprovisionByoipCidrRequest": {
      "type": "structure",
      "required": [
        "Cidr"
      ],
      "members": {
        "Cidr": {
          "shape": "GenericString",
          "documentation": "<p>The address range, in CIDR notation. The prefix must be the same prefix that you specified when you provisioned the address range.</p>"
        }
      }
    },
    "DeprovisionByoipCidrResponse": {
      "type": "structure",
      "members": {
        "ByoipCidr": {
          "shape": "ByoipCidr",
          "documentation": "<p>Information about the address range.</p>"
        }
      }
    },
    "DescribeAcceleratorAttributesRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>"
        }
      }
    },
    "DescribeAcceleratorAttributesResponse": {
      "type": "structure",
      "members": {
        "AcceleratorAttributes": {
          "shape": "AcceleratorAttributes",
          "documentation": "<p>The attributes of the accelerator.</p>"
        }
      }
    },
    "DescribeAcceleratorRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>"
        }
      }
    },
    "DescribeAcceleratorResponse": {
      "type": "structure",
      "members": {
        "Accelerator": {
          "shape": "Accelerator",
          "documentation": "<p>The description of the accelerator.</p>"
        }
      }
    },
    "DescribeEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "EndpointGroupArn"
      ],
      "members": {
        "EndpointGroupArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>"
        }
      }
    },
    "DescribeEndpointGroupResponse": {
      "type": "structure",
      "members": {
        "EndpointGroup": {
          "shape": "EndpointGroup",
          "documentation": "<p>The description of an endpoint group.</p>"
        }
      }
    },
    "DescribeListenerRequest": {
      "type": "structure",
      "required": [
        "ListenerArn"
      ],
      "members": {
        "ListenerArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the listener to describe.</p>"
        }
      }
    },
    "DescribeListenerResponse": {
      "type": "structure",
      "members": {
        "Listener": {
          "shape": "Listener",
          "documentation": "<p>The description of a listener.</p>"
        }
      }
    },
    "EndpointConfiguration": {
      "type": "structure",
      "members": {
        "EndpointId": {
          "shape": "GenericString",
          "documentation": "<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address allocation ID. For EC2 instances, this is the EC2 instance ID. </p> <p>An Application Load Balancer can be either internal or internet-facing.</p>"
        },
        "Weight": {
          "shape": "EndpointWeight",
          "documentation": "<p>The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html\">Endpoint Weights</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        },
        "ClientIPPreservationEnabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. The value is true or false. The default value is true for new accelerators. </p> <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as traffic travels to applications on the Application Load Balancer endpoint fronted by the accelerator.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html\"> Preserve Client IP Addresses in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type for endpoints.</p>"
    },
    "EndpointConfigurations": {
      "type": "list",
      "member": {
        "shape": "EndpointConfiguration"
      },
      "max": 10,
      "min": 0
    },
    "EndpointDescription": {
      "type": "structure",
      "members": {
        "EndpointId": {
          "shape": "GenericString",
          "documentation": "<p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address allocation ID. For EC2 instances, this is the EC2 instance ID. </p> <p>An Application Load Balancer can be either internal or internet-facing.</p>"
        },
        "Weight": {
          "shape": "EndpointWeight",
          "documentation": "<p>The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html\">Endpoint Weights</a> in the <i>AWS Global Accelerator Developer Guide</i>. </p>"
        },
        "HealthState": {
          "shape": "HealthState",
          "documentation": "<p>The health status of the endpoint.</p>"
        },
        "HealthReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason code associated with why the endpoint is not healthy. If the endpoint state is healthy, a reason code is not provided.</p> <p>If the endpoint state is <b>unhealthy</b>, the reason code can be one of the following values:</p> <ul> <li> <p> <b>Timeout</b>: The health check requests to the endpoint are timing out before returning a status.</p> </li> <li> <p> <b>Failed</b>: The health check failed, for example because the endpoint response was invalid (malformed).</p> </li> </ul> <p>If the endpoint state is <b>initial</b>, the reason code can be one of the following values:</p> <ul> <li> <p> <b>ProvisioningInProgress</b>: The endpoint is in the process of being provisioned.</p> </li> <li> <p> <b>InitialHealthChecking</b>: Global Accelerator is still setting up the minimum number of health checks for the endpoint that are required to determine its health status.</p> </li> </ul>"
        },
        "ClientIPPreservationEnabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. The value is true or false. The default value is true for new accelerators. </p> <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as traffic travels to applications on the Application Load Balancer endpoint fronted by the accelerator.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/introduction-how-it-works-client-ip.html\"> Viewing Client IP Addresses in AWS Global Accelerator</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type for an endpoint. Each endpoint group can include one or more endpoints, such as load balancers.</p>"
    },
    "EndpointDescriptions": {
      "type": "list",
      "member": {
        "shape": "EndpointDescription"
      }
    },
    "EndpointGroup": {
      "type": "structure",
      "members": {
        "EndpointGroupArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"
        },
        "EndpointGroupRegion": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Region that this endpoint group belongs.</p>"
        },
        "EndpointDescriptions": {
          "shape": "EndpointDescriptions",
          "documentation": "<p>The list of endpoint objects.</p>"
        },
        "TrafficDialPercentage": {
          "shape": "TrafficDialPercentage",
          "documentation": "<p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. </p> <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p> <p>The default value is 100.</p>"
        },
        "HealthCheckPort": {
          "shape": "HealthCheckPort",
          "documentation": "<p>The port that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. </p> <p>The default port is the port for the listener that this endpoint group is associated with. If the listener port is a list, Global Accelerator uses the first specified port in the list of ports.</p>"
        },
        "HealthCheckProtocol": {
          "shape": "HealthCheckProtocol",
          "documentation": "<p>The protocol that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. The default value is TCP.</p>"
        },
        "HealthCheckPath": {
          "shape": "GenericString",
          "documentation": "<p>If the protocol is HTTP/S, then this value provides the ping path that Global Accelerator uses for the destination on the endpoints for health checks. The default is slash (/).</p>"
        },
        "HealthCheckIntervalSeconds": {
          "shape": "HealthCheckIntervalSeconds",
          "documentation": "<p>The time—10 seconds or 30 seconds—between health checks for each endpoint. The default value is 30.</p>"
        },
        "ThresholdCount": {
          "shape": "ThresholdCount",
          "documentation": "<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.</p>"
        }
      },
      "documentation": "<p>A complex type for the endpoint group. An AWS Region can have only one endpoint group for a specific listener. </p>"
    },
    "EndpointGroups": {
      "type": "list",
      "member": {
        "shape": "EndpointGroup"
      }
    },
    "EndpointWeight": {
      "type": "integer",
      "max": 255,
      "min": 0
    },
    "GenericBoolean": {
      "type": "boolean"
    },
    "GenericString": {
      "type": "string",
      "max": 255
    },
    "HealthCheckIntervalSeconds": {
      "type": "integer",
      "max": 30,
      "min": 10
    },
    "HealthCheckPort": {
      "type": "integer",
      "max": 65535,
      "min": 1
    },
    "HealthCheckProtocol": {
      "type": "string",
      "enum": [
        "TCP",
        "HTTP",
        "HTTPS"
      ]
    },
    "HealthState": {
      "type": "string",
      "enum": [
        "INITIAL",
        "HEALTHY",
        "UNHEALTHY"
      ]
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 255
    },
    "IpAddress": {
      "type": "string"
    },
    "IpAddressType": {
      "type": "string",
      "enum": [
        "IPV4"
      ]
    },
    "IpAddresses": {
      "type": "list",
      "member": {
        "shape": "IpAddress"
      },
      "max": 2,
      "min": 0
    },
    "IpSet": {
      "type": "structure",
      "members": {
        "IpFamily": {
          "shape": "GenericString",
          "documentation": "<p>The types of IP addresses included in this IP set.</p>"
        },
        "IpAddresses": {
          "shape": "IpAddresses",
          "documentation": "<p>The array of IP addresses in the IP address set. An IP address set can have a maximum of two IP addresses.</p>"
        }
      },
      "documentation": "<p>A complex type for the set of IP addresses for an accelerator.</p>"
    },
    "IpSets": {
      "type": "list",
      "member": {
        "shape": "IpSet"
      }
    },
    "ListAcceleratorsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next set of results. You receive this token from a previous call.</p>"
        }
      }
    },
    "ListAcceleratorsResponse": {
      "type": "structure",
      "members": {
        "Accelerators": {
          "shape": "Accelerators",
          "documentation": "<p>The list of accelerators for a customer account.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next set of results. You receive this token from a previous call.</p>"
        }
      }
    },
    "ListByoipCidrsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "ListByoipCidrsResponse": {
      "type": "structure",
      "members": {
        "ByoipCidrs": {
          "shape": "ByoipCidrs",
          "documentation": "<p>Information about your address ranges.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next page of results.</p>"
        }
      }
    },
    "ListEndpointGroupsRequest": {
      "type": "structure",
      "required": [
        "ListenerArn"
      ],
      "members": {
        "ListenerArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the listener.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next set of results. You receive this token from a previous call.</p>"
        }
      }
    },
    "ListEndpointGroupsResponse": {
      "type": "structure",
      "members": {
        "EndpointGroups": {
          "shape": "EndpointGroups",
          "documentation": "<p>The list of the endpoint groups associated with a listener.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next set of results. You receive this token from a previous call.</p>"
        }
      }
    },
    "ListListenersRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of listener objects that you want to return with this call. The default value is 10.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next set of results. You receive this token from a previous call.</p>"
        }
      }
    },
    "ListListenersResponse": {
      "type": "structure",
      "members": {
        "Listeners": {
          "shape": "Listeners",
          "documentation": "<p>The list of listeners for an accelerator.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The token for the next set of results. You receive this token from a previous call.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Root level tag for the Tags parameters.</p>"
        }
      }
    },
    "Listener": {
      "type": "structure",
      "members": {
        "ListenerArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the listener.</p>"
        },
        "PortRanges": {
          "shape": "PortRanges",
          "documentation": "<p>The list of port ranges for the connections from clients to the accelerator.</p>"
        },
        "Protocol": {
          "shape": "Protocol",
          "documentation": "<p>The protocol for the connections from clients to the accelerator.</p>"
        },
        "ClientAffinity": {
          "shape": "ClientAffinity",
          "documentation": "<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications, regardless of the port and protocol of the client request. Clienty affinity gives you control over whether to always route each client to the same specific endpoint.</p> <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port, destination IP address, destination port, and protocol—to select the hash value, and then chooses the best endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not be always routed to the same endpoint because the hash value changes. </p> <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code> instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties— source (client) IP address and destination IP address—to select the hash value.</p> <p>The default value is <code>NONE</code>.</p>"
        }
      },
      "documentation": "<p>A complex type for a listener.</p>"
    },
    "Listeners": {
      "type": "list",
      "member": {
        "shape": "Listener"
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "PortNumber": {
      "type": "integer",
      "max": 65535,
      "min": 1
    },
    "PortRange": {
      "type": "structure",
      "members": {
        "FromPort": {
          "shape": "PortNumber",
          "documentation": "<p>The first port in the range of ports, inclusive.</p>"
        },
        "ToPort": {
          "shape": "PortNumber",
          "documentation": "<p>The last port in the range of ports, inclusive.</p>"
        }
      },
      "documentation": "<p>A complex type for a range of ports for a listener.</p>"
    },
    "PortRanges": {
      "type": "list",
      "member": {
        "shape": "PortRange"
      },
      "max": 10,
      "min": 1
    },
    "Protocol": {
      "type": "string",
      "enum": [
        "TCP",
        "UDP"
      ]
    },
    "ProvisionByoipCidrRequest": {
      "type": "structure",
      "required": [
        "Cidr",
        "CidrAuthorizationContext"
      ],
      "members": {
        "Cidr": {
          "shape": "GenericString",
          "documentation": "<p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can specify is /24. The address range cannot overlap with another address range that you've brought to this or another Region.</p>"
        },
        "CidrAuthorizationContext": {
          "shape": "CidrAuthorizationContext",
          "documentation": "<p>A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP. </p>"
        }
      }
    },
    "ProvisionByoipCidrResponse": {
      "type": "structure",
      "members": {
        "ByoipCidr": {
          "shape": "ByoipCidr",
          "documentation": "<p>Information about the address range.</p>"
        }
      }
    },
    "ResourceArn": {
      "type": "string",
      "max": 1011,
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
          "documentation": "<p>A string that contains a <code>Tag</code> key.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>A string that contains a <code>Tag</code> value.</p>"
        }
      },
      "documentation": "<p>A complex type that contains a <code>Tag</code> key and <code>Tag</code> value.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "ThresholdCount": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TrafficDialPercentage": {
      "type": "float",
      "max": 100,
      "min": 0
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The tag key pairs that you want to remove from the specified resources.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAcceleratorAttributesRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>"
        },
        "FlowLogsEnabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Update whether flow logs are enabled. The default value is false. If the value is true, <code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html\">Flow Logs</a> in the <i>AWS Global Accelerator Developer Guide</i>.</p>"
        },
        "FlowLogsS3Bucket": {
          "shape": "GenericString",
          "documentation": "<p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is <code>true</code>. The bucket must exist and have a bucket policy that grants AWS Global Accelerator permission to write to the bucket.</p>"
        },
        "FlowLogsS3Prefix": {
          "shape": "GenericString",
          "documentation": "<p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is <code>true</code>. </p> <p>If you don’t specify a prefix, the flow logs are stored in the root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p> <p>s3-bucket_name//AWSLogs/aws_account_id</p>"
        }
      }
    },
    "UpdateAcceleratorAttributesResponse": {
      "type": "structure",
      "members": {
        "AcceleratorAttributes": {
          "shape": "AcceleratorAttributes",
          "documentation": "<p>Updated attributes for the accelerator.</p>"
        }
      }
    },
    "UpdateAcceleratorRequest": {
      "type": "structure",
      "required": [
        "AcceleratorArn"
      ],
      "members": {
        "AcceleratorArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the accelerator to update.</p>"
        },
        "Name": {
          "shape": "GenericString",
          "documentation": "<p>The name of the accelerator. The name can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>"
        },
        "IpAddressType": {
          "shape": "IpAddressType",
          "documentation": "<p>The value for the address type must be IPv4. </p>"
        },
        "Enabled": {
          "shape": "GenericBoolean",
          "documentation": "<p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p> <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>"
        }
      }
    },
    "UpdateAcceleratorResponse": {
      "type": "structure",
      "members": {
        "Accelerator": {
          "shape": "Accelerator",
          "documentation": "<p>Information about the updated accelerator.</p>"
        }
      }
    },
    "UpdateEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "EndpointGroupArn"
      ],
      "members": {
        "EndpointGroupArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the endpoint group.</p>"
        },
        "EndpointConfigurations": {
          "shape": "EndpointConfigurations",
          "documentation": "<p>The list of endpoint objects.</p>"
        },
        "TrafficDialPercentage": {
          "shape": "TrafficDialPercentage",
          "documentation": "<p>The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. </p> <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p> <p>The default value is 100.</p>"
        },
        "HealthCheckPort": {
          "shape": "HealthCheckPort",
          "documentation": "<p>The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses the first port in the list.</p>"
        },
        "HealthCheckProtocol": {
          "shape": "HealthCheckProtocol",
          "documentation": "<p>The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.</p>"
        },
        "HealthCheckPath": {
          "shape": "GenericString",
          "documentation": "<p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (/).</p>"
        },
        "HealthCheckIntervalSeconds": {
          "shape": "HealthCheckIntervalSeconds",
          "documentation": "<p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>"
        },
        "ThresholdCount": {
          "shape": "ThresholdCount",
          "documentation": "<p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.</p>"
        }
      }
    },
    "UpdateEndpointGroupResponse": {
      "type": "structure",
      "members": {
        "EndpointGroup": {
          "shape": "EndpointGroup",
          "documentation": "<p>The information about the endpoint group that was updated.</p>"
        }
      }
    },
    "UpdateListenerRequest": {
      "type": "structure",
      "required": [
        "ListenerArn"
      ],
      "members": {
        "ListenerArn": {
          "shape": "GenericString",
          "documentation": "<p>The Amazon Resource Name (ARN) of the listener to update.</p>"
        },
        "PortRanges": {
          "shape": "PortRanges",
          "documentation": "<p>The updated list of port ranges for the connections from clients to the accelerator.</p>"
        },
        "Protocol": {
          "shape": "Protocol",
          "documentation": "<p>The updated protocol for the connections from clients to the accelerator.</p>"
        },
        "ClientAffinity": {
          "shape": "ClientAffinity",
          "documentation": "<p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications, regardless of the port and protocol of the client request. Clienty affinity gives you control over whether to always route each client to the same specific endpoint.</p> <p>AWS Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client affinity is <code>NONE</code>, Global Accelerator uses the \"five-tuple\" (5-tuple) properties—source IP address, source port, destination IP address, destination port, and protocol—to select the hash value, and then chooses the best endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not be always routed to the same endpoint because the hash value changes. </p> <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code> instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the \"two-tuple\" (2-tuple) properties— source (client) IP address and destination IP address—to select the hash value.</p> <p>The default value is <code>NONE</code>.</p>"
        }
      }
    },
    "UpdateListenerResponse": {
      "type": "structure",
      "members": {
        "Listener": {
          "shape": "Listener",
          "documentation": "<p>Information for the updated listener.</p>"
        }
      }
    },
    "WithdrawByoipCidrRequest": {
      "type": "structure",
      "required": [
        "Cidr"
      ],
      "members": {
        "Cidr": {
          "shape": "GenericString",
          "documentation": "<p>The address range, in CIDR notation.</p>"
        }
      }
    },
    "WithdrawByoipCidrResponse": {
      "type": "structure",
      "members": {
        "ByoipCidr": {
          "shape": "ByoipCidr",
          "documentation": "<p>Information about the address pool.</p>"
        }
      }
    }
  },
  "documentation": "<fullname>AWS Global Accelerator</fullname> <p>This is the <i>AWS Global Accelerator API Reference</i>. This guide is for developers who need detailed information about AWS Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html\">AWS Global Accelerator Developer Guide</a>. </p> <p>AWS Global Accelerator is a service in which you create accelerators to improve availability and performance of your applications for local and global users. </p> <important> <p>You must specify the US West (Oregon) Region to create or update accelerators.</p> </important> <p>By default, Global Accelerator provides you with static IP addresses that you associate with your accelerator. (Instead of using the IP addresses that Global Accelerator provides, you can configure these entry points to be IPv4 addresses from your own IP address ranges that you bring to Global Accelerator.) The static IP addresses are anycast from the AWS edge network and distribute incoming application traffic across multiple endpoint resources in multiple AWS Regions, which increases the availability of your applications. Endpoints can be Network Load Balancers, Application Load Balancers, EC2 instances, or Elastic IP addresses that are located in one AWS Region or multiple Regions.</p> <p>Global Accelerator uses the AWS global network to route traffic to the optimal regional endpoint based on health, client location, and policies that you configure. The service reacts instantly to changes in health or configuration to ensure that internet traffic from clients is directed to only healthy endpoints.</p> <p>Global Accelerator includes components that work together to help you improve performance and availability for your applications:</p> <dl> <dt>Static IP address</dt> <dd> <p>By default, AWS Global Accelerator provides you with a set of static IP addresses that are anycast from the AWS edge network and serve as the single fixed entry points for your clients. Or you can configure these entry points to be IPv4 addresses from your own IP address ranges that you bring to Global Accelerator (BYOIP). For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html\">Bring Your Own IP Addresses (BYOIP)</a> in the <i>AWS Global Accelerator Developer Guide</i>. If you already have load balancers, EC2 instances, or Elastic IP addresses set up for your applications, you can easily add those to Global Accelerator to allow the resources to be accessed by the static IP addresses.</p> <important> <p>The static IP addresses remain assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you <i>delete</i> an accelerator, you lose the static IP addresses that are assigned to it, so you can no longer route traffic by using them. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see <a href=\"https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html\">Authentication and Access Control</a> in the <i>AWS Global Accelerator Developer Guide</i>. </p> </important> </dd> <dt>Accelerator</dt> <dd> <p>An accelerator directs traffic to optimal endpoints over the AWS global network to improve availability and performance for your internet applications that have a global audience. Each accelerator includes one or more listeners.</p> </dd> <dt>DNS name</dt> <dd> <p>Global Accelerator assigns each accelerator a default Domain Name System (DNS) name, similar to <code>a1234567890abcdef.awsglobalaccelerator.com</code>, that points to your Global Accelerator static IP addresses. Depending on the use case, you can use your accelerator's static IP addresses or DNS name to route traffic to your accelerator, or set up DNS records to route traffic using your own custom domain name.</p> </dd> <dt>Network zone</dt> <dd> <p>A network zone services the static IP addresses for your accelerator from a unique IP subnet. Similar to an AWS Availability Zone, a network zone is an isolated unit with its own set of physical infrastructure. When you configure an accelerator, by default, Global Accelerator allocates two IPv4 addresses for it. If one IP address from a network zone becomes unavailable due to IP address blocking by certain client networks, or network disruptions, then client applications can retry on the healthy static IP address from the other isolated network zone.</p> </dd> <dt>Listener</dt> <dd> <p>A listener processes inbound connections from clients to Global Accelerator, based on the protocol and port that you configure. Each listener has one or more endpoint groups associated with it, and traffic is forwarded to endpoints in one of the groups. You associate endpoint groups with listeners by specifying the Regions that you want to distribute traffic to. Traffic is distributed to optimal endpoints within the endpoint groups associated with a listener.</p> </dd> <dt>Endpoint group</dt> <dd> <p>Each endpoint group is associated with a specific AWS Region. Endpoint groups include one or more endpoints in the Region. You can increase or reduce the percentage of traffic that would be otherwise directed to an endpoint group by adjusting a setting called a <i>traffic dial</i>. The traffic dial lets you easily do performance testing or blue/green deployment testing for new releases across different AWS Regions, for example. </p> </dd> <dt>Endpoint</dt> <dd> <p>An endpoint is a Network Load Balancer, Application Load Balancer, EC2 instance, or Elastic IP address. Traffic is routed to endpoints based on several factors, including the geo-proximity to the user, the health of the endpoint, and the configuration options that you choose, such as endpoint weights. For each endpoint, you can configure weights, which are numbers that you can use to specify the proportion of traffic to route to each one. This can be useful, for example, to do performance testing within a Region.</p> </dd> </dl>"
}
]===]))
