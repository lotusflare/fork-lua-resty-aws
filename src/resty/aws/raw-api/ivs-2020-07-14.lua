local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2020-07-14",
    "endpointPrefix": "ivs",
    "protocol": "rest-json",
    "serviceAbbreviation": "Amazon IVS",
    "serviceFullName": "Amazon Interactive Video Service",
    "serviceId": "ivs",
    "signatureVersion": "v4",
    "signingName": "ivs",
    "uid": "ivs-2020-07-14"
  },
  "operations": {
    "BatchGetChannel": {
      "name": "BatchGetChannel",
      "http": {
        "method": "POST",
        "requestUri": "/BatchGetChannel"
      },
      "input": {
        "shape": "BatchGetChannelRequest"
      },
      "output": {
        "shape": "BatchGetChannelResponse"
      },
      "documentation": "<p>Performs <a>GetChannel</a> on multiple ARNs simultaneously.</p>"
    },
    "BatchGetStreamKey": {
      "name": "BatchGetStreamKey",
      "http": {
        "method": "POST",
        "requestUri": "/BatchGetStreamKey"
      },
      "input": {
        "shape": "BatchGetStreamKeyRequest"
      },
      "output": {
        "shape": "BatchGetStreamKeyResponse"
      },
      "documentation": "<p>Performs <a>GetStreamKey</a> on multiple ARNs simultaneously.</p>"
    },
    "CreateChannel": {
      "name": "CreateChannel",
      "http": {
        "method": "POST",
        "requestUri": "/CreateChannel"
      },
      "input": {
        "shape": "CreateChannelRequest"
      },
      "output": {
        "shape": "CreateChannelResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Creates a new channel and an associated stream key to start streaming.</p>"
    },
    "CreateStreamKey": {
      "name": "CreateStreamKey",
      "http": {
        "method": "POST",
        "requestUri": "/CreateStreamKey"
      },
      "input": {
        "shape": "CreateStreamKeyRequest"
      },
      "output": {
        "shape": "CreateStreamKeyResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Creates a stream key, used to initiate a stream, for the specified channel ARN.</p> <p>Note that <a>CreateChannel</a> creates a stream key. If you subsequently use CreateStreamKey on the same channel, it will fail because a stream key already exists and there is a limit of 1 stream key per channel. To reset the stream key on a channel, use <a>DeleteStreamKey</a> and then CreateStreamKey.</p>"
    },
    "DeleteChannel": {
      "name": "DeleteChannel",
      "http": {
        "method": "POST",
        "requestUri": "/DeleteChannel"
      },
      "input": {
        "shape": "DeleteChannelRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Deletes the specified channel and its associated stream keys.</p>"
    },
    "DeletePlaybackKeyPair": {
      "name": "DeletePlaybackKeyPair",
      "http": {
        "method": "POST",
        "requestUri": "/DeletePlaybackKeyPair"
      },
      "input": {
        "shape": "DeletePlaybackKeyPairRequest"
      },
      "output": {
        "shape": "DeletePlaybackKeyPairResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s <code>privateKey</code>.</p>"
    },
    "DeleteStreamKey": {
      "name": "DeleteStreamKey",
      "http": {
        "method": "POST",
        "requestUri": "/DeleteStreamKey"
      },
      "input": {
        "shape": "DeleteStreamKeyRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Deletes the stream key for the specified ARN, so it can no longer be used to stream.</p>"
    },
    "GetChannel": {
      "name": "GetChannel",
      "http": {
        "method": "POST",
        "requestUri": "/GetChannel"
      },
      "input": {
        "shape": "GetChannelRequest"
      },
      "output": {
        "shape": "GetChannelResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets the channel configuration for the specified channel ARN. See also <a>BatchGetChannel</a>.</p>"
    },
    "GetPlaybackKeyPair": {
      "name": "GetPlaybackKeyPair",
      "http": {
        "method": "POST",
        "requestUri": "/GetPlaybackKeyPair"
      },
      "input": {
        "shape": "GetPlaybackKeyPairRequest"
      },
      "output": {
        "shape": "GetPlaybackKeyPairResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets a specified playback authorization key pair and returns the <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code> held by the caller can be used to generate viewer authorization tokens, to grant viewers access to authorized channels.</p>"
    },
    "GetStream": {
      "name": "GetStream",
      "http": {
        "method": "POST",
        "requestUri": "/GetStream"
      },
      "input": {
        "shape": "GetStreamRequest"
      },
      "output": {
        "shape": "GetStreamResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ChannelNotBroadcasting"
        }
      ],
      "documentation": "<p>Gets information about the active (live) stream on a specified channel.</p>"
    },
    "GetStreamKey": {
      "name": "GetStreamKey",
      "http": {
        "method": "POST",
        "requestUri": "/GetStreamKey"
      },
      "input": {
        "shape": "GetStreamKeyRequest"
      },
      "output": {
        "shape": "GetStreamKeyResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets stream-key information for a specified ARN.</p>"
    },
    "ImportPlaybackKeyPair": {
      "name": "ImportPlaybackKeyPair",
      "http": {
        "method": "POST",
        "requestUri": "/ImportPlaybackKeyPair"
      },
      "input": {
        "shape": "ImportPlaybackKeyPairRequest"
      },
      "output": {
        "shape": "ImportPlaybackKeyPairResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Imports the public portion of a new key pair and returns its <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code> can then be used to generate viewer authorization tokens, to grant viewers access to authorized channels.</p>"
    },
    "ListChannels": {
      "name": "ListChannels",
      "http": {
        "method": "POST",
        "requestUri": "/ListChannels"
      },
      "input": {
        "shape": "ListChannelsRequest"
      },
      "output": {
        "shape": "ListChannelsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified string.</p>"
    },
    "ListPlaybackKeyPairs": {
      "name": "ListPlaybackKeyPairs",
      "http": {
        "method": "POST",
        "requestUri": "/ListPlaybackKeyPairs"
      },
      "input": {
        "shape": "ListPlaybackKeyPairsRequest"
      },
      "output": {
        "shape": "ListPlaybackKeyPairsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets summary information about playback key pairs.</p>"
    },
    "ListStreamKeys": {
      "name": "ListStreamKeys",
      "http": {
        "method": "POST",
        "requestUri": "/ListStreamKeys"
      },
      "input": {
        "shape": "ListStreamKeysRequest"
      },
      "output": {
        "shape": "ListStreamKeysResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets summary information about stream keys for the specified channel.</p>"
    },
    "ListStreams": {
      "name": "ListStreams",
      "http": {
        "method": "POST",
        "requestUri": "/ListStreams"
      },
      "input": {
        "shape": "ListStreamsRequest"
      },
      "output": {
        "shape": "ListStreamsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets summary information about live streams in your account, in the AWS region where the API request is processed.</p>"
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
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets information about AWS tags for the specified ARN.</p>"
    },
    "PutMetadata": {
      "name": "PutMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/PutMetadata"
      },
      "input": {
        "shape": "PutMetadataRequest"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ChannelNotBroadcasting"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Inserts metadata into an RTMPS stream for the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1KB payload.</p>"
    },
    "StopStream": {
      "name": "StopStream",
      "http": {
        "method": "POST",
        "requestUri": "/StopStream"
      },
      "input": {
        "shape": "StopStreamRequest"
      },
      "output": {
        "shape": "StopStreamResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ChannelNotBroadcasting"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "StreamUnavailable"
        }
      ],
      "documentation": "<p>Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with <a>DeleteStreamKey</a> to prevent further streaming to a channel.</p> <note> <p>Many streaming client-software libraries automatically reconnect a dropped RTMPS session, so to stop the stream permanently, you may want to first revoke the <code>streamKey</code> attached to the channel.</p> </note>"
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
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Adds or updates tags for the AWS resource with the specified ARN.</p>"
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
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes tags from the resource with the specified ARN.</p>"
    },
    "UpdateChannel": {
      "name": "UpdateChannel",
      "http": {
        "method": "POST",
        "requestUri": "/UpdateChannel"
      },
      "input": {
        "shape": "UpdateChannelRequest"
      },
      "output": {
        "shape": "UpdateChannelResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "PendingVerification"
        }
      ],
      "documentation": "<p>Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.</p>"
    }
  },
  "shapes": {
    "BatchError": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ResourceArn",
          "documentation": "<p>Channel ARN.</p>"
        },
        "code": {
          "shape": "errorCode",
          "documentation": "<p>Error code.</p>"
        },
        "message": {
          "shape": "errorMessage",
          "documentation": "<p>Error message, determined by the application.</p>"
        }
      },
      "documentation": "<p>Error related to a specific channel, specified by its ARN.</p>"
    },
    "BatchErrors": {
      "type": "list",
      "member": {
        "shape": "BatchError"
      }
    },
    "BatchGetChannelRequest": {
      "type": "structure",
      "required": [
        "arns"
      ],
      "members": {
        "arns": {
          "shape": "ChannelArnList",
          "documentation": "<p>Array of ARNs, one per channel.</p>"
        }
      }
    },
    "BatchGetChannelResponse": {
      "type": "structure",
      "members": {
        "channels": {
          "shape": "Channels"
        },
        "errors": {
          "shape": "BatchErrors",
          "documentation": "<p>Each error object is related to a specific ARN in the request.</p>"
        }
      }
    },
    "BatchGetStreamKeyRequest": {
      "type": "structure",
      "required": [
        "arns"
      ],
      "members": {
        "arns": {
          "shape": "StreamKeyArnList",
          "documentation": "<p>Array of ARNs, one per channel.</p>"
        }
      }
    },
    "BatchGetStreamKeyResponse": {
      "type": "structure",
      "members": {
        "streamKeys": {
          "shape": "StreamKeys"
        },
        "errors": {
          "shape": "BatchErrors"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "Channel": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN.</p>"
        },
        "name": {
          "shape": "ChannelName",
          "documentation": "<p>Channel name.</p>"
        },
        "latencyMode": {
          "shape": "ChannelLatencyMode",
          "documentation": "<p>Channel latency mode. Default: <code>LOW</code>.</p>"
        },
        "type": {
          "shape": "ChannelType",
          "documentation": "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you exceed the allowable resolution or bitrate, the stream probably will disconnect immediately.</i> Valid values:</p> <ul> <li> <p> <code>STANDARD</code>: Multiple qualities are generated from the original input, to automatically give viewers the best experience for their devices and network conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.</p> </li> <li> <p> <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s video-quality choice is limited to the original input. Vertical resolution can be up to 480 and bitrate can be up to 1.5 Mbps.</p> </li> </ul> <p>Default: <code>STANDARD</code>.</p>"
        },
        "ingestEndpoint": {
          "shape": "IngestEndpoint",
          "documentation": "<p>Channel ingest endpoint, part of the definition of an ingest server, used when you set up streaming software.</p>"
        },
        "playbackUrl": {
          "shape": "PlaybackURL",
          "documentation": "<p>Channel playback URL.</p>"
        },
        "authorized": {
          "shape": "IsAuthorized",
          "documentation": "<p>Whether the channel is authorized.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
        }
      },
      "documentation": "<p>Object specifying a channel.</p>"
    },
    "ChannelArn": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^arn:aws:[is]vs:[a-z0-9-]+:[0-9]+:channel/[a-zA-Z0-9-]+$"
    },
    "ChannelArnList": {
      "type": "list",
      "member": {
        "shape": "ChannelArn"
      },
      "max": 50,
      "min": 1
    },
    "ChannelLatencyMode": {
      "type": "string",
      "enum": [
        "NORMAL",
        "LOW"
      ]
    },
    "ChannelList": {
      "type": "list",
      "member": {
        "shape": "ChannelSummary"
      }
    },
    "ChannelName": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "^[a-zA-Z0-9-_]*$"
    },
    "ChannelSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN.</p>"
        },
        "name": {
          "shape": "ChannelName",
          "documentation": "<p>Channel name.</p>"
        },
        "latencyMode": {
          "shape": "ChannelLatencyMode",
          "documentation": "<p>Channel latency mode. Default: <code>LOW</code>.</p>"
        },
        "authorized": {
          "shape": "IsAuthorized",
          "documentation": "<p>Whether the channel is authorized.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
        }
      },
      "documentation": "<p>Summary information about a channel.</p>"
    },
    "ChannelType": {
      "type": "string",
      "enum": [
        "BASIC",
        "STANDARD"
      ]
    },
    "Channels": {
      "type": "list",
      "member": {
        "shape": "Channel"
      }
    },
    "CreateChannelRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ChannelName",
          "documentation": "<p>Channel name.</p>"
        },
        "latencyMode": {
          "shape": "ChannelLatencyMode",
          "documentation": "<p>Channel latency mode. Default: <code>LOW</code>.</p>"
        },
        "type": {
          "shape": "ChannelType",
          "documentation": "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you exceed the allowable resolution or bitrate, the stream probably will disconnect immediately.</i> Valid values:</p> <ul> <li> <p> <code>STANDARD</code>: Multiple qualities are generated from the original input, to automatically give viewers the best experience for their devices and network conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.</p> </li> <li> <p> <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s video-quality choice is limited to the original input. Vertical resolution can be up to 480 and bitrate can be up to 1.5 Mbps.</p> </li> </ul> <p>Default: <code>STANDARD</code>.</p>"
        },
        "authorized": {
          "shape": "Boolean",
          "documentation": "<p>Whether the channel is authorized. Default: <code>false</code>.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>See <a>Channel$tags</a>.</p>"
        }
      }
    },
    "CreateChannelResponse": {
      "type": "structure",
      "members": {
        "channel": {
          "shape": "Channel"
        },
        "streamKey": {
          "shape": "StreamKey"
        }
      }
    },
    "CreateStreamKeyRequest": {
      "type": "structure",
      "required": [
        "channelArn"
      ],
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>ARN of the channel for which to create the stream key.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>See <a>Channel$tags</a>.</p>"
        }
      }
    },
    "CreateStreamKeyResponse": {
      "type": "structure",
      "members": {
        "streamKey": {
          "shape": "StreamKey",
          "documentation": "<p>Stream key used to authenticate an RTMPS stream for ingestion.</p>"
        }
      }
    },
    "DeleteChannelRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "ChannelArn",
          "documentation": "<p>ARN of the channel to be deleted.</p>"
        }
      }
    },
    "DeletePlaybackKeyPairRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "PlaybackKeyPairArn",
          "documentation": "<p>ARN of the key pair to be deleted.</p>"
        }
      }
    },
    "DeletePlaybackKeyPairResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteStreamKeyRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "StreamKeyArn",
          "documentation": "<p>ARN of the stream key to be deleted.</p>"
        }
      }
    },
    "GetChannelRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "ChannelArn",
          "documentation": "<p>ARN of the channel for which the configuration is to be retrieved.</p>"
        }
      }
    },
    "GetChannelResponse": {
      "type": "structure",
      "members": {
        "channel": {
          "shape": "Channel"
        }
      }
    },
    "GetPlaybackKeyPairRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "PlaybackKeyPairArn",
          "documentation": "<p>ARN of the key pair to be returned.</p>"
        }
      }
    },
    "GetPlaybackKeyPairResponse": {
      "type": "structure",
      "members": {
        "keyPair": {
          "shape": "PlaybackKeyPair"
        }
      }
    },
    "GetStreamKeyRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "StreamKeyArn",
          "documentation": "<p>ARN for the stream key to be retrieved.</p>"
        }
      }
    },
    "GetStreamKeyResponse": {
      "type": "structure",
      "members": {
        "streamKey": {
          "shape": "StreamKey"
        }
      }
    },
    "GetStreamRequest": {
      "type": "structure",
      "required": [
        "channelArn"
      ],
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN for stream to be accessed.</p>"
        }
      }
    },
    "GetStreamResponse": {
      "type": "structure",
      "members": {
        "stream": {
          "shape": "Stream"
        }
      }
    },
    "ImportPlaybackKeyPairRequest": {
      "type": "structure",
      "required": [
        "publicKeyMaterial"
      ],
      "members": {
        "publicKeyMaterial": {
          "shape": "PlaybackPublicKeyMaterial",
          "documentation": "<p>The public portion of a customer-generated key pair.</p>"
        },
        "name": {
          "shape": "PlaybackKeyPairName",
          "documentation": "<p>An arbitrary string (a nickname) assigned to a playback key pair that helps the customer identify that resource. The value does not need to be unique.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Any tags provided with the request are added to the playback key pair tags.</p>"
        }
      }
    },
    "ImportPlaybackKeyPairResponse": {
      "type": "structure",
      "members": {
        "keyPair": {
          "shape": "PlaybackKeyPair"
        }
      }
    },
    "IngestEndpoint": {
      "type": "string"
    },
    "IsAuthorized": {
      "type": "boolean"
    },
    "ListChannelsRequest": {
      "type": "structure",
      "members": {
        "filterByName": {
          "shape": "ChannelName",
          "documentation": "<p>Filters the channel list to match the specified name.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The first channel to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"
        },
        "maxResults": {
          "shape": "MaxChannelResults",
          "documentation": "<p>Maximum number of channels to return.</p>"
        }
      }
    },
    "ListChannelsResponse": {
      "type": "structure",
      "required": [
        "channels"
      ],
      "members": {
        "channels": {
          "shape": "ChannelList",
          "documentation": "<p>List of the matching channels.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more channels than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"
        }
      }
    },
    "ListPlaybackKeyPairsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>Maximum number of key pairs to return.</p>"
        },
        "maxResults": {
          "shape": "MaxPlaybackKeyPairResults",
          "documentation": "<p>The first key pair to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"
        }
      }
    },
    "ListPlaybackKeyPairsResponse": {
      "type": "structure",
      "required": [
        "keyPairs"
      ],
      "members": {
        "keyPairs": {
          "shape": "PlaybackKeyPairList",
          "documentation": "<p>List of key pairs.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more key pairs than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"
        }
      }
    },
    "ListStreamKeysRequest": {
      "type": "structure",
      "required": [
        "channelArn"
      ],
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN used to filter the list.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The first stream key to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"
        },
        "maxResults": {
          "shape": "MaxStreamKeyResults",
          "documentation": "<p>Maximum number of streamKeys to return.</p>"
        }
      }
    },
    "ListStreamKeysResponse": {
      "type": "structure",
      "required": [
        "streamKeys"
      ],
      "members": {
        "streamKeys": {
          "shape": "StreamKeyList",
          "documentation": "<p>List of stream keys.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more stream keys than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"
        }
      }
    },
    "ListStreamsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The first stream to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"
        },
        "maxResults": {
          "shape": "MaxStreamResults",
          "documentation": "<p>Maximum number of streams to return.</p>"
        }
      }
    },
    "ListStreamsResponse": {
      "type": "structure",
      "required": [
        "streams"
      ],
      "members": {
        "streams": {
          "shape": "StreamList",
          "documentation": "<p>List of streams.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more streams than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The ARN of the resource to be retrieved.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The first tag to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>"
        },
        "maxResults": {
          "shape": "MaxTagResults",
          "documentation": "<p>Maximum number of tags to return.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "required": [
        "tags"
      ],
      "members": {
        "tags": {
          "shape": "Tags"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more tags than <code>maxResults</code>, use <code>nextToken</code> in the request to get the next set.</p>"
        }
      }
    },
    "MaxChannelResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "MaxPlaybackKeyPairResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "MaxStreamKeyResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "MaxStreamResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "MaxTagResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "PaginationToken": {
      "type": "string",
      "max": 500,
      "min": 0
    },
    "PlaybackKeyPair": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "PlaybackKeyPairArn",
          "documentation": "<p>Key-pair ARN.</p>"
        },
        "name": {
          "shape": "PlaybackKeyPairName",
          "documentation": "<p>Key-pair name.</p>"
        },
        "fingerprint": {
          "shape": "PlaybackKeyPairFingerprint",
          "documentation": "<p>Key-pair identifier.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
        }
      },
      "documentation": "<p>A key pair used to sign and validate a playback authorization token.</p>"
    },
    "PlaybackKeyPairArn": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^arn:aws:[is]vs:[a-z0-9-]+:[0-9]+:playback-key/[a-zA-Z0-9-]+$"
    },
    "PlaybackKeyPairFingerprint": {
      "type": "string"
    },
    "PlaybackKeyPairList": {
      "type": "list",
      "member": {
        "shape": "PlaybackKeyPairSummary"
      }
    },
    "PlaybackKeyPairName": {
      "type": "string",
      "max": 128,
      "min": 0,
      "pattern": "^[a-zA-Z0-9-_]*$"
    },
    "PlaybackKeyPairSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "PlaybackKeyPairArn",
          "documentation": "<p>Key-pair ARN.</p>"
        },
        "name": {
          "shape": "PlaybackKeyPairName",
          "documentation": "<p>Key-pair name.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code> </p>"
        }
      },
      "documentation": "<p>Summary information about a playback key pair.</p>"
    },
    "PlaybackPublicKeyMaterial": {
      "type": "string"
    },
    "PlaybackURL": {
      "type": "string"
    },
    "PutMetadataRequest": {
      "type": "structure",
      "required": [
        "channelArn",
        "metadata"
      ],
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>ARN of the channel into which metadata is inserted. This channel must have an active stream.</p>"
        },
        "metadata": {
          "shape": "StreamMetadata",
          "documentation": "<p>Metadata to insert into the stream. Maximum: 1 KB per request.</p>"
        }
      }
    },
    "ResourceArn": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^arn:aws:[is]vs:[a-z0-9-]+:[0-9]+:[a-z-]/[a-zA-Z0-9-]+$"
    },
    "StopStreamRequest": {
      "type": "structure",
      "required": [
        "channelArn"
      ],
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>ARN of the channel for which the stream is to be stopped.</p>"
        }
      }
    },
    "StopStreamResponse": {
      "type": "structure",
      "members": {}
    },
    "Stream": {
      "type": "structure",
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN for the stream.</p>"
        },
        "playbackUrl": {
          "shape": "PlaybackURL",
          "documentation": "<p>URL of the video master manifest, required by the video player to play the HLS stream.</p>"
        },
        "startTime": {
          "shape": "StreamStartTime",
          "documentation": "<p>ISO-8601 formatted timestamp of the stream’s start.</p>"
        },
        "state": {
          "shape": "StreamState",
          "documentation": "<p>The stream’s state.</p>"
        },
        "health": {
          "shape": "StreamHealth",
          "documentation": "<p>The stream’s health.</p>"
        },
        "viewerCount": {
          "shape": "StreamViewerCount",
          "documentation": "<p>Number of current viewers of the stream.</p>"
        }
      },
      "documentation": "<p>Specifies a live video stream that has been ingested and distributed.</p>"
    },
    "StreamHealth": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "STARVING",
        "UNKNOWN"
      ]
    },
    "StreamKey": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "StreamKeyArn",
          "documentation": "<p>Stream-key ARN.</p>"
        },
        "value": {
          "shape": "StreamKeyValue",
          "documentation": "<p>Stream-key value.</p>"
        },
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN for the stream.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
        }
      },
      "documentation": "<p>Object specifying a stream key.</p>"
    },
    "StreamKeyArn": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^arn:aws:[is]vs:[a-z0-9-]+:[0-9]+:stream-key/[a-zA-Z0-9-]+$"
    },
    "StreamKeyArnList": {
      "type": "list",
      "member": {
        "shape": "StreamKeyArn"
      },
      "max": 50,
      "min": 1
    },
    "StreamKeyList": {
      "type": "list",
      "member": {
        "shape": "StreamKeySummary"
      }
    },
    "StreamKeySummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "StreamKeyArn",
          "documentation": "<p>Stream-key ARN.</p>"
        },
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN for the stream.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of 1-50 maps, each of the form <code>string:string (key:value)</code>.</p>"
        }
      },
      "documentation": "<p>Summary information about a stream key.</p>"
    },
    "StreamKeyValue": {
      "type": "string"
    },
    "StreamKeys": {
      "type": "list",
      "member": {
        "shape": "StreamKey"
      }
    },
    "StreamList": {
      "type": "list",
      "member": {
        "shape": "StreamSummary"
      }
    },
    "StreamMetadata": {
      "type": "string"
    },
    "StreamStartTime": {
      "type": "timestamp"
    },
    "StreamState": {
      "type": "string",
      "enum": [
        "LIVE",
        "OFFLINE"
      ]
    },
    "StreamSummary": {
      "type": "structure",
      "members": {
        "channelArn": {
          "shape": "ChannelArn",
          "documentation": "<p>Channel ARN for the stream.</p>"
        },
        "state": {
          "shape": "StreamState",
          "documentation": "<p>The stream’s state.</p>"
        },
        "health": {
          "shape": "StreamHealth",
          "documentation": "<p>The stream’s health.</p>"
        },
        "viewerCount": {
          "shape": "StreamViewerCount",
          "documentation": "<p>Number of current viewers of the stream.</p>"
        },
        "startTime": {
          "shape": "StreamStartTime",
          "documentation": "<p>ISO-8601 formatted timestamp of the stream’s start.</p>"
        }
      },
      "documentation": "<p>Summary information about a stream.</p>"
    },
    "StreamViewerCount": {
      "type": "long"
    },
    "String": {
      "type": "string"
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
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>ARN of the resource for which tags are to be added or updated.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Array of tags to be added or updated.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "Tags": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
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
          "shape": "ResourceArn",
          "documentation": "<p>ARN of the resource for which tags are to be removed.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>Array of tags to be removed.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateChannelRequest": {
      "type": "structure",
      "required": [
        "arn"
      ],
      "members": {
        "arn": {
          "shape": "ChannelArn",
          "documentation": "<p>ARN of the channel to be updated.</p>"
        },
        "name": {
          "shape": "ChannelName",
          "documentation": "<p>Channel name.</p>"
        },
        "latencyMode": {
          "shape": "ChannelLatencyMode",
          "documentation": "<p>Channel latency mode. Default: <code>LOW</code>.</p>"
        },
        "type": {
          "shape": "ChannelType",
          "documentation": "<p>Channel type, which determines the allowable resolution and bitrate. <i>If you exceed the allowable resolution or bitrate, the stream probably will disconnect immediately.</i> Valid values:</p> <ul> <li> <p> <code>STANDARD</code>: Multiple qualities are generated from the original input, to automatically give viewers the best experience for their devices and network conditions. Vertical resolution can be up to 1080 and bitrate can be up to 8.5 Mbps.</p> </li> <li> <p> <code>BASIC</code>: Amazon IVS delivers the original input to viewers. The viewer’s video-quality choice is limited to the original input. Vertical resolution can be up to 480 and bitrate can be up to 1.5 Mbps.</p> </li> </ul> <p>Default: <code>STANDARD</code>.</p>"
        },
        "authorized": {
          "shape": "Boolean",
          "documentation": "<p>Whether the channel is authorized. Default: <code>false</code>.</p>"
        }
      }
    },
    "UpdateChannelResponse": {
      "type": "structure",
      "members": {
        "channel": {
          "shape": "Channel"
        }
      }
    },
    "errorCode": {
      "type": "string"
    },
    "errorMessage": {
      "type": "string"
    }
  },
  "documentation": "<p> <b>Introduction</b> </p> <p>The Amazon Interactive Video Service (IVS) API is REST compatible, using a standard HTTP API and an <a href=\"http://aws.amazon.com/sns\">AWS SNS</a> event stream for responses. JSON is used for both requests and responses, including errors.</p> <p>The API is an AWS regional service, currently in these regions: us-west-2, us-east-1, and eu-west-1.</p> <p> <i> <b>All API request parameters and URLs are case sensitive. </b> </i> </p> <p>For a summary of notable documentation changes in each release, see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html\"> Document History</a>.</p> <p> <b>Service Endpoints</b> </p> <p>The following are the Amazon IVS service endpoints (all HTTPS): </p> <p>Region name: US West (Oregon)</p> <ul> <li> <p>Region: <code>us-west-2</code> </p> </li> <li> <p>Endpoint: <code>ivs.us-west-2.amazonaws.com</code> </p> </li> </ul> <p>Region name: US East (Virginia)</p> <ul> <li> <p>Region: <code>us-east-1</code> </p> </li> <li> <p>Endpoint: <code>ivs.us-east-1.amazonaws.com</code> </p> </li> </ul> <p>Region name: EU West (Dublin)</p> <ul> <li> <p>Region: <code>eu-west-1</code> </p> </li> <li> <p>Endpoint: <code>ivs.eu-west-1.amazonaws.com</code> </p> </li> </ul> <p> <b>Allowed Header Values</b> </p> <ul> <li> <p> <code> <b>Accept:</b> </code> application/json</p> </li> <li> <p> <code> <b>Accept-Encoding:</b> </code> gzip, deflate</p> </li> <li> <p> <code> <b>Content-Type:</b> </code>application/json</p> </li> </ul> <p> <b>Resources</b> </p> <p>The following resources contain information about your IVS live stream (see <a href=\"https://docs.aws.amazon.com/ivs/latest/userguide/GSIVS.html\"> Getting Started with Amazon IVS</a>):</p> <ul> <li> <p>Channel — Stores configuration data related to your live stream. You first create a channel and then use the channel’s stream key to start your live stream. See the Channel endpoints for more information. </p> </li> <li> <p>Stream key — An identifier assigned by Amazon IVS when you create a channel, which is then used to authorize streaming. See the StreamKey endpoints for more information. <i> <b>Treat the stream key like a secret, since it allows anyone to stream to the channel.</b> </i> </p> </li> <li> <p>Playback key pair — Video playback may be restricted using playback-authorization tokens, which use public-key encryption. A playback key pair is the public-private pair of keys used to sign and validate the playback-authorization token. See the PlaybackKeyPair endpoints for more information.</p> </li> </ul> <p> <b>Tagging</b> </p> <p>A <i>tag</i> is a metadata label that you assign to an AWS resource. A tag comprises a <i>key</i> and a <i>value</i>, both set by you. For example, you might set a tag as <code>topic:nature</code> to label a particular video category. See <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> for more information, including restrictions that apply to tags.</p> <p>Tags can help you identify and organize your AWS resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\"> Access Tags</a>). </p> <p>The Amazon IVS API has these tag-related endpoints: <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a>. The following resources support tagging: Channels, Stream Keys, and Playback Key Pairs.</p> <p> <b>Channel Endpoints</b> </p> <ul> <li> <p> <a>CreateChannel</a> — Creates a new channel and an associated stream key to start streaming.</p> </li> <li> <p> <a>GetChannel</a> — Gets the channel configuration for the specified channel ARN (Amazon Resource Name).</p> </li> <li> <p> <a>BatchGetChannel</a> — Performs <a>GetChannel</a> on multiple ARNs simultaneously.</p> </li> <li> <p> <a>ListChannels</a> — Gets summary information about all channels in your account, in the AWS region where the API request is processed. This list can be filtered to match a specified string.</p> </li> <li> <p> <a>UpdateChannel</a> — Updates a channel's configuration. This does not affect an ongoing stream of this channel. You must stop and restart the stream for the changes to take effect.</p> </li> <li> <p> <a>DeleteChannel</a> — Deletes the specified channel.</p> </li> </ul> <p> <b>StreamKey Endpoints</b> </p> <ul> <li> <p> <a>CreateStreamKey</a> — Creates a stream key, used to initiate a stream, for the specified channel ARN.</p> </li> <li> <p> <a>GetStreamKey</a> — Gets stream key information for the specified ARN.</p> </li> <li> <p> <a>BatchGetStreamKey</a> — Performs <a>GetStreamKey</a> on multiple ARNs simultaneously.</p> </li> <li> <p> <a>ListStreamKeys</a> — Gets summary information about stream keys for the specified channel.</p> </li> <li> <p> <a>DeleteStreamKey</a> — Deletes the stream key for the specified ARN, so it can no longer be used to stream.</p> </li> </ul> <p> <b>Stream Endpoints</b> </p> <ul> <li> <p> <a>GetStream</a> — Gets information about the active (live) stream on a specified channel.</p> </li> <li> <p> <a>ListStreams</a> — Gets summary information about live streams in your account, in the AWS region where the API request is processed.</p> </li> <li> <p> <a>StopStream</a> — Disconnects the incoming RTMPS stream for the specified channel. Can be used in conjunction with <a>DeleteStreamKey</a> to prevent further streaming to a channel.</p> </li> <li> <p> <a>PutMetadata</a> — Inserts metadata into an RTMPS stream for the specified channel. A maximum of 5 requests per second per channel is allowed, each with a maximum 1KB payload.</p> </li> </ul> <p> <b>PlaybackKeyPair Endpoints</b> </p> <ul> <li> <p> <a>ImportPlaybackKeyPair</a> — Imports the public portion of a new key pair and returns its <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code> can then be used to generate viewer authorization tokens, to grant viewers access to authorized channels.</p> </li> <li> <p> <a>GetPlaybackKeyPair</a> — Gets a specified playback authorization key pair and returns the <code>arn</code> and <code>fingerprint</code>. The <code>privateKey</code> held by the caller can be used to generate viewer authorization tokens, to grant viewers access to authorized channels.</p> </li> <li> <p> <a>ListPlaybackKeyPairs</a> — Gets summary information about playback key pairs.</p> </li> <li> <p> <a>DeletePlaybackKeyPair</a> — Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s <code>privateKey</code>.</p> </li> </ul> <p> <b>AWS Tags Endpoints</b> </p> <ul> <li> <p> <a>TagResource</a> — Adds or updates tags for the AWS resource with the specified ARN.</p> </li> <li> <p> <a>UntagResource</a> — Removes tags from the resource with the specified ARN.</p> </li> <li> <p> <a>ListTagsForResource</a> — Gets information about AWS tags for the specified ARN.</p> </li> </ul>"
}
]===]))
