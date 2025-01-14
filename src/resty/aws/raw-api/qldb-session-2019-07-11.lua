local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-07-11",
    "endpointPrefix": "session.qldb",
    "jsonVersion": "1.0",
    "protocol": "json",
    "serviceAbbreviation": "QLDB Session",
    "serviceFullName": "Amazon QLDB Session",
    "serviceId": "QLDB Session",
    "signatureVersion": "v4",
    "signingName": "qldb",
    "targetPrefix": "QLDBSession",
    "uid": "qldb-session-2019-07-11"
  },
  "operations": {
    "SendCommand": {
      "name": "SendCommand",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendCommandRequest"
      },
      "output": {
        "shape": "SendCommandResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InvalidSessionException"
        },
        {
          "shape": "OccConflictException"
        },
        {
          "shape": "RateExceededException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Sends a command to an Amazon QLDB ledger.</p> <note> <p>Instead of interacting directly with this API, we recommend that you use the Amazon QLDB Driver or the QLDB Shell to execute data transactions on a ledger.</p> <ul> <li> <p>If you are working with an AWS SDK, use the QLDB Driver. The driver provides a high-level abstraction layer above this <code>qldbsession</code> data plane and manages <code>SendCommand</code> API calls for you. For information and a list of supported programming languages, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html\">Getting started with the driver</a> in the <i>Amazon QLDB Developer Guide</i>.</p> </li> <li> <p>If you are working with the AWS Command Line Interface (AWS CLI), use the QLDB Shell. The shell is a command line interface that uses the QLDB Driver to interact with a ledger. For information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html\">Accessing Amazon QLDB using the QLDB Shell</a>.</p> </li> </ul> </note>"
    }
  },
  "shapes": {
    "AbortTransactionRequest": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the details of the transaction to abort.</p>"
    },
    "AbortTransactionResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the details of the aborted transaction.</p>"
    },
    "CommitDigest": {
      "type": "blob"
    },
    "CommitTransactionRequest": {
      "type": "structure",
      "required": [
        "TransactionId",
        "CommitDigest"
      ],
      "members": {
        "TransactionId": {
          "shape": "TransactionId",
          "documentation": "<p>Specifies the transaction ID of the transaction to commit.</p>"
        },
        "CommitDigest": {
          "shape": "CommitDigest",
          "documentation": "<p>Specifies the commit digest for the transaction to commit. For every active transaction, the commit digest must be passed. QLDB validates <code>CommitDigest</code> and rejects the commit with an error if the digest computed on the client does not match the digest computed by QLDB.</p>"
        }
      },
      "documentation": "<p>Contains the details of the transaction to commit.</p>"
    },
    "CommitTransactionResult": {
      "type": "structure",
      "members": {
        "TransactionId": {
          "shape": "TransactionId",
          "documentation": "<p>The transaction ID of the committed transaction.</p>"
        },
        "CommitDigest": {
          "shape": "CommitDigest",
          "documentation": "<p>The commit digest of the committed transaction.</p>"
        }
      },
      "documentation": "<p>Contains the details of the committed transaction.</p>"
    },
    "EndSessionRequest": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Specifies a request to end the session.</p>"
    },
    "EndSessionResult": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains the details of the ended session.</p>"
    },
    "ExecuteStatementRequest": {
      "type": "structure",
      "required": [
        "TransactionId",
        "Statement"
      ],
      "members": {
        "TransactionId": {
          "shape": "TransactionId",
          "documentation": "<p>Specifies the transaction ID of the request.</p>"
        },
        "Statement": {
          "shape": "Statement",
          "documentation": "<p>Specifies the statement of the request.</p>"
        },
        "Parameters": {
          "shape": "StatementParameters",
          "documentation": "<p>Specifies the parameters for the parameterized statement in the request.</p>"
        }
      },
      "documentation": "<p>Specifies a request to execute a statement.</p>"
    },
    "ExecuteStatementResult": {
      "type": "structure",
      "members": {
        "FirstPage": {
          "shape": "Page",
          "documentation": "<p>Contains the details of the first fetched page.</p>"
        }
      },
      "documentation": "<p>Contains the details of the executed statement.</p>"
    },
    "FetchPageRequest": {
      "type": "structure",
      "required": [
        "TransactionId",
        "NextPageToken"
      ],
      "members": {
        "TransactionId": {
          "shape": "TransactionId",
          "documentation": "<p>Specifies the transaction ID of the page to be fetched.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>Specifies the next page token of the page to be fetched.</p>"
        }
      },
      "documentation": "<p>Specifies the details of the page to be fetched.</p>"
    },
    "FetchPageResult": {
      "type": "structure",
      "members": {
        "Page": {
          "shape": "Page",
          "documentation": "<p>Contains details of the fetched page.</p>"
        }
      },
      "documentation": "<p>Contains the page that was fetched.</p>"
    },
    "IonBinary": {
      "type": "blob",
      "max": 131072,
      "min": 1
    },
    "IonText": {
      "type": "string",
      "max": 1048576,
      "min": 1
    },
    "LedgerName": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"
    },
    "Page": {
      "type": "structure",
      "members": {
        "Values": {
          "shape": "ValueHolders",
          "documentation": "<p>A structure that contains values in multiple encoding formats.</p>"
        },
        "NextPageToken": {
          "shape": "PageToken",
          "documentation": "<p>The token of the next page.</p>"
        }
      },
      "documentation": "<p>Contains details of the fetched page.</p>"
    },
    "PageToken": {
      "type": "string",
      "max": 1024,
      "min": 4,
      "pattern": "^[A-Za-z-0-9+/=]+$"
    },
    "SendCommandRequest": {
      "type": "structure",
      "members": {
        "SessionToken": {
          "shape": "SessionToken",
          "documentation": "<p>Specifies the session token for the current command. A session token is constant throughout the life of the session.</p> <p>To obtain a session token, run the <code>StartSession</code> command. This <code>SessionToken</code> is required for every subsequent command that is issued during the current session.</p>"
        },
        "StartSession": {
          "shape": "StartSessionRequest",
          "documentation": "<p>Command to start a new session. A session token is obtained as part of the response.</p>"
        },
        "StartTransaction": {
          "shape": "StartTransactionRequest",
          "documentation": "<p>Command to start a new transaction.</p>"
        },
        "EndSession": {
          "shape": "EndSessionRequest",
          "documentation": "<p>Command to end the current session.</p>"
        },
        "CommitTransaction": {
          "shape": "CommitTransactionRequest",
          "documentation": "<p>Command to commit the specified transaction.</p>"
        },
        "AbortTransaction": {
          "shape": "AbortTransactionRequest",
          "documentation": "<p>Command to abort the current transaction.</p>"
        },
        "ExecuteStatement": {
          "shape": "ExecuteStatementRequest",
          "documentation": "<p>Command to execute a statement in the specified transaction.</p>"
        },
        "FetchPage": {
          "shape": "FetchPageRequest",
          "documentation": "<p>Command to fetch a page.</p>"
        }
      }
    },
    "SendCommandResult": {
      "type": "structure",
      "members": {
        "StartSession": {
          "shape": "StartSessionResult",
          "documentation": "<p>Contains the details of the started session that includes a session token. This <code>SessionToken</code> is required for every subsequent command that is issued during the current session.</p>"
        },
        "StartTransaction": {
          "shape": "StartTransactionResult",
          "documentation": "<p>Contains the details of the started transaction.</p>"
        },
        "EndSession": {
          "shape": "EndSessionResult",
          "documentation": "<p>Contains the details of the ended session.</p>"
        },
        "CommitTransaction": {
          "shape": "CommitTransactionResult",
          "documentation": "<p>Contains the details of the committed transaction.</p>"
        },
        "AbortTransaction": {
          "shape": "AbortTransactionResult",
          "documentation": "<p>Contains the details of the aborted transaction.</p>"
        },
        "ExecuteStatement": {
          "shape": "ExecuteStatementResult",
          "documentation": "<p>Contains the details of the executed statement.</p>"
        },
        "FetchPage": {
          "shape": "FetchPageResult",
          "documentation": "<p>Contains the details of the fetched page.</p>"
        }
      }
    },
    "SessionToken": {
      "type": "string",
      "max": 1024,
      "min": 4,
      "pattern": "^[A-Za-z-0-9+/=]+$"
    },
    "StartSessionRequest": {
      "type": "structure",
      "required": [
        "LedgerName"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger to start a new session against.</p>"
        }
      },
      "documentation": "<p>Specifies a request to start a new session.</p>"
    },
    "StartSessionResult": {
      "type": "structure",
      "members": {
        "SessionToken": {
          "shape": "SessionToken",
          "documentation": "<p>Session token of the started session. This <code>SessionToken</code> is required for every subsequent command that is issued during the current session.</p>"
        }
      },
      "documentation": "<p>Contains the details of the started session.</p>"
    },
    "StartTransactionRequest": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Specifies a request to start a transaction.</p>"
    },
    "StartTransactionResult": {
      "type": "structure",
      "members": {
        "TransactionId": {
          "shape": "TransactionId",
          "documentation": "<p>The transaction ID of the started transaction.</p>"
        }
      },
      "documentation": "<p>Contains the details of the started transaction.</p>"
    },
    "Statement": {
      "type": "string",
      "max": 100000,
      "min": 1
    },
    "StatementParameters": {
      "type": "list",
      "member": {
        "shape": "ValueHolder"
      }
    },
    "TransactionId": {
      "type": "string",
      "max": 22,
      "min": 22,
      "pattern": "^[A-Za-z-0-9]+$"
    },
    "ValueHolder": {
      "type": "structure",
      "members": {
        "IonBinary": {
          "shape": "IonBinary",
          "documentation": "<p>An Amazon Ion binary value contained in a <code>ValueHolder</code> structure.</p>"
        },
        "IonText": {
          "shape": "IonText",
          "documentation": "<p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>"
        }
      },
      "documentation": "<p>A structure that can contain an Amazon Ion value in multiple encoding formats.</p>"
    },
    "ValueHolders": {
      "type": "list",
      "member": {
        "shape": "ValueHolder"
      }
    }
  },
  "documentation": "<p>The transactional data APIs for Amazon QLDB</p> <note> <p>Instead of interacting directly with this API, we recommend that you use the Amazon QLDB Driver or the QLDB Shell to execute data transactions on a ledger.</p> <ul> <li> <p>If you are working with an AWS SDK, use the QLDB Driver. The driver provides a high-level abstraction layer above this <code>qldbsession</code> data plane and manages <code>SendCommand</code> API calls for you. For information and a list of supported programming languages, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html\">Getting started with the driver</a> in the <i>Amazon QLDB Developer Guide</i>.</p> </li> <li> <p>If you are working with the AWS Command Line Interface (AWS CLI), use the QLDB Shell. The shell is a command line interface that uses the QLDB Driver to interact with a ledger. For information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html\">Accessing Amazon QLDB using the QLDB Shell</a>.</p> </li> </ul> </note>"
}
]===]))
