local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-05-23",
    "endpointPrefix": "groundstation",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "AWS Ground Station",
    "serviceId": "GroundStation",
    "signatureVersion": "v4",
    "signingName": "groundstation",
    "uid": "groundstation-2019-05-23"
  },
  "operations": {
    "CancelContact": {
      "name": "CancelContact",
      "http": {
        "method": "DELETE",
        "requestUri": "/contact/{contactId}",
        "responseCode": 200
      },
      "input": {
        "shape": "CancelContactRequest"
      },
      "output": {
        "shape": "ContactIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Cancels a contact with a specified contact ID.</p>",
      "idempotent": true
    },
    "CreateConfig": {
      "name": "CreateConfig",
      "http": {
        "method": "POST",
        "requestUri": "/config",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateConfigRequest"
      },
      "output": {
        "shape": "ConfigIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates a <code>Config</code> with the specified <code>configData</code> parameters.</p> <p>Only one type of <code>configData</code> can be specified.</p>"
    },
    "CreateDataflowEndpointGroup": {
      "name": "CreateDataflowEndpointGroup",
      "http": {
        "method": "POST",
        "requestUri": "/dataflowEndpointGroup",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateDataflowEndpointGroupRequest"
      },
      "output": {
        "shape": "DataflowEndpointGroupIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates a <code>DataflowEndpoint</code> group containing the specified list of <code>DataflowEndpoint</code> objects.</p> <p>The <code>name</code> field in each endpoint is used in your mission profile <code>DataflowEndpointConfig</code> to specify which endpoints to use during a contact.</p> <p>When a contact uses multiple <code>DataflowEndpointConfig</code> objects, each <code>Config</code> must match a <code>DataflowEndpoint</code> in the same group.</p>"
    },
    "CreateMissionProfile": {
      "name": "CreateMissionProfile",
      "http": {
        "method": "POST",
        "requestUri": "/missionprofile",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateMissionProfileRequest"
      },
      "output": {
        "shape": "MissionProfileIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates a mission profile.</p> <p> <code>dataflowEdges</code> is a list of lists of strings. Each lower level list of strings has two elements: a <i>from</i> ARN and a <i>to</i> ARN.</p>"
    },
    "DeleteConfig": {
      "name": "DeleteConfig",
      "http": {
        "method": "DELETE",
        "requestUri": "/config/{configType}/{configId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteConfigRequest"
      },
      "output": {
        "shape": "ConfigIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a <code>Config</code>.</p>",
      "idempotent": true
    },
    "DeleteDataflowEndpointGroup": {
      "name": "DeleteDataflowEndpointGroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/dataflowEndpointGroup/{dataflowEndpointGroupId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteDataflowEndpointGroupRequest"
      },
      "output": {
        "shape": "DataflowEndpointGroupIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a dataflow endpoint group.</p>",
      "idempotent": true
    },
    "DeleteMissionProfile": {
      "name": "DeleteMissionProfile",
      "http": {
        "method": "DELETE",
        "requestUri": "/missionprofile/{missionProfileId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteMissionProfileRequest"
      },
      "output": {
        "shape": "MissionProfileIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a mission profile.</p>",
      "idempotent": true
    },
    "DescribeContact": {
      "name": "DescribeContact",
      "http": {
        "method": "GET",
        "requestUri": "/contact/{contactId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeContactRequest"
      },
      "output": {
        "shape": "DescribeContactResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes an existing contact.</p>"
    },
    "GetConfig": {
      "name": "GetConfig",
      "http": {
        "method": "GET",
        "requestUri": "/config/{configType}/{configId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetConfigRequest"
      },
      "output": {
        "shape": "GetConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns <code>Config</code> information.</p> <p>Only one <code>Config</code> response can be returned.</p>"
    },
    "GetDataflowEndpointGroup": {
      "name": "GetDataflowEndpointGroup",
      "http": {
        "method": "GET",
        "requestUri": "/dataflowEndpointGroup/{dataflowEndpointGroupId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDataflowEndpointGroupRequest"
      },
      "output": {
        "shape": "GetDataflowEndpointGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns the dataflow endpoint group.</p>"
    },
    "GetMinuteUsage": {
      "name": "GetMinuteUsage",
      "http": {
        "method": "POST",
        "requestUri": "/minute-usage",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMinuteUsageRequest"
      },
      "output": {
        "shape": "GetMinuteUsageResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns the number of minutes used by account.</p>"
    },
    "GetMissionProfile": {
      "name": "GetMissionProfile",
      "http": {
        "method": "GET",
        "requestUri": "/missionprofile/{missionProfileId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMissionProfileRequest"
      },
      "output": {
        "shape": "GetMissionProfileResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a mission profile.</p>"
    },
    "GetSatellite": {
      "name": "GetSatellite",
      "http": {
        "method": "GET",
        "requestUri": "/satellite/{satelliteId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSatelliteRequest"
      },
      "output": {
        "shape": "GetSatelliteResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a satellite.</p>"
    },
    "ListConfigs": {
      "name": "ListConfigs",
      "http": {
        "method": "GET",
        "requestUri": "/config",
        "responseCode": 200
      },
      "input": {
        "shape": "ListConfigsRequest"
      },
      "output": {
        "shape": "ListConfigsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of <code>Config</code> objects.</p>"
    },
    "ListContacts": {
      "name": "ListContacts",
      "http": {
        "method": "POST",
        "requestUri": "/contacts",
        "responseCode": 200
      },
      "input": {
        "shape": "ListContactsRequest"
      },
      "output": {
        "shape": "ListContactsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of contacts.</p> <p>If <code>statusList</code> contains AVAILABLE, the request must include <code>groundStation</code>, <code>missionprofileArn</code>, and <code>satelliteArn</code>. </p>"
    },
    "ListDataflowEndpointGroups": {
      "name": "ListDataflowEndpointGroups",
      "http": {
        "method": "GET",
        "requestUri": "/dataflowEndpointGroup",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDataflowEndpointGroupsRequest"
      },
      "output": {
        "shape": "ListDataflowEndpointGroupsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of <code>DataflowEndpoint</code> groups.</p>"
    },
    "ListGroundStations": {
      "name": "ListGroundStations",
      "http": {
        "method": "GET",
        "requestUri": "/groundstation",
        "responseCode": 200
      },
      "input": {
        "shape": "ListGroundStationsRequest"
      },
      "output": {
        "shape": "ListGroundStationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of ground stations. </p>"
    },
    "ListMissionProfiles": {
      "name": "ListMissionProfiles",
      "http": {
        "method": "GET",
        "requestUri": "/missionprofile",
        "responseCode": 200
      },
      "input": {
        "shape": "ListMissionProfilesRequest"
      },
      "output": {
        "shape": "ListMissionProfilesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of mission profiles.</p>"
    },
    "ListSatellites": {
      "name": "ListSatellites",
      "http": {
        "method": "GET",
        "requestUri": "/satellite",
        "responseCode": 200
      },
      "input": {
        "shape": "ListSatellitesRequest"
      },
      "output": {
        "shape": "ListSatellitesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of satellites.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of tags for a specified resource.</p>"
    },
    "ReserveContact": {
      "name": "ReserveContact",
      "http": {
        "method": "POST",
        "requestUri": "/contact",
        "responseCode": 200
      },
      "input": {
        "shape": "ReserveContactRequest"
      },
      "output": {
        "shape": "ContactIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Reserves a contact using specified parameters.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Assigns a tag to a resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deassigns a resource tag.</p>",
      "idempotent": true
    },
    "UpdateConfig": {
      "name": "UpdateConfig",
      "http": {
        "method": "PUT",
        "requestUri": "/config/{configType}/{configId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateConfigRequest"
      },
      "output": {
        "shape": "ConfigIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates the <code>Config</code> used when scheduling contacts.</p> <p>Updating a <code>Config</code> will not update the execution parameters for existing future contacts scheduled with this <code>Config</code>.</p>",
      "idempotent": true
    },
    "UpdateMissionProfile": {
      "name": "UpdateMissionProfile",
      "http": {
        "method": "PUT",
        "requestUri": "/missionprofile/{missionProfileId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateMissionProfileRequest"
      },
      "output": {
        "shape": "MissionProfileIdResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "DependencyException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a mission profile.</p> <p>Updating a mission profile will not update the execution parameters for existing future contacts.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "AngleUnits": {
      "type": "string",
      "enum": [
        "DEGREE_ANGLE",
        "RADIAN"
      ]
    },
    "AntennaDemodDecodeDetails": {
      "type": "structure",
      "members": {
        "outputNode": {
          "shape": "String",
          "documentation": "<p>Name of an antenna demod decode output node used in a contact.</p>"
        }
      },
      "documentation": "<p>Details about an antenna demod decode <code>Config</code> used in a contact.</p>"
    },
    "AntennaDownlinkConfig": {
      "type": "structure",
      "required": [
        "spectrumConfig"
      ],
      "members": {
        "spectrumConfig": {
          "shape": "SpectrumConfig",
          "documentation": "<p>Object that describes a spectral <code>Config</code>.</p>"
        }
      },
      "documentation": "<p>Information about how AWS Ground Station should configure an antenna for downlink during a contact.</p>"
    },
    "AntennaDownlinkDemodDecodeConfig": {
      "type": "structure",
      "required": [
        "decodeConfig",
        "demodulationConfig",
        "spectrumConfig"
      ],
      "members": {
        "decodeConfig": {
          "shape": "DecodeConfig",
          "documentation": "<p>Information about the decode <code>Config</code>.</p>"
        },
        "demodulationConfig": {
          "shape": "DemodulationConfig",
          "documentation": "<p>Information about the demodulation <code>Config</code>.</p>"
        },
        "spectrumConfig": {
          "shape": "SpectrumConfig",
          "documentation": "<p>Information about the spectral <code>Config</code>.</p>"
        }
      },
      "documentation": "<p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>"
    },
    "AntennaUplinkConfig": {
      "type": "structure",
      "required": [
        "spectrumConfig",
        "targetEirp"
      ],
      "members": {
        "spectrumConfig": {
          "shape": "UplinkSpectrumConfig",
          "documentation": "<p>Information about the uplink spectral <code>Config</code>.</p>"
        },
        "targetEirp": {
          "shape": "Eirp",
          "documentation": "<p>EIRP of the target.</p>"
        },
        "transmitDisabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether or not uplink transmit is disabled.</p>"
        }
      },
      "documentation": "<p>Information about the uplink <code>Config</code> of an antenna.</p>"
    },
    "BandwidthUnits": {
      "type": "string",
      "enum": [
        "GHz",
        "MHz",
        "kHz"
      ]
    },
    "Boolean": {
      "type": "boolean",
      "box": true
    },
    "CancelContactRequest": {
      "type": "structure",
      "required": [
        "contactId"
      ],
      "members": {
        "contactId": {
          "shape": "String",
          "documentation": "<p>UUID of a contact.</p>",
          "location": "uri",
          "locationName": "contactId"
        }
      },
      "documentation": "<p/>"
    },
    "ConfigArn": {
      "type": "string"
    },
    "ConfigCapabilityType": {
      "type": "string",
      "enum": [
        "antenna-downlink",
        "antenna-downlink-demod-decode",
        "antenna-uplink",
        "dataflow-endpoint",
        "tracking",
        "uplink-echo"
      ]
    },
    "ConfigDetails": {
      "type": "structure",
      "members": {
        "antennaDemodDecodeDetails": {
          "shape": "AntennaDemodDecodeDetails",
          "documentation": "<p>Details for antenna demod decode <code>Config</code> in a contact.</p>"
        },
        "endpointDetails": {
          "shape": "EndpointDetails"
        }
      },
      "documentation": "<p>Details for certain <code>Config</code> object types in a contact.</p>"
    },
    "ConfigIdResponse": {
      "type": "structure",
      "members": {
        "configArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of a <code>Config</code>.</p>"
        },
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ConfigList": {
      "type": "list",
      "member": {
        "shape": "ConfigListItem"
      }
    },
    "ConfigListItem": {
      "type": "structure",
      "members": {
        "configArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of a <code>Config</code>.</p>"
        },
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>Name of a <code>Config</code>.</p>"
        }
      },
      "documentation": "<p>An item in a list of <code>Config</code> objects.</p>"
    },
    "ConfigTypeData": {
      "type": "structure",
      "members": {
        "antennaDownlinkConfig": {
          "shape": "AntennaDownlinkConfig",
          "documentation": "<p>Information about how AWS Ground Station should configure an antenna for downlink during a contact.</p>"
        },
        "antennaDownlinkDemodDecodeConfig": {
          "shape": "AntennaDownlinkDemodDecodeConfig",
          "documentation": "<p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>"
        },
        "antennaUplinkConfig": {
          "shape": "AntennaUplinkConfig",
          "documentation": "<p>Information about how AWS Ground Station should conﬁgure an antenna for uplink during a contact.</p>"
        },
        "dataflowEndpointConfig": {
          "shape": "DataflowEndpointConfig",
          "documentation": "<p>Information about the dataflow endpoint <code>Config</code>.</p>"
        },
        "trackingConfig": {
          "shape": "TrackingConfig",
          "documentation": "<p>Object that determines whether tracking should be used during a contact executed with this <code>Config</code> in the mission profile. </p>"
        },
        "uplinkEchoConfig": {
          "shape": "UplinkEchoConfig",
          "documentation": "<p>Information about an uplink echo <code>Config</code>.</p> <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the specified <code>AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code> is used in a contact.</p>"
        }
      },
      "documentation": "<p>Object containing the parameters of a <code>Config</code>.</p> <p>See the subtype definitions for what each type of <code>Config</code> contains.</p>"
    },
    "ContactData": {
      "type": "structure",
      "members": {
        "contactId": {
          "shape": "String",
          "documentation": "<p>UUID of a contact.</p>"
        },
        "contactStatus": {
          "shape": "ContactStatus",
          "documentation": "<p>Status of a contact.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>End time of a contact.</p>"
        },
        "errorMessage": {
          "shape": "String",
          "documentation": "<p>Error message of a contact.</p>"
        },
        "groundStation": {
          "shape": "String",
          "documentation": "<p>Name of a ground station.</p>"
        },
        "maximumElevation": {
          "shape": "Elevation",
          "documentation": "<p>Maximum elevation angle of a contact.</p>"
        },
        "missionProfileArn": {
          "shape": "MissionProfileArn",
          "documentation": "<p>ARN of a mission profile.</p>"
        },
        "postPassEndTime": {
          "shape": "Timestamp",
          "documentation": "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"
        },
        "prePassStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"
        },
        "region": {
          "shape": "String",
          "documentation": "<p>Region of a contact.</p>"
        },
        "satelliteArn": {
          "shape": "satelliteArn",
          "documentation": "<p>ARN of a satellite.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>Start time of a contact.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a contact.</p>"
        }
      },
      "documentation": "<p>Data describing a contact.</p>"
    },
    "ContactIdResponse": {
      "type": "structure",
      "members": {
        "contactId": {
          "shape": "String",
          "documentation": "<p>UUID of a contact.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ContactList": {
      "type": "list",
      "member": {
        "shape": "ContactData"
      }
    },
    "ContactStatus": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "AWS_CANCELLED",
        "CANCELLED",
        "CANCELLING",
        "COMPLETED",
        "FAILED",
        "FAILED_TO_SCHEDULE",
        "PASS",
        "POSTPASS",
        "PREPASS",
        "SCHEDULED",
        "SCHEDULING"
      ]
    },
    "CreateConfigRequest": {
      "type": "structure",
      "required": [
        "configData",
        "name"
      ],
      "members": {
        "configData": {
          "shape": "ConfigTypeData",
          "documentation": "<p>Parameters of a <code>Config</code>.</p>"
        },
        "name": {
          "shape": "SafeName",
          "documentation": "<p>Name of a <code>Config</code>.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDataflowEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "endpointDetails"
      ],
      "members": {
        "endpointDetails": {
          "shape": "EndpointDetailsList",
          "documentation": "<p>Endpoint details of each endpoint in the dataflow endpoint group.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags of a dataflow endpoint group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateMissionProfileRequest": {
      "type": "structure",
      "required": [
        "dataflowEdges",
        "minimumViableContactDurationSeconds",
        "name",
        "trackingConfigArn"
      ],
      "members": {
        "contactPostPassDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"
        },
        "contactPrePassDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"
        },
        "dataflowEdges": {
          "shape": "DataflowEdgeList",
          "documentation": "<p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code>Config</code> and a <i>to</i> <code>Config</code>.</p>"
        },
        "minimumViableContactDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>"
        },
        "name": {
          "shape": "SafeName",
          "documentation": "<p>Name of a mission profile.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a mission profile.</p>"
        },
        "trackingConfigArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of a tracking <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "Criticality": {
      "type": "string",
      "enum": [
        "PREFERRED",
        "REMOVED",
        "REQUIRED"
      ]
    },
    "DataflowDetail": {
      "type": "structure",
      "members": {
        "destination": {
          "shape": "Destination"
        },
        "source": {
          "shape": "Source"
        }
      },
      "documentation": "<p>Information about a dataflow edge used in a contact.</p>"
    },
    "DataflowEdge": {
      "type": "list",
      "member": {
        "shape": "ConfigArn"
      },
      "max": 2,
      "min": 2
    },
    "DataflowEdgeList": {
      "type": "list",
      "member": {
        "shape": "DataflowEdge"
      }
    },
    "DataflowEndpoint": {
      "type": "structure",
      "members": {
        "address": {
          "shape": "SocketAddress",
          "documentation": "<p>Socket address of a dataflow endpoint.</p>"
        },
        "mtu": {
          "shape": "DataflowEndpointmtuInteger",
          "documentation": "<p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>"
        },
        "name": {
          "shape": "SafeName",
          "documentation": "<p>Name of a dataflow endpoint.</p>"
        },
        "status": {
          "shape": "EndpointStatus",
          "documentation": "<p>Status of a dataflow endpoint.</p>"
        }
      },
      "documentation": "<p>Information about a dataflow endpoint.</p>"
    },
    "DataflowEndpointConfig": {
      "type": "structure",
      "required": [
        "dataflowEndpointName"
      ],
      "members": {
        "dataflowEndpointName": {
          "shape": "String",
          "documentation": "<p>Name of a dataflow endpoint.</p>"
        },
        "dataflowEndpointRegion": {
          "shape": "String",
          "documentation": "<p>Region of a dataflow endpoint.</p>"
        }
      },
      "documentation": "<p>Information about the dataflow endpoint <code>Config</code>.</p>"
    },
    "DataflowEndpointGroupArn": {
      "type": "string"
    },
    "DataflowEndpointGroupIdResponse": {
      "type": "structure",
      "members": {
        "dataflowEndpointGroupId": {
          "shape": "String",
          "documentation": "<p>UUID of a dataflow endpoint group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DataflowEndpointGroupList": {
      "type": "list",
      "member": {
        "shape": "DataflowEndpointListItem"
      }
    },
    "DataflowEndpointListItem": {
      "type": "structure",
      "members": {
        "dataflowEndpointGroupArn": {
          "shape": "DataflowEndpointGroupArn",
          "documentation": "<p>ARN of a dataflow endpoint group.</p>"
        },
        "dataflowEndpointGroupId": {
          "shape": "String",
          "documentation": "<p>UUID of a dataflow endpoint group.</p>"
        }
      },
      "documentation": "<p>Item in a list of <code>DataflowEndpoint</code> groups.</p>"
    },
    "DataflowEndpointmtuInteger": {
      "type": "integer",
      "box": true,
      "max": 1500,
      "min": 1400
    },
    "DataflowList": {
      "type": "list",
      "member": {
        "shape": "DataflowDetail"
      }
    },
    "DecodeConfig": {
      "type": "structure",
      "required": [
        "unvalidatedJSON"
      ],
      "members": {
        "unvalidatedJSON": {
          "shape": "JsonString",
          "documentation": "<p>Unvalidated JSON of a decode <code>Config</code>.</p>"
        }
      },
      "documentation": "<p>Information about the decode <code>Config</code>.</p>"
    },
    "DeleteConfigRequest": {
      "type": "structure",
      "required": [
        "configId",
        "configType"
      ],
      "members": {
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>",
          "location": "uri",
          "locationName": "configId"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>",
          "location": "uri",
          "locationName": "configType"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDataflowEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "dataflowEndpointGroupId"
      ],
      "members": {
        "dataflowEndpointGroupId": {
          "shape": "String",
          "documentation": "<p>UUID of a dataflow endpoint group.</p>",
          "location": "uri",
          "locationName": "dataflowEndpointGroupId"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteMissionProfileRequest": {
      "type": "structure",
      "required": [
        "missionProfileId"
      ],
      "members": {
        "missionProfileId": {
          "shape": "String",
          "documentation": "<p>UUID of a mission profile.</p>",
          "location": "uri",
          "locationName": "missionProfileId"
        }
      },
      "documentation": "<p/>"
    },
    "DemodulationConfig": {
      "type": "structure",
      "required": [
        "unvalidatedJSON"
      ],
      "members": {
        "unvalidatedJSON": {
          "shape": "JsonString",
          "documentation": "<p>Unvalidated JSON of a demodulation <code>Config</code>.</p>"
        }
      },
      "documentation": "<p>Information about the demodulation <code>Config</code>.</p>"
    },
    "DescribeContactRequest": {
      "type": "structure",
      "required": [
        "contactId"
      ],
      "members": {
        "contactId": {
          "shape": "String",
          "documentation": "<p>UUID of a contact.</p>",
          "location": "uri",
          "locationName": "contactId"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeContactResponse": {
      "type": "structure",
      "members": {
        "contactId": {
          "shape": "String",
          "documentation": "<p>UUID of a contact.</p>"
        },
        "contactStatus": {
          "shape": "ContactStatus",
          "documentation": "<p>Status of a contact.</p>"
        },
        "dataflowList": {
          "shape": "DataflowList",
          "documentation": "<p>List describing source and destination details for each dataflow edge.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>End time of a contact.</p>"
        },
        "errorMessage": {
          "shape": "String",
          "documentation": "<p>Error message for a contact.</p>"
        },
        "groundStation": {
          "shape": "String",
          "documentation": "<p>Ground station for a contact.</p>"
        },
        "maximumElevation": {
          "shape": "Elevation",
          "documentation": "<p>Maximum elevation angle of a contact.</p>"
        },
        "missionProfileArn": {
          "shape": "MissionProfileArn",
          "documentation": "<p>ARN of a mission profile.</p>"
        },
        "postPassEndTime": {
          "shape": "Timestamp",
          "documentation": "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"
        },
        "prePassStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"
        },
        "region": {
          "shape": "String",
          "documentation": "<p>Region of a contact.</p>"
        },
        "satelliteArn": {
          "shape": "satelliteArn",
          "documentation": "<p>ARN of a satellite.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>Start time of a contact.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a contact.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "Destination": {
      "type": "structure",
      "members": {
        "configDetails": {
          "shape": "ConfigDetails",
          "documentation": "<p>Additional details for a <code>Config</code>, if type is dataflow endpoint or antenna demod decode.</p>"
        },
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>"
        },
        "dataflowDestinationRegion": {
          "shape": "String",
          "documentation": "<p>Region of a dataflow destination.</p>"
        }
      },
      "documentation": "<p>Dataflow details for the destination side.</p>"
    },
    "Double": {
      "type": "double",
      "box": true
    },
    "DurationInSeconds": {
      "type": "integer",
      "box": true,
      "max": 21600,
      "min": 1
    },
    "Eirp": {
      "type": "structure",
      "required": [
        "units",
        "value"
      ],
      "members": {
        "units": {
          "shape": "EirpUnits",
          "documentation": "<p>Units of an EIRP.</p>"
        },
        "value": {
          "shape": "Double",
          "documentation": "<p>Value of an EIRP. Valid values are between 20.0 to 50.0 dBW.</p>"
        }
      },
      "documentation": "<p>Object that represents EIRP.</p>"
    },
    "EirpUnits": {
      "type": "string",
      "enum": [
        "dBW"
      ]
    },
    "Elevation": {
      "type": "structure",
      "required": [
        "unit",
        "value"
      ],
      "members": {
        "unit": {
          "shape": "AngleUnits",
          "documentation": "<p>Elevation angle units.</p>"
        },
        "value": {
          "shape": "Double",
          "documentation": "<p>Elevation angle value.</p>"
        }
      },
      "documentation": "<p>Elevation angle of the satellite in the sky during a contact.</p>"
    },
    "EndpointDetails": {
      "type": "structure",
      "members": {
        "endpoint": {
          "shape": "DataflowEndpoint",
          "documentation": "<p>A dataflow endpoint.</p>"
        },
        "securityDetails": {
          "shape": "SecurityDetails",
          "documentation": "<p>Endpoint security details.</p>"
        }
      },
      "documentation": "<p>Information about the endpoint details.</p>"
    },
    "EndpointDetailsList": {
      "type": "list",
      "member": {
        "shape": "EndpointDetails"
      }
    },
    "EndpointStatus": {
      "type": "string",
      "enum": [
        "created",
        "creating",
        "deleted",
        "deleting",
        "failed"
      ]
    },
    "Frequency": {
      "type": "structure",
      "required": [
        "units",
        "value"
      ],
      "members": {
        "units": {
          "shape": "FrequencyUnits",
          "documentation": "<p>Frequency units.</p>"
        },
        "value": {
          "shape": "Double",
          "documentation": "<p>Frequency value. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>"
        }
      },
      "documentation": "<p>Object that describes the frequency.</p>"
    },
    "FrequencyBandwidth": {
      "type": "structure",
      "required": [
        "units",
        "value"
      ],
      "members": {
        "units": {
          "shape": "BandwidthUnits",
          "documentation": "<p>Frequency bandwidth units.</p>"
        },
        "value": {
          "shape": "Double",
          "documentation": "<p>Frequency bandwidth value. AWS Ground Station currently has the following bandwidth limitations:</p> <ul> <li> <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p> </li> <li> <p>For <code>AntennaDownlinkconfig</code>, valid values are between 10 kHz to 54 MHz.</p> </li> <li> <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Object that describes the frequency bandwidth. </p>"
    },
    "FrequencyUnits": {
      "type": "string",
      "enum": [
        "GHz",
        "MHz",
        "kHz"
      ]
    },
    "GetConfigRequest": {
      "type": "structure",
      "required": [
        "configId",
        "configType"
      ],
      "members": {
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>",
          "location": "uri",
          "locationName": "configId"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>",
          "location": "uri",
          "locationName": "configType"
        }
      },
      "documentation": "<p/>"
    },
    "GetConfigResponse": {
      "type": "structure",
      "required": [
        "configArn",
        "configData",
        "configId",
        "name"
      ],
      "members": {
        "configArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of a <code>Config</code> </p>"
        },
        "configData": {
          "shape": "ConfigTypeData",
          "documentation": "<p>Data elements in a <code>Config</code>.</p>"
        },
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>Name of a <code>Config</code>.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetDataflowEndpointGroupRequest": {
      "type": "structure",
      "required": [
        "dataflowEndpointGroupId"
      ],
      "members": {
        "dataflowEndpointGroupId": {
          "shape": "String",
          "documentation": "<p>UUID of a dataflow endpoint group.</p>",
          "location": "uri",
          "locationName": "dataflowEndpointGroupId"
        }
      },
      "documentation": "<p/>"
    },
    "GetDataflowEndpointGroupResponse": {
      "type": "structure",
      "members": {
        "dataflowEndpointGroupArn": {
          "shape": "DataflowEndpointGroupArn",
          "documentation": "<p>ARN of a dataflow endpoint group.</p>"
        },
        "dataflowEndpointGroupId": {
          "shape": "String",
          "documentation": "<p>UUID of a dataflow endpoint group.</p>"
        },
        "endpointsDetails": {
          "shape": "EndpointDetailsList",
          "documentation": "<p>Details of a dataflow endpoint.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a dataflow endpoint group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetMinuteUsageRequest": {
      "type": "structure",
      "required": [
        "month",
        "year"
      ],
      "members": {
        "month": {
          "shape": "Integer",
          "documentation": "<p>The month being requested, with a value of 1-12.</p>"
        },
        "year": {
          "shape": "Integer",
          "documentation": "<p>The year being requested, in the format of YYYY.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetMinuteUsageResponse": {
      "type": "structure",
      "members": {
        "estimatedMinutesRemaining": {
          "shape": "Integer",
          "documentation": "<p>Estimated number of minutes remaining for an account, specific to the month being requested.</p>"
        },
        "isReservedMinutesCustomer": {
          "shape": "Boolean",
          "documentation": "<p>Returns whether or not an account has signed up for the reserved minutes pricing plan, specific to the month being requested.</p>"
        },
        "totalReservedMinuteAllocation": {
          "shape": "Integer",
          "documentation": "<p>Total number of reserved minutes allocated, specific to the month being requested.</p>"
        },
        "totalScheduledMinutes": {
          "shape": "Integer",
          "documentation": "<p>Total scheduled minutes for an account, specific to the month being requested.</p>"
        },
        "upcomingMinutesScheduled": {
          "shape": "Integer",
          "documentation": "<p>Upcoming minutes scheduled for an account, specific to the month being requested.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetMissionProfileRequest": {
      "type": "structure",
      "required": [
        "missionProfileId"
      ],
      "members": {
        "missionProfileId": {
          "shape": "String",
          "documentation": "<p>UUID of a mission profile.</p>",
          "location": "uri",
          "locationName": "missionProfileId"
        }
      },
      "documentation": "<p/>"
    },
    "GetMissionProfileResponse": {
      "type": "structure",
      "members": {
        "contactPostPassDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"
        },
        "contactPrePassDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Amount of time prior to contact start you’d like to receive a CloudWatch event indicating an upcoming pass.</p>"
        },
        "dataflowEdges": {
          "shape": "DataflowEdgeList",
          "documentation": "<p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code>Config</code> and a <i>to</i> <code>Config</code>.</p>"
        },
        "minimumViableContactDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>"
        },
        "missionProfileArn": {
          "shape": "MissionProfileArn",
          "documentation": "<p>ARN of a mission profile.</p>"
        },
        "missionProfileId": {
          "shape": "String",
          "documentation": "<p>UUID of a mission profile.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>Name of a mission profile.</p>"
        },
        "region": {
          "shape": "String",
          "documentation": "<p>Region of a mission profile.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a mission profile.</p>"
        },
        "trackingConfigArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of a tracking <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GetSatelliteRequest": {
      "type": "structure",
      "required": [
        "satelliteId"
      ],
      "members": {
        "satelliteId": {
          "shape": "String",
          "documentation": "<p>UUID of a satellite.</p>",
          "location": "uri",
          "locationName": "satelliteId"
        }
      },
      "documentation": "<p/>"
    },
    "GetSatelliteResponse": {
      "type": "structure",
      "members": {
        "groundStations": {
          "shape": "GroundStationIdList",
          "documentation": "<p>A list of ground stations to which the satellite is on-boarded.</p>"
        },
        "noradSatelliteID": {
          "shape": "noradSatelliteID",
          "documentation": "<p>NORAD satellite ID number.</p>"
        },
        "satelliteArn": {
          "shape": "satelliteArn",
          "documentation": "<p>ARN of a satellite.</p>"
        },
        "satelliteId": {
          "shape": "Uuid",
          "documentation": "<p>UUID of a satellite.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "GroundStationData": {
      "type": "structure",
      "members": {
        "groundStationId": {
          "shape": "String",
          "documentation": "<p>UUID of a ground station.</p>"
        },
        "groundStationName": {
          "shape": "String",
          "documentation": "<p>Name of a ground station.</p>"
        },
        "region": {
          "shape": "String",
          "documentation": "<p>Ground station Region.</p>"
        }
      },
      "documentation": "<p>Information about the ground station data.</p>"
    },
    "GroundStationIdList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "GroundStationList": {
      "type": "list",
      "member": {
        "shape": "GroundStationData"
      }
    },
    "Integer": {
      "type": "integer",
      "box": true
    },
    "JsonString": {
      "type": "string",
      "max": 8192,
      "min": 2,
      "pattern": "^[{}\\[\\]:.,\"0-9A-z\\-_\\s]{2,8192}$"
    },
    "ListConfigsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of <code>Configs</code> returned.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the request of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": "<p/>"
    },
    "ListConfigsResponse": {
      "type": "structure",
      "members": {
        "configList": {
          "shape": "ConfigList",
          "documentation": "<p>List of <code>Config</code> items.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the response of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListContactsRequest": {
      "type": "structure",
      "required": [
        "endTime",
        "startTime",
        "statusList"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>End time of a contact.</p>"
        },
        "groundStation": {
          "shape": "String",
          "documentation": "<p>Name of a ground station.</p>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of contacts returned.</p>"
        },
        "missionProfileArn": {
          "shape": "MissionProfileArn",
          "documentation": "<p>ARN of a mission profile.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the request of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>"
        },
        "satelliteArn": {
          "shape": "satelliteArn",
          "documentation": "<p>ARN of a satellite.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>Start time of a contact.</p>"
        },
        "statusList": {
          "shape": "StatusList",
          "documentation": "<p>Status of a contact reservation.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListContactsResponse": {
      "type": "structure",
      "members": {
        "contactList": {
          "shape": "ContactList",
          "documentation": "<p>List of contacts.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the response of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListDataflowEndpointGroupsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of dataflow endpoint groups returned.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the request of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": "<p/>"
    },
    "ListDataflowEndpointGroupsResponse": {
      "type": "structure",
      "members": {
        "dataflowEndpointGroupList": {
          "shape": "DataflowEndpointGroupList",
          "documentation": "<p>A list of dataflow endpoint groups.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the response of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListGroundStationsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of ground stations returned.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token that can be supplied in the next call to get the next page of ground stations.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "satelliteId": {
          "shape": "String",
          "documentation": "<p>Satellite ID to retrieve on-boarded ground stations.</p>",
          "location": "querystring",
          "locationName": "satelliteId"
        }
      },
      "documentation": "<p/>"
    },
    "ListGroundStationsResponse": {
      "type": "structure",
      "members": {
        "groundStationList": {
          "shape": "GroundStationList",
          "documentation": "<p>List of ground stations.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token that can be supplied in the next call to get the next page of ground stations.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListMissionProfilesRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of mission profiles returned.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the request of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": "<p/>"
    },
    "ListMissionProfilesResponse": {
      "type": "structure",
      "members": {
        "missionProfileList": {
          "shape": "MissionProfileList",
          "documentation": "<p>List of mission profiles.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token returned in the response of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListSatellitesRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of satellites returned.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token that can be supplied in the next call to get the next page of satellites.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      },
      "documentation": "<p/>"
    },
    "ListSatellitesResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Next token that can be supplied in the next call to get the next page of satellites.</p>"
        },
        "satellites": {
          "shape": "SatelliteList",
          "documentation": "<p>List of satellites.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>ARN of a resource.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      },
      "documentation": "<p/>"
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a resource.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "MissionProfileArn": {
      "type": "string"
    },
    "MissionProfileIdResponse": {
      "type": "structure",
      "members": {
        "missionProfileId": {
          "shape": "String",
          "documentation": "<p>UUID of a mission profile.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "MissionProfileList": {
      "type": "list",
      "member": {
        "shape": "MissionProfileListItem"
      }
    },
    "MissionProfileListItem": {
      "type": "structure",
      "members": {
        "missionProfileArn": {
          "shape": "MissionProfileArn",
          "documentation": "<p>ARN of a mission profile.</p>"
        },
        "missionProfileId": {
          "shape": "String",
          "documentation": "<p>UUID of a mission profile.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>Name of a mission profile.</p>"
        },
        "region": {
          "shape": "String",
          "documentation": "<p>Region of a mission profile.</p>"
        }
      },
      "documentation": "<p>Item in a list of mission profiles.</p>"
    },
    "Polarization": {
      "type": "string",
      "enum": [
        "LEFT_HAND",
        "NONE",
        "RIGHT_HAND"
      ]
    },
    "ReserveContactRequest": {
      "type": "structure",
      "required": [
        "endTime",
        "groundStation",
        "missionProfileArn",
        "satelliteArn",
        "startTime"
      ],
      "members": {
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>End time of a contact.</p>"
        },
        "groundStation": {
          "shape": "String",
          "documentation": "<p>Name of a ground station.</p>"
        },
        "missionProfileArn": {
          "shape": "MissionProfileArn",
          "documentation": "<p>ARN of a mission profile.</p>"
        },
        "satelliteArn": {
          "shape": "satelliteArn",
          "documentation": "<p>ARN of a satellite</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>Start time of a contact.</p>"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a contact.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RoleArn": {
      "type": "string"
    },
    "SafeName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[ a-zA-Z0-9_:-]{1,256}$"
    },
    "SatelliteList": {
      "type": "list",
      "member": {
        "shape": "SatelliteListItem"
      }
    },
    "SatelliteListItem": {
      "type": "structure",
      "members": {
        "groundStations": {
          "shape": "GroundStationIdList",
          "documentation": "<p>A list of ground stations to which the satellite is on-boarded.</p>"
        },
        "noradSatelliteID": {
          "shape": "noradSatelliteID",
          "documentation": "<p>NORAD satellite ID number.</p>"
        },
        "satelliteArn": {
          "shape": "satelliteArn",
          "documentation": "<p>ARN of a satellite.</p>"
        },
        "satelliteId": {
          "shape": "Uuid",
          "documentation": "<p>UUID of a satellite.</p>"
        }
      },
      "documentation": "<p>Item in a list of satellites.</p>"
    },
    "SecurityDetails": {
      "type": "structure",
      "required": [
        "roleArn",
        "securityGroupIds",
        "subnetIds"
      ],
      "members": {
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>ARN to a role needed for connecting streams to your instances. </p>"
        },
        "securityGroupIds": {
          "shape": "SecurityGroupIdList",
          "documentation": "<p>The security groups to attach to the elastic network interfaces.</p>"
        },
        "subnetIds": {
          "shape": "SubnetList",
          "documentation": "<p>A list of subnets where AWS Ground Station places elastic network interfaces to send streams to your instances.</p>"
        }
      },
      "documentation": "<p>Information about endpoints.</p>"
    },
    "SecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SocketAddress": {
      "type": "structure",
      "required": [
        "name",
        "port"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>Name of a socket address.</p>"
        },
        "port": {
          "shape": "Integer",
          "documentation": "<p>Port of a socket address.</p>"
        }
      },
      "documentation": "<p>Information about the socket address.</p>"
    },
    "Source": {
      "type": "structure",
      "members": {
        "configDetails": {
          "shape": "ConfigDetails",
          "documentation": "<p>Additional details for a <code>Config</code>, if type is dataflow endpoint or antenna demod decode.</p>"
        },
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>"
        },
        "dataflowSourceRegion": {
          "shape": "String",
          "documentation": "<p>Region of a dataflow source.</p>"
        }
      },
      "documentation": "<p>Dataflow details for the source side.</p>"
    },
    "SpectrumConfig": {
      "type": "structure",
      "required": [
        "bandwidth",
        "centerFrequency"
      ],
      "members": {
        "bandwidth": {
          "shape": "FrequencyBandwidth",
          "documentation": "<p>Bandwidth of a spectral <code>Config</code>. AWS Ground Station currently has the following bandwidth limitations:</p> <ul> <li> <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p> </li> <li> <p>For <code>AntennaDownlinkconfig</code> valid values are between 10 kHz to 54 MHz.</p> </li> <li> <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p> </li> </ul>"
        },
        "centerFrequency": {
          "shape": "Frequency",
          "documentation": "<p>Center frequency of a spectral <code>Config</code>. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>"
        },
        "polarization": {
          "shape": "Polarization",
          "documentation": "<p>Polarization of a spectral <code>Config</code>. Capturing both <code>\"RIGHT_HAND\"</code> and <code>\"LEFT_HAND\"</code> polarization requires two separate configs.</p>"
        }
      },
      "documentation": "<p>Object that describes a spectral <code>Config</code>.</p>"
    },
    "StatusList": {
      "type": "list",
      "member": {
        "shape": "ContactStatus"
      }
    },
    "String": {
      "type": "string"
    },
    "SubnetList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "String"
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
          "shape": "String",
          "documentation": "<p>ARN of a resource tag.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagsMap",
          "documentation": "<p>Tags assigned to a resource.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "TagsMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TrackingConfig": {
      "type": "structure",
      "required": [
        "autotrack"
      ],
      "members": {
        "autotrack": {
          "shape": "Criticality",
          "documentation": "<p>Current setting for autotrack.</p>"
        }
      },
      "documentation": "<p>Object that determines whether tracking should be used during a contact executed with this <code>Config</code> in the mission profile.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>ARN of a resource.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>Keys of a resource tag.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      },
      "documentation": "<p/>"
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "UpdateConfigRequest": {
      "type": "structure",
      "required": [
        "configData",
        "configId",
        "configType",
        "name"
      ],
      "members": {
        "configData": {
          "shape": "ConfigTypeData",
          "documentation": "<p>Parameters of a <code>Config</code>.</p>"
        },
        "configId": {
          "shape": "String",
          "documentation": "<p>UUID of a <code>Config</code>.</p>",
          "location": "uri",
          "locationName": "configId"
        },
        "configType": {
          "shape": "ConfigCapabilityType",
          "documentation": "<p>Type of a <code>Config</code>.</p>",
          "location": "uri",
          "locationName": "configType"
        },
        "name": {
          "shape": "SafeName",
          "documentation": "<p>Name of a <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "UpdateMissionProfileRequest": {
      "type": "structure",
      "required": [
        "missionProfileId"
      ],
      "members": {
        "contactPostPassDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"
        },
        "contactPrePassDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Amount of time after a contact ends that you’d like to receive a CloudWatch event indicating the pass has finished.</p>"
        },
        "dataflowEdges": {
          "shape": "DataflowEdgeList",
          "documentation": "<p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code>Config</code> and a <i>to</i> <code>Config</code>.</p>"
        },
        "minimumViableContactDurationSeconds": {
          "shape": "DurationInSeconds",
          "documentation": "<p>Smallest amount of time in seconds that you’d like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>"
        },
        "missionProfileId": {
          "shape": "String",
          "documentation": "<p>UUID of a mission profile.</p>",
          "location": "uri",
          "locationName": "missionProfileId"
        },
        "name": {
          "shape": "SafeName",
          "documentation": "<p>Name of a mission profile.</p>"
        },
        "trackingConfigArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of a tracking <code>Config</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "UplinkEchoConfig": {
      "type": "structure",
      "required": [
        "antennaUplinkConfigArn",
        "enabled"
      ],
      "members": {
        "antennaUplinkConfigArn": {
          "shape": "ConfigArn",
          "documentation": "<p>ARN of an uplink <code>Config</code>.</p>"
        },
        "enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether or not an uplink <code>Config</code> is enabled.</p>"
        }
      },
      "documentation": "<p>Information about an uplink echo <code>Config</code>.</p> <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the specified <code>AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code> is used in a contact.</p>"
    },
    "UplinkSpectrumConfig": {
      "type": "structure",
      "required": [
        "centerFrequency"
      ],
      "members": {
        "centerFrequency": {
          "shape": "Frequency",
          "documentation": "<p>Center frequency of an uplink spectral <code>Config</code>. Valid values are between 2025 to 2120 MHz.</p>"
        },
        "polarization": {
          "shape": "Polarization",
          "documentation": "<p>Polarization of an uplink spectral <code>Config</code>. Capturing both <code>\"RIGHT_HAND\"</code> and <code>\"LEFT_HAND\"</code> polarization requires two separate configs.</p>"
        }
      },
      "documentation": "<p>Information about the uplink spectral <code>Config</code>.</p>"
    },
    "Uuid": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"
    },
    "noradSatelliteID": {
      "type": "integer",
      "max": 99999,
      "min": 1
    },
    "satelliteArn": {
      "type": "string"
    }
  },
  "documentation": "<p>Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.</p>"
}
]===]))
