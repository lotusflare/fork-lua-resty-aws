local decode = require("cjson").new().decode
return assert(decode([===[
{
  "rules": {
    "*/*": {
      "endpoint": "{service}.{region}.amazonaws.com"
    },
    "cn-*/*": {
      "endpoint": "{service}.{region}.amazonaws.com.cn"
    },
    "us-iso-*/*": {
      "endpoint": "{service}.{region}.c2s.ic.gov"
    },
    "us-isob-*/*": {
      "endpoint": "{service}.{region}.sc2s.sgov.gov"
    },
    "*/budgets": "globalSSL",
    "*/cloudfront": "globalSSL",
    "*/sts": "globalSSL",
    "*/importexport": {
      "endpoint": "{service}.amazonaws.com",
      "signatureVersion": "v2",
      "globalEndpoint": true
    },

    "*/route53": "globalSSL",
    "cn-*/route53": {
      "endpoint": "{service}.amazonaws.com.cn",
      "globalEndpoint": true,
      "signingRegion": "cn-northwest-1"
    },
    "us-gov-*/route53": "globalGovCloud",

    "*/waf": "globalSSL",

    "*/iam": "globalSSL",
    "cn-*/iam": {
      "endpoint": "{service}.cn-north-1.amazonaws.com.cn",
      "globalEndpoint": true,
      "signingRegion": "cn-north-1"
    },
    "us-gov-*/iam": "globalGovCloud",

    "us-gov-*/sts": {
      "endpoint": "{service}.{region}.amazonaws.com"
    },
    "us-gov-west-1/s3": "s3signature",
    "us-west-1/s3": "s3signature",
    "us-west-2/s3": "s3signature",
    "eu-west-1/s3": "s3signature",
    "ap-southeast-1/s3": "s3signature",
    "ap-southeast-2/s3": "s3signature",
    "ap-northeast-1/s3": "s3signature",
    "sa-east-1/s3": "s3signature",
    "us-east-1/s3": {
      "endpoint": "{service}.amazonaws.com",
      "signatureVersion": "s3"
    },
    "us-east-1/sdb": {
      "endpoint": "{service}.amazonaws.com",
      "signatureVersion": "v2"
    },
    "*/sdb": {
      "endpoint": "{service}.{region}.amazonaws.com",
      "signatureVersion": "v2"
    }
  },

  "patterns": {
    "globalSSL": {
      "endpoint": "https://{service}.amazonaws.com",
      "globalEndpoint": true,
      "signingRegion": "us-east-1"
    },
    "globalGovCloud": {
      "endpoint": "{service}.us-gov.amazonaws.com",
      "globalEndpoint": true,
      "signingRegion": "us-gov-west-1"
    },
    "s3signature": {
      "endpoint": "{service}.{region}.amazonaws.com",
      "signatureVersion": "s3"
    }
  }
}

]===]))
