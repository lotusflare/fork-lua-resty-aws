local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-05-13",
    "endpointPrefix": "runtime.sagemaker",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon SageMaker Runtime",
    "serviceId": "SageMaker Runtime",
    "signatureVersion": "v4",
    "signingName": "sagemaker",
    "uid": "runtime.sagemaker-2017-05-13"
  },
  "operations": {
    "InvokeEndpoint": {
      "name": "InvokeEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/endpoints/{EndpointName}/invocations"
      },
      "input": {
        "shape": "InvokeEndpointInput"
      },
      "output": {
        "shape": "InvokeEndpointOutput"
      },
      "errors": [
        {
          "shape": "InternalFailure"
        },
        {
          "shape": "ServiceUnavailable"
        },
        {
          "shape": "ValidationError"
        },
        {
          "shape": "ModelError"
        }
      ],
      "documentation": "<p>After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint. </p> <p>For an overview of Amazon SageMaker, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html\">How It Works</a>. </p> <p>Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax. </p> <p>Calls to <code>InvokeEndpoint</code> are authenticated by using AWS Signature Version 4. For information, see <a href=\"http://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html\">Authenticating Requests (AWS Signature Version 4)</a> in the <i>Amazon S3 API Reference</i>.</p> <p>A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to the /invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds.</p> <note> <p>Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller.</p> </note>"
    }
  },
  "shapes": {
    "BodyBlob": {
      "type": "blob",
      "max": 6291456,
      "sensitive": true
    },
    "CustomAttributesHeader": {
      "type": "string",
      "max": 1024,
      "pattern": "\\p{ASCII}*",
      "sensitive": true
    },
    "EndpointName": {
      "type": "string",
      "max": 63,
      "pattern": "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"
    },
    "Header": {
      "type": "string",
      "max": 1024,
      "pattern": "\\p{ASCII}*"
    },
    "InvokeEndpointInput": {
      "type": "structure",
      "required": [
        "EndpointName",
        "Body"
      ],
      "members": {
        "EndpointName": {
          "shape": "EndpointName",
          "documentation": "<p>The name of the endpoint that you specified when you created the endpoint using the <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html\">CreateEndpoint</a> API. </p>",
          "location": "uri",
          "locationName": "EndpointName"
        },
        "Body": {
          "shape": "BodyBlob",
          "documentation": "<p>Provides input data, in the format specified in the <code>ContentType</code> request header. Amazon SageMaker passes all of the data in the body to the model. </p> <p>For information about the format of the request body, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html\">Common Data Formats-Inference</a>.</p>"
        },
        "ContentType": {
          "shape": "Header",
          "documentation": "<p>The MIME type of the input data in the request body.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "Accept": {
          "shape": "Header",
          "documentation": "<p>The desired MIME type of the inference in the response.</p>",
          "location": "header",
          "locationName": "Accept"
        },
        "CustomAttributes": {
          "shape": "CustomAttributesHeader",
          "documentation": "<p>Provides additional information about a request for an inference submitted to a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to provide an ID that you can use to track a request or to provide other metadata that a service endpoint was programmed to process. The value must consist of no more than 1024 visible US-ASCII characters as specified in <a href=\"https://tools.ietf.org/html/rfc7230#section-3.2.6\">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.</p>",
          "location": "header",
          "locationName": "X-Amzn-SageMaker-Custom-Attributes"
        },
        "TargetModel": {
          "shape": "TargetModelHeader",
          "documentation": "<p>The model to request for inference when invoking a multi-model endpoint. </p>",
          "location": "header",
          "locationName": "X-Amzn-SageMaker-Target-Model"
        },
        "TargetVariant": {
          "shape": "TargetVariantHeader",
          "documentation": "<p>Specify the production variant to send the inference request to when invoking an endpoint that is running two or more variants. Note that this parameter overrides the default behavior for the endpoint, which is to distribute the invocation traffic based on the variant weights.</p>",
          "location": "header",
          "locationName": "X-Amzn-SageMaker-Target-Variant"
        }
      },
      "payload": "Body"
    },
    "InvokeEndpointOutput": {
      "type": "structure",
      "required": [
        "Body"
      ],
      "members": {
        "Body": {
          "shape": "BodyBlob",
          "documentation": "<p>Includes the inference provided by the model.</p> <p>For information about the format of the response body, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html\">Common Data Formats-Inference</a>.</p>"
        },
        "ContentType": {
          "shape": "Header",
          "documentation": "<p>The MIME type of the inference returned in the response body.</p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "InvokedProductionVariant": {
          "shape": "Header",
          "documentation": "<p>Identifies the production variant that was invoked.</p>",
          "location": "header",
          "locationName": "x-Amzn-Invoked-Production-Variant"
        },
        "CustomAttributes": {
          "shape": "CustomAttributesHeader",
          "documentation": "<p>Provides additional information in the response about the inference returned by a model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is forwarded verbatim. You could use this value, for example, to return an ID received in the <code>CustomAttributes</code> header of a request or other metadata that a service endpoint was programmed to produce. The value must consist of no more than 1024 visible US-ASCII characters as specified in <a href=\"https://tools.ietf.org/html/rfc7230#section-3.2.6\">Section 3.3.6. Field Value Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer wants the custom attribute returned, the model must set the custom attribute to be included on the way back. </p> <p>This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python SDK.</p>",
          "location": "header",
          "locationName": "X-Amzn-SageMaker-Custom-Attributes"
        }
      },
      "payload": "Body"
    },
    "TargetModelHeader": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "\\A\\S[\\p{Print}]*\\z"
    },
    "TargetVariantHeader": {
      "type": "string",
      "max": 63,
      "pattern": "^[a-zA-Z0-9](-*[a-zA-Z0-9])*"
    }
  },
  "documentation": "<p> The Amazon SageMaker runtime API. </p>"
}
]===]))
