local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-04-19",
    "endpointPrefix": "models.lex",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Lex Model Building Service",
    "serviceId": "Lex Model Building Service",
    "signatureVersion": "v4",
    "signingName": "lex",
    "uid": "lex-models-2017-04-19"
  },
  "operations": {
    "CreateBotVersion": {
      "name": "CreateBotVersion",
      "http": {
        "method": "POST",
        "requestUri": "/bots/{name}/versions",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateBotVersionRequest"
      },
      "output": {
        "shape": "CreateBotVersionResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates a new version of the bot based on the <code>$LATEST</code> version. If the <code>$LATEST</code> version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version. It returns the last created version.</p> <note> <p>You can update only the <code>$LATEST</code> version of the bot. You can't update the numbered versions that you create with the <code>CreateBotVersion</code> operation.</p> </note> <p> When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p> This operation requires permission for the <code>lex:CreateBotVersion</code> action. </p>"
    },
    "CreateIntentVersion": {
      "name": "CreateIntentVersion",
      "http": {
        "method": "POST",
        "requestUri": "/intents/{name}/versions",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateIntentVersionRequest"
      },
      "output": {
        "shape": "CreateIntentVersionResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates a new version of an intent based on the <code>$LATEST</code> version of the intent. If the <code>$LATEST</code> version of this intent hasn't changed since you last updated it, Amazon Lex doesn't create a new version. It returns the last version you created.</p> <note> <p>You can update only the <code>$LATEST</code> version of the intent. You can't update the numbered versions that you create with the <code>CreateIntentVersion</code> operation.</p> </note> <p> When you create a version of an intent, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p>This operation requires permissions to perform the <code>lex:CreateIntentVersion</code> action. </p>"
    },
    "CreateSlotTypeVersion": {
      "name": "CreateSlotTypeVersion",
      "http": {
        "method": "POST",
        "requestUri": "/slottypes/{name}/versions",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateSlotTypeVersionRequest"
      },
      "output": {
        "shape": "CreateSlotTypeVersionResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates a new version of a slot type based on the <code>$LATEST</code> version of the specified slot type. If the <code>$LATEST</code> version of this resource has not changed since the last version that you created, Amazon Lex doesn't create a new version. It returns the last version that you created. </p> <note> <p>You can update only the <code>$LATEST</code> version of a slot type. You can't update the numbered versions that you create with the <code>CreateSlotTypeVersion</code> operation.</p> </note> <p>When you create a version of a slot type, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p>This operation requires permissions for the <code>lex:CreateSlotTypeVersion</code> action.</p>"
    },
    "DeleteBot": {
      "name": "DeleteBot",
      "http": {
        "method": "DELETE",
        "requestUri": "/bots/{name}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteBotRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes all versions of the bot, including the <code>$LATEST</code> version. To delete a specific version of the bot, use the <a>DeleteBotVersion</a> operation. The <code>DeleteBot</code> operation doesn't immediately remove the bot schema. Instead, it is marked for deletion and removed later.</p> <p>Amazon Lex stores utterances indefinitely for improving the ability of your bot to respond to user inputs. These utterances are not removed when the bot is deleted. To remove the utterances, use the <a>DeleteUtterances</a> operation.</p> <p>If a bot has an alias, you can't delete it. Instead, the <code>DeleteBot</code> operation returns a <code>ResourceInUseException</code> exception that includes a reference to the alias that refers to the bot. To remove the reference to the bot, delete the alias. If you get the same exception again, delete the referring alias until the <code>DeleteBot</code> operation is successful.</p> <p>This operation requires permissions for the <code>lex:DeleteBot</code> action.</p>"
    },
    "DeleteBotAlias": {
      "name": "DeleteBotAlias",
      "http": {
        "method": "DELETE",
        "requestUri": "/bots/{botName}/aliases/{name}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteBotAliasRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes an alias for the specified bot. </p> <p>You can't delete an alias that is used in the association between a bot and a messaging channel. If an alias is used in a channel association, the <code>DeleteBot</code> operation returns a <code>ResourceInUseException</code> exception that includes a reference to the channel association that refers to the bot. You can remove the reference to the alias by deleting the channel association. If you get the same exception again, delete the referring association until the <code>DeleteBotAlias</code> operation is successful.</p>"
    },
    "DeleteBotChannelAssociation": {
      "name": "DeleteBotChannelAssociation",
      "http": {
        "method": "DELETE",
        "requestUri": "/bots/{botName}/aliases/{aliasName}/channels/{name}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteBotChannelAssociationRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Deletes the association between an Amazon Lex bot and a messaging platform.</p> <p>This operation requires permission for the <code>lex:DeleteBotChannelAssociation</code> action.</p>"
    },
    "DeleteBotVersion": {
      "name": "DeleteBotVersion",
      "http": {
        "method": "DELETE",
        "requestUri": "/bots/{name}/versions/{version}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteBotVersionRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a specific version of a bot. To delete all versions of a bot, use the <a>DeleteBot</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteBotVersion</code> action.</p>"
    },
    "DeleteIntent": {
      "name": "DeleteIntent",
      "http": {
        "method": "DELETE",
        "requestUri": "/intents/{name}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteIntentRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes all versions of the intent, including the <code>$LATEST</code> version. To delete a specific version of the intent, use the <a>DeleteIntentVersion</a> operation.</p> <p> You can delete a version of an intent only if it is not referenced. To delete an intent that is referred to in one or more bots (see <a>how-it-works</a>), you must remove those references first. </p> <note> <p> If you get the <code>ResourceInUseException</code> exception, it provides an example reference that shows where the intent is referenced. To remove the reference to the intent, either update the bot or delete it. If you get the same exception when you attempt to delete the intent again, repeat until the intent has no references and the call to <code>DeleteIntent</code> is successful. </p> </note> <p> This operation requires permission for the <code>lex:DeleteIntent</code> action. </p>"
    },
    "DeleteIntentVersion": {
      "name": "DeleteIntentVersion",
      "http": {
        "method": "DELETE",
        "requestUri": "/intents/{name}/versions/{version}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteIntentVersionRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a specific version of an intent. To delete all versions of a intent, use the <a>DeleteIntent</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteIntentVersion</code> action.</p>"
    },
    "DeleteSlotType": {
      "name": "DeleteSlotType",
      "http": {
        "method": "DELETE",
        "requestUri": "/slottypes/{name}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteSlotTypeRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes all versions of the slot type, including the <code>$LATEST</code> version. To delete a specific version of the slot type, use the <a>DeleteSlotTypeVersion</a> operation.</p> <p> You can delete a version of a slot type only if it is not referenced. To delete a slot type that is referred to in one or more intents, you must remove those references first. </p> <note> <p> If you get the <code>ResourceInUseException</code> exception, the exception provides an example reference that shows the intent where the slot type is referenced. To remove the reference to the slot type, either update the intent or delete it. If you get the same exception when you attempt to delete the slot type again, repeat until the slot type has no references and the <code>DeleteSlotType</code> call is successful. </p> </note> <p>This operation requires permission for the <code>lex:DeleteSlotType</code> action.</p>"
    },
    "DeleteSlotTypeVersion": {
      "name": "DeleteSlotTypeVersion",
      "http": {
        "method": "DELETE",
        "requestUri": "/slottypes/{name}/version/{version}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteSlotTypeVersionRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a specific version of a slot type. To delete all versions of a slot type, use the <a>DeleteSlotType</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteSlotTypeVersion</code> action.</p>"
    },
    "DeleteUtterances": {
      "name": "DeleteUtterances",
      "http": {
        "method": "DELETE",
        "requestUri": "/bots/{botName}/utterances/{userId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteUtterancesRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Deletes stored utterances.</p> <p>Amazon Lex stores the utterances that users send to your bot. Utterances are stored for 15 days for use with the <a>GetUtterancesView</a> operation, and then stored indefinitely for use in improving the ability of your bot to respond to user input.</p> <p>Use the <code>DeleteUtterances</code> operation to manually delete stored utterances for a specific user. When you use the <code>DeleteUtterances</code> operation, utterances stored for improving your bot's ability to respond to user input are deleted immediately. Utterances stored for use with the <code>GetUtterancesView</code> operation are deleted after 15 days.</p> <p>This operation requires permissions for the <code>lex:DeleteUtterances</code> action.</p>"
    },
    "GetBot": {
      "name": "GetBot",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{name}/versions/{versionoralias}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotRequest"
      },
      "output": {
        "shape": "GetBotResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns metadata information for a specific bot. You must provide the bot name and the bot version or alias. </p> <p> This operation requires permissions for the <code>lex:GetBot</code> action. </p>"
    },
    "GetBotAlias": {
      "name": "GetBotAlias",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{botName}/aliases/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotAliasRequest"
      },
      "output": {
        "shape": "GetBotAliasResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns information about an Amazon Lex bot alias. For more information about aliases, see <a>versioning-aliases</a>.</p> <p>This operation requires permissions for the <code>lex:GetBotAlias</code> action.</p>"
    },
    "GetBotAliases": {
      "name": "GetBotAliases",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{botName}/aliases/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotAliasesRequest"
      },
      "output": {
        "shape": "GetBotAliasesResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns a list of aliases for a specified Amazon Lex bot.</p> <p>This operation requires permissions for the <code>lex:GetBotAliases</code> action.</p>"
    },
    "GetBotChannelAssociation": {
      "name": "GetBotChannelAssociation",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{botName}/aliases/{aliasName}/channels/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotChannelAssociationRequest"
      },
      "output": {
        "shape": "GetBotChannelAssociationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns information about the association between an Amazon Lex bot and a messaging platform.</p> <p>This operation requires permissions for the <code>lex:GetBotChannelAssociation</code> action.</p>"
    },
    "GetBotChannelAssociations": {
      "name": "GetBotChannelAssociations",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{botName}/aliases/{aliasName}/channels/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotChannelAssociationsRequest"
      },
      "output": {
        "shape": "GetBotChannelAssociationsResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p> Returns a list of all of the channels associated with the specified bot. </p> <p>The <code>GetBotChannelAssociations</code> operation requires permissions for the <code>lex:GetBotChannelAssociations</code> action.</p>"
    },
    "GetBotVersions": {
      "name": "GetBotVersions",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{name}/versions/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotVersionsRequest"
      },
      "output": {
        "shape": "GetBotVersionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets information about all of the versions of a bot.</p> <p>The <code>GetBotVersions</code> operation returns a <code>BotMetadata</code> object for each version of a bot. For example, if a bot has three numbered versions, the <code>GetBotVersions</code> operation returns four <code>BotMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetBotVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetBotVersions</code> action.</p>"
    },
    "GetBots": {
      "name": "GetBots",
      "http": {
        "method": "GET",
        "requestUri": "/bots/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBotsRequest"
      },
      "output": {
        "shape": "GetBotsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns bot information as follows: </p> <ul> <li> <p>If you provide the <code>nameContains</code> field, the response includes information for the <code>$LATEST</code> version of all bots whose name contains the specified string.</p> </li> <li> <p>If you don't specify the <code>nameContains</code> field, the operation returns information about the <code>$LATEST</code> version of all of your bots.</p> </li> </ul> <p>This operation requires permission for the <code>lex:GetBots</code> action.</p>"
    },
    "GetBuiltinIntent": {
      "name": "GetBuiltinIntent",
      "http": {
        "method": "GET",
        "requestUri": "/builtins/intents/{signature}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBuiltinIntentRequest"
      },
      "output": {
        "shape": "GetBuiltinIntentResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns information about a built-in intent.</p> <p>This operation requires permission for the <code>lex:GetBuiltinIntent</code> action.</p>"
    },
    "GetBuiltinIntents": {
      "name": "GetBuiltinIntents",
      "http": {
        "method": "GET",
        "requestUri": "/builtins/intents/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBuiltinIntentsRequest"
      },
      "output": {
        "shape": "GetBuiltinIntentsResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets a list of built-in intents that meet the specified criteria.</p> <p>This operation requires permission for the <code>lex:GetBuiltinIntents</code> action.</p>"
    },
    "GetBuiltinSlotTypes": {
      "name": "GetBuiltinSlotTypes",
      "http": {
        "method": "GET",
        "requestUri": "/builtins/slottypes/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBuiltinSlotTypesRequest"
      },
      "output": {
        "shape": "GetBuiltinSlotTypesResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets a list of built-in slot types that meet the specified criteria.</p> <p>For a list of built-in slot types, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p> <p>This operation requires permission for the <code>lex:GetBuiltInSlotTypes</code> action.</p>"
    },
    "GetExport": {
      "name": "GetExport",
      "http": {
        "method": "GET",
        "requestUri": "/exports/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetExportRequest"
      },
      "output": {
        "shape": "GetExportResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Exports the contents of a Amazon Lex resource in a specified format. </p>"
    },
    "GetImport": {
      "name": "GetImport",
      "http": {
        "method": "GET",
        "requestUri": "/imports/{importId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetImportRequest"
      },
      "output": {
        "shape": "GetImportResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets information about an import job started with the <code>StartImport</code> operation.</p>"
    },
    "GetIntent": {
      "name": "GetIntent",
      "http": {
        "method": "GET",
        "requestUri": "/intents/{name}/versions/{version}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntentRequest"
      },
      "output": {
        "shape": "GetIntentResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p> Returns information about an intent. In addition to the intent name, you must specify the intent version. </p> <p> This operation requires permissions to perform the <code>lex:GetIntent</code> action. </p>"
    },
    "GetIntentVersions": {
      "name": "GetIntentVersions",
      "http": {
        "method": "GET",
        "requestUri": "/intents/{name}/versions/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntentVersionsRequest"
      },
      "output": {
        "shape": "GetIntentVersionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets information about all of the versions of an intent.</p> <p>The <code>GetIntentVersions</code> operation returns an <code>IntentMetadata</code> object for each version of an intent. For example, if an intent has three numbered versions, the <code>GetIntentVersions</code> operation returns four <code>IntentMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetIntentVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetIntentVersions</code> action.</p>"
    },
    "GetIntents": {
      "name": "GetIntents",
      "http": {
        "method": "GET",
        "requestUri": "/intents/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntentsRequest"
      },
      "output": {
        "shape": "GetIntentsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns intent information as follows: </p> <ul> <li> <p>If you specify the <code>nameContains</code> field, returns the <code>$LATEST</code> version of all intents that contain the specified string.</p> </li> <li> <p> If you don't specify the <code>nameContains</code> field, returns information about the <code>$LATEST</code> version of all intents. </p> </li> </ul> <p> The operation requires permission for the <code>lex:GetIntents</code> action. </p>"
    },
    "GetSlotType": {
      "name": "GetSlotType",
      "http": {
        "method": "GET",
        "requestUri": "/slottypes/{name}/versions/{version}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSlotTypeRequest"
      },
      "output": {
        "shape": "GetSlotTypeResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns information about a specific version of a slot type. In addition to specifying the slot type name, you must specify the slot type version.</p> <p>This operation requires permissions for the <code>lex:GetSlotType</code> action.</p>"
    },
    "GetSlotTypeVersions": {
      "name": "GetSlotTypeVersions",
      "http": {
        "method": "GET",
        "requestUri": "/slottypes/{name}/versions/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSlotTypeVersionsRequest"
      },
      "output": {
        "shape": "GetSlotTypeVersionsResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets information about all versions of a slot type.</p> <p>The <code>GetSlotTypeVersions</code> operation returns a <code>SlotTypeMetadata</code> object for each version of a slot type. For example, if a slot type has three numbered versions, the <code>GetSlotTypeVersions</code> operation returns four <code>SlotTypeMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetSlotTypeVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetSlotTypeVersions</code> action.</p>"
    },
    "GetSlotTypes": {
      "name": "GetSlotTypes",
      "http": {
        "method": "GET",
        "requestUri": "/slottypes/",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSlotTypesRequest"
      },
      "output": {
        "shape": "GetSlotTypesResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Returns slot type information as follows: </p> <ul> <li> <p>If you specify the <code>nameContains</code> field, returns the <code>$LATEST</code> version of all slot types that contain the specified string.</p> </li> <li> <p> If you don't specify the <code>nameContains</code> field, returns information about the <code>$LATEST</code> version of all slot types. </p> </li> </ul> <p> The operation requires permission for the <code>lex:GetSlotTypes</code> action. </p>"
    },
    "GetUtterancesView": {
      "name": "GetUtterancesView",
      "http": {
        "method": "GET",
        "requestUri": "/bots/{botname}/utterances?view=aggregation",
        "responseCode": 200
      },
      "input": {
        "shape": "GetUtterancesViewRequest"
      },
      "output": {
        "shape": "GetUtterancesViewResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Use the <code>GetUtterancesView</code> operation to get information about the utterances that your users have made to your bot. You can use this list to tune the utterances that your bot responds to.</p> <p>For example, say that you have created a bot to order flowers. After your users have used your bot for a while, use the <code>GetUtterancesView</code> operation to see the requests that they have made and whether they have been successful. You might find that the utterance \"I want flowers\" is not being recognized. You could add this utterance to the <code>OrderFlowers</code> intent so that your bot recognizes that utterance.</p> <p>After you publish a new version of a bot, you can get information about the old version and the new so that you can compare the performance across the two versions. </p> <p>Utterance statistics are generated once a day. Data is available for the last 15 days. You can request information for up to 5 versions of your bot in each request. Amazon Lex returns the most frequent utterances received by the bot in the last 15 days. The response contains information about a maximum of 100 utterances for each version.</p> <p>If you set <code>childDirected</code> field to true when you created your bot, or if you opted out of participating in improving Amazon Lex, utterances are not available.</p> <p>This operation requires permissions for the <code>lex:GetUtterancesView</code> action.</p>"
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
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Gets a list of tags associated with the specified resource. Only bots, bot aliases, and bot channels can have tags associated with them.</p>"
    },
    "PutBot": {
      "name": "PutBot",
      "http": {
        "method": "PUT",
        "requestUri": "/bots/{name}/versions/$LATEST",
        "responseCode": 200
      },
      "input": {
        "shape": "PutBotRequest"
      },
      "output": {
        "shape": "PutBotResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates an Amazon Lex conversational bot or replaces an existing bot. When you create or update a bot you are only required to specify a name, a locale, and whether the bot is directed toward children under age 13. You can use this to add intents later, or to remove intents from an existing bot. When you create a bot with the minimum information, the bot is created or updated but Amazon Lex returns the <code/> response <code>FAILED</code>. You can build the bot after you add one or more intents. For more information about Amazon Lex bots, see <a>how-it-works</a>. </p> <p>If you specify the name of an existing bot, the fields in the request replace the existing values in the <code>$LATEST</code> version of the bot. Amazon Lex removes any fields that you don't provide values for in the request, except for the <code>idleTTLInSeconds</code> and <code>privacySettings</code> fields, which are set to their default values. If you don't specify values for required fields, Amazon Lex throws an exception.</p> <p>This operation requires permissions for the <code>lex:PutBot</code> action. For more information, see <a>security-iam</a>.</p>"
    },
    "PutBotAlias": {
      "name": "PutBotAlias",
      "http": {
        "method": "PUT",
        "requestUri": "/bots/{botName}/aliases/{name}",
        "responseCode": 200
      },
      "input": {
        "shape": "PutBotAliasRequest"
      },
      "output": {
        "shape": "PutBotAliasResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates an alias for the specified version of the bot or replaces an alias for the specified bot. To change the version of the bot that the alias points to, replace the alias. For more information about aliases, see <a>versioning-aliases</a>.</p> <p>This operation requires permissions for the <code>lex:PutBotAlias</code> action. </p>"
    },
    "PutIntent": {
      "name": "PutIntent",
      "http": {
        "method": "PUT",
        "requestUri": "/intents/{name}/versions/$LATEST",
        "responseCode": 200
      },
      "input": {
        "shape": "PutIntentRequest"
      },
      "output": {
        "shape": "PutIntentResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates an intent or replaces an existing intent.</p> <p>To define the interaction between the user and your bot, you use one or more intents. For a pizza ordering bot, for example, you would create an <code>OrderPizza</code> intent. </p> <p>To create an intent or replace an existing intent, you must provide the following:</p> <ul> <li> <p>Intent name. For example, <code>OrderPizza</code>.</p> </li> <li> <p>Sample utterances. For example, \"Can I order a pizza, please.\" and \"I want to order a pizza.\"</p> </li> <li> <p>Information to be gathered. You specify slot types for the information that your bot will request from the user. You can specify standard slot types, such as a date or a time, or custom slot types such as the size and crust of a pizza.</p> </li> <li> <p>How the intent will be fulfilled. You can provide a Lambda function or configure the intent to return the intent information to the client application. If you use a Lambda function, when all of the intent information is available, Amazon Lex invokes your Lambda function. If you configure your intent to return the intent information to the client application. </p> </li> </ul> <p>You can specify other optional information in the request, such as:</p> <ul> <li> <p>A confirmation prompt to ask the user to confirm an intent. For example, \"Shall I order your pizza?\"</p> </li> <li> <p>A conclusion statement to send to the user after the intent has been fulfilled. For example, \"I placed your pizza order.\"</p> </li> <li> <p>A follow-up prompt that asks the user for additional activity. For example, asking \"Do you want to order a drink with your pizza?\"</p> </li> </ul> <p>If you specify an existing intent name to update the intent, Amazon Lex replaces the values in the <code>$LATEST</code> version of the intent with the values in the request. Amazon Lex removes fields that you don't provide in the request. If you don't specify the required fields, Amazon Lex throws an exception. When you update the <code>$LATEST</code> version of an intent, the <code>status</code> field of any bot that uses the <code>$LATEST</code> version of the intent is set to <code>NOT_BUILT</code>.</p> <p>For more information, see <a>how-it-works</a>.</p> <p>This operation requires permissions for the <code>lex:PutIntent</code> action.</p>"
    },
    "PutSlotType": {
      "name": "PutSlotType",
      "http": {
        "method": "PUT",
        "requestUri": "/slottypes/{name}/versions/$LATEST",
        "responseCode": 200
      },
      "input": {
        "shape": "PutSlotTypeRequest"
      },
      "output": {
        "shape": "PutSlotTypeResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "PreconditionFailedException"
        }
      ],
      "documentation": "<p>Creates a custom slot type or replaces an existing custom slot type.</p> <p>To create a custom slot type, specify a name for the slot type and a set of enumeration values, which are the values that a slot of this type can assume. For more information, see <a>how-it-works</a>.</p> <p>If you specify the name of an existing slot type, the fields in the request replace the existing values in the <code>$LATEST</code> version of the slot type. Amazon Lex removes the fields that you don't provide in the request. If you don't specify required fields, Amazon Lex throws an exception. When you update the <code>$LATEST</code> version of a slot type, if a bot uses the <code>$LATEST</code> version of an intent that contains the slot type, the bot's <code>status</code> field is set to <code>NOT_BUILT</code>.</p> <p>This operation requires permissions for the <code>lex:PutSlotType</code> action.</p>"
    },
    "StartImport": {
      "name": "StartImport",
      "http": {
        "method": "POST",
        "requestUri": "/imports/",
        "responseCode": 201
      },
      "input": {
        "shape": "StartImportRequest"
      },
      "output": {
        "shape": "StartImportResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Starts a job to import a resource to Amazon Lex.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Adds the specified tags to the specified resource. If a tag key already exists, the existing value is replaced with the new value.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Removes tags from a bot, bot alias or bot channel.</p>"
    }
  },
  "shapes": {
    "AliasName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^([A-Za-z]_?)+$"
    },
    "AliasNameOrListAll": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^(-|^([A-Za-z]_?)+$)$"
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "Blob": {
      "type": "blob"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BotAliasMetadata": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AliasName",
          "documentation": "<p>The name of the bot alias.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot alias.</p>"
        },
        "botVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the Amazon Lex bot to which the alias points.</p>"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot to which the alias points.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot alias was updated. When you create a resource, the creation date and last updated date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot alias was created.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the bot alias.</p>"
        },
        "conversationLogs": {
          "shape": "ConversationLogsResponse",
          "documentation": "<p>Settings that determine how Amazon Lex uses conversation logs for the alias.</p>"
        }
      },
      "documentation": "<p>Provides information about a bot alias.</p>"
    },
    "BotAliasMetadataList": {
      "type": "list",
      "member": {
        "shape": "BotAliasMetadata"
      }
    },
    "BotChannelAssociation": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "BotChannelName",
          "documentation": "<p>The name of the association between the bot and the channel. </p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A text description of the association you are creating. </p>"
        },
        "botAlias": {
          "shape": "AliasName",
          "documentation": "<p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made. </p>"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the Amazon Lex bot to which this association is being made. </p> <note> <p>Currently, Amazon Lex supports associations with Facebook and Slack, and Twilio.</p> </note>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the association between the Amazon Lex bot and the channel was created. </p>"
        },
        "type": {
          "shape": "ChannelType",
          "documentation": "<p>Specifies the type of association by indicating the type of channel being established between the Amazon Lex bot and the external messaging platform.</p>"
        },
        "botConfiguration": {
          "shape": "ChannelConfigurationMap",
          "documentation": "<p>Provides information necessary to communicate with the messaging platform. </p>"
        },
        "status": {
          "shape": "ChannelStatus",
          "documentation": "<p>The status of the bot channel. </p> <ul> <li> <p> <code>CREATED</code> - The channel has been created and is ready for use.</p> </li> <li> <p> <code>IN_PROGRESS</code> - Channel creation is in progress.</p> </li> <li> <p> <code>FAILED</code> - There was an error creating the channel. For information about the reason for the failure, see the <code>failureReason</code> field.</p> </li> </ul>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to create the association.</p>"
        }
      },
      "documentation": "<p>Represents an association between an Amazon Lex bot and an external messaging platform.</p>"
    },
    "BotChannelAssociationList": {
      "type": "list",
      "member": {
        "shape": "BotChannelAssociation"
      }
    },
    "BotChannelName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^([A-Za-z]_?)+$"
    },
    "BotMetadata": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot. </p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the bot.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot was updated. When you create a bot, the creation date and last updated date are the same. </p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the bot. For a new bot, the version is always <code>$LATEST</code>.</p>"
        }
      },
      "documentation": "<p>Provides information about a bot. .</p>"
    },
    "BotMetadataList": {
      "type": "list",
      "member": {
        "shape": "BotMetadata"
      }
    },
    "BotName": {
      "type": "string",
      "max": 50,
      "min": 2,
      "pattern": "^([A-Za-z]_?)+$"
    },
    "BotVersions": {
      "type": "list",
      "member": {
        "shape": "Version"
      },
      "max": 5,
      "min": 1
    },
    "BuiltinIntentMetadata": {
      "type": "structure",
      "members": {
        "signature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>A unique identifier for the built-in intent. To find the signature for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>"
        },
        "supportedLocales": {
          "shape": "LocaleList",
          "documentation": "<p>A list of identifiers for the locales that the intent supports.</p>"
        }
      },
      "documentation": "<p>Provides metadata for a built-in intent.</p>"
    },
    "BuiltinIntentMetadataList": {
      "type": "list",
      "member": {
        "shape": "BuiltinIntentMetadata"
      }
    },
    "BuiltinIntentSignature": {
      "type": "string"
    },
    "BuiltinIntentSlot": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>A list of the slots defined for the intent.</p>"
        }
      },
      "documentation": "<p>Provides information about a slot used in a built-in intent.</p>"
    },
    "BuiltinIntentSlotList": {
      "type": "list",
      "member": {
        "shape": "BuiltinIntentSlot"
      }
    },
    "BuiltinSlotTypeMetadata": {
      "type": "structure",
      "members": {
        "signature": {
          "shape": "BuiltinSlotTypeSignature",
          "documentation": "<p>A unique identifier for the built-in slot type. To find the signature for a slot type, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p>"
        },
        "supportedLocales": {
          "shape": "LocaleList",
          "documentation": "<p>A list of target locales for the slot. </p>"
        }
      },
      "documentation": "<p>Provides information about a built in slot type.</p>"
    },
    "BuiltinSlotTypeMetadataList": {
      "type": "list",
      "member": {
        "shape": "BuiltinSlotTypeMetadata"
      }
    },
    "BuiltinSlotTypeSignature": {
      "type": "string"
    },
    "ChannelConfigurationMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      },
      "max": 10,
      "min": 1,
      "sensitive": true
    },
    "ChannelStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "CREATED",
        "FAILED"
      ]
    },
    "ChannelType": {
      "type": "string",
      "enum": [
        "Facebook",
        "Slack",
        "Twilio-Sms",
        "Kik"
      ]
    },
    "CodeHook": {
      "type": "structure",
      "required": [
        "uri",
        "messageVersion"
      ],
      "members": {
        "uri": {
          "shape": "LambdaARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Lambda function.</p>"
        },
        "messageVersion": {
          "shape": "MessageVersion",
          "documentation": "<p>The version of the request-response that you want Amazon Lex to use to invoke your Lambda function. For more information, see <a>using-lambda</a>.</p>"
        }
      },
      "documentation": "<p>Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot..</p>"
    },
    "ConfidenceThreshold": {
      "type": "double",
      "max": 1,
      "min": 0
    },
    "ContentString": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "ContentType": {
      "type": "string",
      "enum": [
        "PlainText",
        "SSML",
        "CustomPayload"
      ]
    },
    "ConversationLogsRequest": {
      "type": "structure",
      "required": [
        "logSettings",
        "iamRoleArn"
      ],
      "members": {
        "logSettings": {
          "shape": "LogSettingsRequestList",
          "documentation": "<p>The settings for your conversation logs. You can log the conversation text, conversation audio, or both.</p>"
        },
        "iamRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an IAM role with permission to write to your CloudWatch Logs for text logs and your S3 bucket for audio logs. If audio encryption is enabled, this role also provides access permission for the AWS KMS key used for encrypting audio logs. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/conversation-logs-role-and-policy.html\">Creating an IAM Role and Policy for Conversation Logs</a>.</p>"
        }
      },
      "documentation": "<p>Provides the settings needed for conversation logs.</p>"
    },
    "ConversationLogsResponse": {
      "type": "structure",
      "members": {
        "logSettings": {
          "shape": "LogSettingsResponseList",
          "documentation": "<p>The settings for your conversation logs. You can log text, audio, or both.</p>"
        },
        "iamRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role used to write your logs to CloudWatch Logs or an S3 bucket.</p>"
        }
      },
      "documentation": "<p>Contains information about conversation log settings.</p>"
    },
    "Count": {
      "type": "integer"
    },
    "CreateBotVersionRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot that you want to create a new version of. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Identifies a specific revision of the <code>$LATEST</code> version of the bot. If you specify a checksum and the <code>$LATEST</code> version of the bot has a different checksum, a <code>PreconditionFailedException</code> exception is returned and Amazon Lex doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the <code>$LATEST</code> version.</p>"
        }
      }
    },
    "CreateBotVersionResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot.</p>"
        },
        "intents": {
          "shape": "IntentList",
          "documentation": "<p>An array of <code>Intent</code> objects. For more information, see <a>PutBot</a>.</p>"
        },
        "clarificationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>The message that Amazon Lex uses when it doesn't understand the user's request. For more information, see <a>PutBot</a>. </p>"
        },
        "abortStatement": {
          "shape": "Statement",
          "documentation": "<p>The message that Amazon Lex uses to cancel a conversation. For more information, see <a>PutBot</a>.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p> When you send a request to create or update a bot, Amazon Lex sets the <code>status</code> response element to <code>BUILDING</code>. After Amazon Lex builds the bot, it sets <code>status</code> to <code>READY</code>. If Amazon Lex can't build the bot, it sets <code>status</code> to <code>FAILED</code>. Amazon Lex returns the reason for the failure in the <code>failureReason</code> response element. </p>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to build the bot.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the <code>$LATEST</code> version of this bot was updated. </p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the bot version was created.</p>"
        },
        "idleSessionTTLInSeconds": {
          "shape": "SessionTTL",
          "documentation": "<p>The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see <a>PutBot</a>.</p>"
        },
        "voiceId": {
          "shape": "String",
          "documentation": "<p>The Amazon Polly voice ID that Amazon Lex uses for voice interactions with the user.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum identifying the version of the bot that was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the bot. </p>"
        },
        "locale": {
          "shape": "Locale",
          "documentation": "<p> Specifies the target locale for the bot. </p>"
        },
        "childDirected": {
          "shape": "Boolean",
          "documentation": "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a> </p>"
        },
        "enableModelImprovements": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the bot uses accuracy improvements. <code>true</code> indicates that the bot is using the imoprovements, otherwise, <code>false</code>.</p>"
        },
        "detectSentiment": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether utterances entered by the user should be sent to Amazon Comprehend for sentiment analysis.</p>"
        }
      }
    },
    "CreateIntentVersionRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent that you want to create a new version of. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the <code>$LATEST</code> version of the intent that should be used to create the new version. If you specify a checksum and the <code>$LATEST</code> version of the intent has a different checksum, Amazon Lex returns a <code>PreconditionFailedException</code> exception and doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the <code>$LATEST</code> version.</p>"
        }
      }
    },
    "CreateIntentVersionResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the intent.</p>"
        },
        "slots": {
          "shape": "SlotList",
          "documentation": "<p>An array of slot types that defines the information required to fulfill the intent.</p>"
        },
        "sampleUtterances": {
          "shape": "IntentUtteranceList",
          "documentation": "<p>An array of sample utterances configured for the intent. </p>"
        },
        "confirmationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>If defined, the prompt that Amazon Lex uses to confirm the user's intent before fulfilling it. </p>"
        },
        "rejectionStatement": {
          "shape": "Statement",
          "documentation": "<p>If the user answers \"no\" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>"
        },
        "followUpPrompt": {
          "shape": "FollowUpPrompt",
          "documentation": "<p>If defined, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. </p>"
        },
        "conclusionStatement": {
          "shape": "Statement",
          "documentation": "<p>After the Lambda function specified in the <code>fulfillmentActivity</code> field fulfills the intent, Amazon Lex conveys this statement to the user. </p>"
        },
        "dialogCodeHook": {
          "shape": "CodeHook",
          "documentation": "<p>If defined, Amazon Lex invokes this Lambda function for each user input.</p>"
        },
        "fulfillmentActivity": {
          "shape": "FulfillmentActivity",
          "documentation": "<p> Describes how the intent is fulfilled. </p>"
        },
        "parentIntentSignature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>A unique identifier for a built-in intent.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was updated. </p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version number assigned to the new version of the intent.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the intent version created.</p>"
        },
        "kendraConfiguration": {
          "shape": "KendraConfiguration",
          "documentation": "<p>Configuration information, if any, for connectin an Amazon Kendra index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>"
        }
      }
    },
    "CreateSlotTypeVersionRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type that you want to create a new version for. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum for the <code>$LATEST</code> version of the slot type that you want to publish. If you specify a checksum and the <code>$LATEST</code> version of the slot type has a different checksum, Amazon Lex returns a <code>PreconditionFailedException</code> exception and doesn't publish the new version. If you don't specify a checksum, Amazon Lex publishes the <code>$LATEST</code> version.</p>"
        }
      }
    },
    "CreateSlotTypeVersionResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the slot type.</p>"
        },
        "enumerationValues": {
          "shape": "EnumerationValues",
          "documentation": "<p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version assigned to the new slot type version. </p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the <code>$LATEST</code> version of the slot type.</p>"
        },
        "valueSelectionStrategy": {
          "shape": "SlotValueSelectionStrategy",
          "documentation": "<p>The strategy that Amazon Lex uses to determine the value of the slot. For more information, see <a>PutSlotType</a>.</p>"
        },
        "parentSlotTypeSignature": {
          "shape": "CustomOrBuiltinSlotTypeName",
          "documentation": "<p>The built-in slot type used a the parent of the slot type.</p>"
        },
        "slotTypeConfigurations": {
          "shape": "SlotTypeConfigurations",
          "documentation": "<p>Configuration information that extends the parent built-in slot type.</p>"
        }
      }
    },
    "CustomOrBuiltinSlotTypeName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^((AMAZON\\.)_?|[A-Za-z]_?)+"
    },
    "DeleteBotAliasRequest": {
      "type": "structure",
      "required": [
        "name",
        "botName"
      ],
      "members": {
        "name": {
          "shape": "AliasName",
          "documentation": "<p>The name of the alias to delete. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot that the alias points to.</p>",
          "location": "uri",
          "locationName": "botName"
        }
      }
    },
    "DeleteBotChannelAssociationRequest": {
      "type": "structure",
      "required": [
        "name",
        "botName",
        "botAlias"
      ],
      "members": {
        "name": {
          "shape": "BotChannelName",
          "documentation": "<p>The name of the association. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the Amazon Lex bot.</p>",
          "location": "uri",
          "locationName": "botName"
        },
        "botAlias": {
          "shape": "AliasName",
          "documentation": "<p>An alias that points to the specific version of the Amazon Lex bot to which this association is being made.</p>",
          "location": "uri",
          "locationName": "aliasName"
        }
      }
    },
    "DeleteBotRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteBotVersionRequest": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "version": {
          "shape": "NumericalVersion",
          "documentation": "<p>The version of the bot to delete. You cannot delete the <code>$LATEST</code> version of the bot. To delete the <code>$LATEST</code> version, use the <a>DeleteBot</a> operation.</p>",
          "location": "uri",
          "locationName": "version"
        }
      }
    },
    "DeleteIntentRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteIntentVersionRequest": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "version": {
          "shape": "NumericalVersion",
          "documentation": "<p>The version of the intent to delete. You cannot delete the <code>$LATEST</code> version of the intent. To delete the <code>$LATEST</code> version, use the <a>DeleteIntent</a> operation.</p>",
          "location": "uri",
          "locationName": "version"
        }
      }
    },
    "DeleteSlotTypeRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteSlotTypeVersionRequest": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "version": {
          "shape": "NumericalVersion",
          "documentation": "<p>The version of the slot type to delete. You cannot delete the <code>$LATEST</code> version of the slot type. To delete the <code>$LATEST</code> version, use the <a>DeleteSlotType</a> operation.</p>",
          "location": "uri",
          "locationName": "version"
        }
      }
    },
    "DeleteUtterancesRequest": {
      "type": "structure",
      "required": [
        "botName",
        "userId"
      ],
      "members": {
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot that stored the utterances.</p>",
          "location": "uri",
          "locationName": "botName"
        },
        "userId": {
          "shape": "UserId",
          "documentation": "<p> The unique identifier for the user that made the utterances. This is the user ID that was sent in the <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> operation request that contained the utterance.</p>",
          "location": "uri",
          "locationName": "userId"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 200,
      "min": 0
    },
    "Destination": {
      "type": "string",
      "enum": [
        "CLOUDWATCH_LOGS",
        "S3"
      ]
    },
    "EnumerationValue": {
      "type": "structure",
      "required": [
        "value"
      ],
      "members": {
        "value": {
          "shape": "Value",
          "documentation": "<p>The value of the slot type.</p>"
        },
        "synonyms": {
          "shape": "SynonymList",
          "documentation": "<p>Additional values related to the slot type value.</p>"
        }
      },
      "documentation": "<p>Each slot type can have a set of values. Each enumeration value represents a value the slot type can take. </p> <p>For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values </p> <ul> <li> <p>thick</p> </li> <li> <p>thin</p> </li> <li> <p>stuffed</p> </li> </ul>"
    },
    "EnumerationValues": {
      "type": "list",
      "member": {
        "shape": "EnumerationValue"
      },
      "max": 10000,
      "min": 0
    },
    "ExportStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "READY",
        "FAILED"
      ]
    },
    "ExportType": {
      "type": "string",
      "enum": [
        "ALEXA_SKILLS_KIT",
        "LEX"
      ]
    },
    "FollowUpPrompt": {
      "type": "structure",
      "required": [
        "prompt",
        "rejectionStatement"
      ],
      "members": {
        "prompt": {
          "shape": "Prompt",
          "documentation": "<p>Prompts for information from the user. </p>"
        },
        "rejectionStatement": {
          "shape": "Statement",
          "documentation": "<p>If the user answers \"no\" to the question defined in the <code>prompt</code> field, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>"
        }
      },
      "documentation": "<p>A prompt for additional activity after an intent is fulfilled. For example, after the <code>OrderPizza</code> intent is fulfilled, you might prompt the user to find out whether the user wants to order drinks.</p>"
    },
    "FulfillmentActivity": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "FulfillmentActivityType",
          "documentation": "<p> How the intent should be fulfilled, either by running a Lambda function or by returning the slot data to the client application. </p>"
        },
        "codeHook": {
          "shape": "CodeHook",
          "documentation": "<p> A description of the Lambda function that is run to fulfill the intent. </p>"
        }
      },
      "documentation": "<p> Describes how the intent is fulfilled after the user provides all of the information required for the intent. You can provide a Lambda function to process the intent, or you can return the intent information to the client application. We recommend that you use a Lambda function so that the relevant logic lives in the Cloud and limit the client-side code primarily to presentation. If you need to update the logic, you only update the Lambda function; you don't need to upgrade your client application. </p> <p>Consider the following examples:</p> <ul> <li> <p>In a pizza ordering application, after the user provides all of the information for placing an order, you use a Lambda function to place an order with a pizzeria. </p> </li> <li> <p>In a gaming application, when a user says \"pick up a rock,\" this information must go back to the client application so that it can perform the operation and update the graphics. In this case, you want Amazon Lex to return the intent data to the client. </p> </li> </ul>"
    },
    "FulfillmentActivityType": {
      "type": "string",
      "enum": [
        "ReturnIntent",
        "CodeHook"
      ]
    },
    "GetBotAliasRequest": {
      "type": "structure",
      "required": [
        "name",
        "botName"
      ],
      "members": {
        "name": {
          "shape": "AliasName",
          "documentation": "<p>The name of the bot alias. The name is case sensitive.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>",
          "location": "uri",
          "locationName": "botName"
        }
      }
    },
    "GetBotAliasResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AliasName",
          "documentation": "<p>The name of the bot alias.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot alias.</p>"
        },
        "botVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the bot that the alias points to.</p>"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot that the alias points to.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot alias was created.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the bot alias.</p>"
        },
        "conversationLogs": {
          "shape": "ConversationLogsResponse",
          "documentation": "<p>The settings that determine how Amazon Lex uses conversation logs for the alias.</p>"
        }
      }
    },
    "GetBotAliasesRequest": {
      "type": "structure",
      "required": [
        "botName"
      ],
      "members": {
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>",
          "location": "uri",
          "locationName": "botName"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of aliases to return in the response. The default is 50. . </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nameContains": {
          "shape": "AliasName",
          "documentation": "<p>Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>",
          "location": "querystring",
          "locationName": "nameContains"
        }
      }
    },
    "GetBotAliasesResponse": {
      "type": "structure",
      "members": {
        "BotAliases": {
          "shape": "BotAliasMetadataList",
          "documentation": "<p>An array of <code>BotAliasMetadata</code> objects, each describing a bot alias.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request. </p>"
        }
      }
    },
    "GetBotChannelAssociationRequest": {
      "type": "structure",
      "required": [
        "name",
        "botName",
        "botAlias"
      ],
      "members": {
        "name": {
          "shape": "BotChannelName",
          "documentation": "<p>The name of the association between the bot and the channel. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the Amazon Lex bot.</p>",
          "location": "uri",
          "locationName": "botName"
        },
        "botAlias": {
          "shape": "AliasName",
          "documentation": "<p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.</p>",
          "location": "uri",
          "locationName": "aliasName"
        }
      }
    },
    "GetBotChannelAssociationResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "BotChannelName",
          "documentation": "<p>The name of the association between the bot and the channel.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the association between the bot and the channel.</p>"
        },
        "botAlias": {
          "shape": "AliasName",
          "documentation": "<p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.</p>"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the Amazon Lex bot.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the association between the bot and the channel was created.</p>"
        },
        "type": {
          "shape": "ChannelType",
          "documentation": "<p>The type of the messaging platform.</p>"
        },
        "botConfiguration": {
          "shape": "ChannelConfigurationMap",
          "documentation": "<p>Provides information that the messaging platform needs to communicate with the Amazon Lex bot.</p>"
        },
        "status": {
          "shape": "ChannelStatus",
          "documentation": "<p>The status of the bot channel. </p> <ul> <li> <p> <code>CREATED</code> - The channel has been created and is ready for use.</p> </li> <li> <p> <code>IN_PROGRESS</code> - Channel creation is in progress.</p> </li> <li> <p> <code>FAILED</code> - There was an error creating the channel. For information about the reason for the failure, see the <code>failureReason</code> field.</p> </li> </ul>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to create the association.</p>"
        }
      }
    },
    "GetBotChannelAssociationsRequest": {
      "type": "structure",
      "required": [
        "botName",
        "botAlias"
      ],
      "members": {
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the Amazon Lex bot in the association.</p>",
          "location": "uri",
          "locationName": "botName"
        },
        "botAlias": {
          "shape": "AliasNameOrListAll",
          "documentation": "<p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.</p>",
          "location": "uri",
          "locationName": "aliasName"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of associations to return in the response. The default is 50. </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nameContains": {
          "shape": "BotChannelName",
          "documentation": "<p>Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot channel associations, use a hyphen (\"-\") as the <code>nameContains</code> parameter.</p>",
          "location": "querystring",
          "locationName": "nameContains"
        }
      }
    },
    "GetBotChannelAssociationsResponse": {
      "type": "structure",
      "members": {
        "botChannelAssociations": {
          "shape": "BotChannelAssociationList",
          "documentation": "<p>An array of objects, one for each association, that provides information about the Amazon Lex bot and its association with the channel. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request. </p>"
        }
      }
    },
    "GetBotRequest": {
      "type": "structure",
      "required": [
        "name",
        "versionOrAlias"
      ],
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "versionOrAlias": {
          "shape": "String",
          "documentation": "<p>The version or alias of the bot.</p>",
          "location": "uri",
          "locationName": "versionoralias"
        }
      }
    },
    "GetBotResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot.</p>"
        },
        "intents": {
          "shape": "IntentList",
          "documentation": "<p>An array of <code>intent</code> objects. For more information, see <a>PutBot</a>.</p>"
        },
        "enableModelImprovements": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the bot uses accuracy improvements. <code>true</code> indicates that the bot is using the imoprovements, otherwise, <code>false</code>.</p>"
        },
        "nluIntentConfidenceThreshold": {
          "shape": "ConfidenceThreshold",
          "documentation": "<p>The score that determines where Amazon Lex inserts the <code>AMAZON.FallbackIntent</code>, <code>AMAZON.KendraSearchIntent</code>, or both when returning alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response. <code>AMAZON.FallbackIntent</code> is inserted if the confidence score for all intents is below this value. <code>AMAZON.KendraSearchIntent</code> is only inserted if it is configured for the bot.</p>"
        },
        "clarificationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>The message Amazon Lex uses when it doesn't understand the user's request. For more information, see <a>PutBot</a>. </p>"
        },
        "abortStatement": {
          "shape": "Statement",
          "documentation": "<p>The message that Amazon Lex returns when the user elects to end the conversation without completing it. For more information, see <a>PutBot</a>.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p>The status of the bot. </p> <p>When the status is <code>BUILDING</code> Amazon Lex is building the bot for testing and use.</p> <p>If the status of the bot is <code>READY_BASIC_TESTING</code>, you can test the bot using the exact utterances specified in the bot's intents. When the bot is ready for full testing or to run, the status is <code>READY</code>.</p> <p>If there was a problem with building the bot, the status is <code>FAILED</code> and the <code>failureReason</code> field explains why the bot did not build.</p> <p>If the bot was saved but not built, the status is <code>NOT_BUILT</code>.</p>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex explains why it failed to build the bot.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot was updated. When you create a resource, the creation date and last updated date are the same. </p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot was created.</p>"
        },
        "idleSessionTTLInSeconds": {
          "shape": "SessionTTL",
          "documentation": "<p>The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see <a>PutBot</a>.</p>"
        },
        "voiceId": {
          "shape": "String",
          "documentation": "<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see <a>PutBot</a>.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the bot used to identify a specific revision of the bot's <code>$LATEST</code> version.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the bot. For a new bot, the version is always <code>$LATEST</code>.</p>"
        },
        "locale": {
          "shape": "Locale",
          "documentation": "<p> The target locale for the bot. </p>"
        },
        "childDirected": {
          "shape": "Boolean",
          "documentation": "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a> </p>"
        },
        "detectSentiment": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether user utterances should be sent to Amazon Comprehend for sentiment analysis.</p>"
        }
      }
    },
    "GetBotVersionsRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot for which versions should be returned.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of bot versions to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetBotVersionsResponse": {
      "type": "structure",
      "members": {
        "bots": {
          "shape": "BotMetadataList",
          "documentation": "<p>An array of <code>BotMetadata</code> objects, one for each numbered version of the bot plus one for the <code>$LATEST</code> version.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>"
        }
      }
    },
    "GetBotsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of bots to return in the response that the request will return. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nameContains": {
          "shape": "BotName",
          "documentation": "<p>Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>",
          "location": "querystring",
          "locationName": "nameContains"
        }
      }
    },
    "GetBotsResponse": {
      "type": "structure",
      "members": {
        "bots": {
          "shape": "BotMetadataList",
          "documentation": "<p>An array of <code>botMetadata</code> objects, with one entry for each bot. </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of bots. </p>"
        }
      }
    },
    "GetBuiltinIntentRequest": {
      "type": "structure",
      "required": [
        "signature"
      ],
      "members": {
        "signature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>The unique identifier for a built-in intent. To find the signature for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>",
          "location": "uri",
          "locationName": "signature"
        }
      }
    },
    "GetBuiltinIntentResponse": {
      "type": "structure",
      "members": {
        "signature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>The unique identifier for a built-in intent.</p>"
        },
        "supportedLocales": {
          "shape": "LocaleList",
          "documentation": "<p>A list of locales that the intent supports.</p>"
        },
        "slots": {
          "shape": "BuiltinIntentSlotList",
          "documentation": "<p>An array of <code>BuiltinIntentSlot</code> objects, one entry for each slot type in the intent.</p>"
        }
      }
    },
    "GetBuiltinIntentsRequest": {
      "type": "structure",
      "members": {
        "locale": {
          "shape": "Locale",
          "documentation": "<p>A list of locales that the intent supports.</p>",
          "location": "querystring",
          "locationName": "locale"
        },
        "signatureContains": {
          "shape": "String",
          "documentation": "<p>Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the signature for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>",
          "location": "querystring",
          "locationName": "signatureContains"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of intents to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetBuiltinIntentsResponse": {
      "type": "structure",
      "members": {
        "intents": {
          "shape": "BuiltinIntentMetadataList",
          "documentation": "<p>An array of <code>builtinIntentMetadata</code> objects, one for each intent in the response.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.</p>"
        }
      }
    },
    "GetBuiltinSlotTypesRequest": {
      "type": "structure",
      "members": {
        "locale": {
          "shape": "Locale",
          "documentation": "<p>A list of locales that the slot type supports.</p>",
          "location": "querystring",
          "locationName": "locale"
        },
        "signatureContains": {
          "shape": "String",
          "documentation": "<p>Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>",
          "location": "querystring",
          "locationName": "signatureContains"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of slot types to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetBuiltinSlotTypesResponse": {
      "type": "structure",
      "members": {
        "slotTypes": {
          "shape": "BuiltinSlotTypeMetadataList",
          "documentation": "<p>An array of <code>BuiltInSlotTypeMetadata</code> objects, one entry for each slot type returned.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, the response includes a pagination token that you can use in your next request to fetch the next page of slot types.</p>"
        }
      }
    },
    "GetExportRequest": {
      "type": "structure",
      "required": [
        "name",
        "version",
        "resourceType",
        "exportType"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the bot to export.</p>",
          "location": "querystring",
          "locationName": "name"
        },
        "version": {
          "shape": "NumericalVersion",
          "documentation": "<p>The version of the bot to export.</p>",
          "location": "querystring",
          "locationName": "version"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource to export. </p>",
          "location": "querystring",
          "locationName": "resourceType"
        },
        "exportType": {
          "shape": "ExportType",
          "documentation": "<p>The format of the exported data.</p>",
          "location": "querystring",
          "locationName": "exportType"
        }
      }
    },
    "GetExportResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the bot being exported.</p>"
        },
        "version": {
          "shape": "NumericalVersion",
          "documentation": "<p>The version of the bot being exported.</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the exported resource.</p>"
        },
        "exportType": {
          "shape": "ExportType",
          "documentation": "<p>The format of the exported data.</p>"
        },
        "exportStatus": {
          "shape": "ExportStatus",
          "documentation": "<p>The status of the export. </p> <ul> <li> <p> <code>IN_PROGRESS</code> - The export is in progress.</p> </li> <li> <p> <code>READY</code> - The export is complete.</p> </li> <li> <p> <code>FAILED</code> - The export could not be completed.</p> </li> </ul>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to export the resource.</p>"
        },
        "url": {
          "shape": "String",
          "documentation": "<p>An S3 pre-signed URL that provides the location of the exported resource. The exported resource is a ZIP archive that contains the exported resource in JSON format. The structure of the archive may change. Your code should not rely on the archive structure.</p>"
        }
      }
    },
    "GetImportRequest": {
      "type": "structure",
      "required": [
        "importId"
      ],
      "members": {
        "importId": {
          "shape": "String",
          "documentation": "<p>The identifier of the import job information to return.</p>",
          "location": "uri",
          "locationName": "importId"
        }
      }
    },
    "GetImportResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name given to the import job.</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource imported.</p>"
        },
        "mergeStrategy": {
          "shape": "MergeStrategy",
          "documentation": "<p>The action taken when there was a conflict between an existing resource and a resource in the import file.</p>"
        },
        "importId": {
          "shape": "String",
          "documentation": "<p>The identifier for the specific import job.</p>"
        },
        "importStatus": {
          "shape": "ImportStatus",
          "documentation": "<p>The status of the import job. If the status is <code>FAILED</code>, you can get the reason for the failure from the <code>failureReason</code> field.</p>"
        },
        "failureReason": {
          "shape": "StringList",
          "documentation": "<p>A string that describes why an import job failed to complete.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp for the date and time that the import job was created.</p>"
        }
      }
    },
    "GetIntentRequest": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the intent.</p>",
          "location": "uri",
          "locationName": "version"
        }
      }
    },
    "GetIntentResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the intent.</p>"
        },
        "slots": {
          "shape": "SlotList",
          "documentation": "<p>An array of intent slots configured for the intent.</p>"
        },
        "sampleUtterances": {
          "shape": "IntentUtteranceList",
          "documentation": "<p>An array of sample utterances configured for the intent.</p>"
        },
        "confirmationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>If defined in the bot, Amazon Lex uses prompt to confirm the intent before fulfilling the user's request. For more information, see <a>PutIntent</a>. </p>"
        },
        "rejectionStatement": {
          "shape": "Statement",
          "documentation": "<p>If the user answers \"no\" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>"
        },
        "followUpPrompt": {
          "shape": "FollowUpPrompt",
          "documentation": "<p>If defined in the bot, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. For more information, see <a>PutIntent</a>.</p>"
        },
        "conclusionStatement": {
          "shape": "Statement",
          "documentation": "<p>After the Lambda function specified in the <code>fulfillmentActivity</code> element fulfills the intent, Amazon Lex conveys this statement to the user.</p>"
        },
        "dialogCodeHook": {
          "shape": "CodeHook",
          "documentation": "<p>If defined in the bot, Amazon Amazon Lex invokes this Lambda function for each user input. For more information, see <a>PutIntent</a>. </p>"
        },
        "fulfillmentActivity": {
          "shape": "FulfillmentActivity",
          "documentation": "<p>Describes how the intent is fulfilled. For more information, see <a>PutIntent</a>. </p>"
        },
        "parentIntentSignature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>A unique identifier for a built-in intent.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was updated. When you create a resource, the creation date and the last updated date are the same. </p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the intent.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the intent.</p>"
        },
        "kendraConfiguration": {
          "shape": "KendraConfiguration",
          "documentation": "<p>Configuration information, if any, to connect to an Amazon Kendra index with the <code>AMAZON.KendraSearchIntent</code> intent.</p>"
        }
      }
    },
    "GetIntentVersionsRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent for which versions should be returned.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of intent versions to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetIntentVersionsResponse": {
      "type": "structure",
      "members": {
        "intents": {
          "shape": "IntentMetadataList",
          "documentation": "<p>An array of <code>IntentMetadata</code> objects, one for each numbered version of the intent plus one for the <code>$LATEST</code> version.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>"
        }
      }
    },
    "GetIntentsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of intents to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nameContains": {
          "shape": "IntentName",
          "documentation": "<p>Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>",
          "location": "querystring",
          "locationName": "nameContains"
        }
      }
    },
    "GetIntentsResponse": {
      "type": "structure",
      "members": {
        "intents": {
          "shape": "IntentMetadataList",
          "documentation": "<p>An array of <code>Intent</code> objects. For more information, see <a>PutBot</a>.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, the response includes a pagination token that you can specify in your next request to fetch the next page of intents. </p>"
        }
      }
    },
    "GetSlotTypeRequest": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type. The name is case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the slot type. </p>",
          "location": "uri",
          "locationName": "version"
        }
      }
    },
    "GetSlotTypeResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the slot type.</p>"
        },
        "enumerationValues": {
          "shape": "EnumerationValues",
          "documentation": "<p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the slot type.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the <code>$LATEST</code> version of the slot type.</p>"
        },
        "valueSelectionStrategy": {
          "shape": "SlotValueSelectionStrategy",
          "documentation": "<p>The strategy that Amazon Lex uses to determine the value of the slot. For more information, see <a>PutSlotType</a>.</p>"
        },
        "parentSlotTypeSignature": {
          "shape": "CustomOrBuiltinSlotTypeName",
          "documentation": "<p>The built-in slot type used as a parent for the slot type.</p>"
        },
        "slotTypeConfigurations": {
          "shape": "SlotTypeConfigurations",
          "documentation": "<p>Configuration information that extends the parent built-in slot type.</p>"
        }
      }
    },
    "GetSlotTypeVersionsRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type for which versions should be returned.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of slot type versions to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetSlotTypeVersionsResponse": {
      "type": "structure",
      "members": {
        "slotTypes": {
          "shape": "SlotTypeMetadataList",
          "documentation": "<p>An array of <code>SlotTypeMetadata</code> objects, one for each numbered version of the slot type plus one for the <code>$LATEST</code> version.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>"
        }
      }
    },
    "GetSlotTypesRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of slot types to return in the response. The default is 10.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nameContains": {
          "shape": "SlotTypeName",
          "documentation": "<p>Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\"</p>",
          "location": "querystring",
          "locationName": "nameContains"
        }
      }
    },
    "GetSlotTypesResponse": {
      "type": "structure",
      "members": {
        "slotTypes": {
          "shape": "SlotTypeMetadataList",
          "documentation": "<p>An array of objects, one for each slot type, that provides information such as the name of the slot type, the version, and a description.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of slot types.</p>"
        }
      }
    },
    "GetUtterancesViewRequest": {
      "type": "structure",
      "required": [
        "botName",
        "botVersions",
        "statusType"
      ],
      "members": {
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot for which utterance information should be returned.</p>",
          "location": "uri",
          "locationName": "botname"
        },
        "botVersions": {
          "shape": "BotVersions",
          "documentation": "<p>An array of bot versions for which utterance information should be returned. The limit is 5 versions per request.</p>",
          "location": "querystring",
          "locationName": "bot_versions"
        },
        "statusType": {
          "shape": "StatusType",
          "documentation": "<p>To return utterances that were recognized and handled, use <code>Detected</code>. To return utterances that were not recognized, use <code>Missed</code>.</p>",
          "location": "querystring",
          "locationName": "status_type"
        }
      }
    },
    "GetUtterancesViewResponse": {
      "type": "structure",
      "members": {
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot for which utterance information was returned.</p>"
        },
        "utterances": {
          "shape": "ListsOfUtterances",
          "documentation": "<p>An array of <a>UtteranceList</a> objects, each containing a list of <a>UtteranceData</a> objects describing the utterances that were processed by your bot. The response contains a maximum of 100 <code>UtteranceData</code> objects for each version. Amazon Lex returns the most frequent utterances received by the bot in the last 15 days.</p>"
        }
      }
    },
    "GroupNumber": {
      "type": "integer",
      "box": true,
      "max": 5,
      "min": 1
    },
    "IamRoleArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "^arn:[\\w\\-]+:iam::[\\d]{12}:role/.+$"
    },
    "ImportStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "COMPLETE",
        "FAILED"
      ]
    },
    "Intent": {
      "type": "structure",
      "required": [
        "intentName",
        "intentVersion"
      ],
      "members": {
        "intentName": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent.</p>"
        },
        "intentVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the intent.</p>"
        }
      },
      "documentation": "<p>Identifies the specific version of an intent.</p>"
    },
    "IntentList": {
      "type": "list",
      "member": {
        "shape": "Intent"
      }
    },
    "IntentMetadata": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the intent.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was updated. When you create an intent, the creation date and last updated date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the intent.</p>"
        }
      },
      "documentation": "<p>Provides information about an intent.</p>"
    },
    "IntentMetadataList": {
      "type": "list",
      "member": {
        "shape": "IntentMetadata"
      }
    },
    "IntentName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^([A-Za-z]_?)+$"
    },
    "IntentUtteranceList": {
      "type": "list",
      "member": {
        "shape": "Utterance"
      },
      "max": 1500,
      "min": 0
    },
    "KendraConfiguration": {
      "type": "structure",
      "required": [
        "kendraIndex",
        "role"
      ],
      "members": {
        "kendraIndex": {
          "shape": "KendraIndexArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon Kendra index that you want the AMAZON.KendraSearchIntent intent to search. The index must be in the same account and Region as the Amazon Lex bot. If the Amazon Kendra index does not exist, you get an exception when you call the <code>PutIntent</code> operation.</p>"
        },
        "queryFilterString": {
          "shape": "QueryFilterString",
          "documentation": "<p>A query filter that Amazon Lex sends to Amazon Kendra to filter the response from the query. The filter is in the format defined by Amazon Kendra. For more information, see <a href=\"http://docs.aws.amazon.com/kendra/latest/dg/filtering.html\">Filtering queries</a>.</p> <p>You can override this filter string with a new filter string at runtime.</p>"
        },
        "role": {
          "shape": "roleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an IAM role that has permission to search the Amazon Kendra index. The role must be in the same account and Region as the Amazon Lex bot. If the role does not exist, you get an exception when you call the <code>PutIntent</code> operation.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for the AMAZON.KendraSearchIntent intent. When you use this intent, Amazon Lex searches the specified Amazon Kendra index and returns documents from the index that match the user's utterance. For more information, see <a href=\"http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html\"> AMAZON.KendraSearchIntent</a>.</p>"
    },
    "KendraIndexArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws:kendra:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:index\\/[a-zA-Z0-9][a-zA-Z0-9_-]*"
    },
    "KmsKeyArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$"
    },
    "LambdaARN": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?"
    },
    "ListOfUtterance": {
      "type": "list",
      "member": {
        "shape": "UtteranceData"
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to get a list of tags for.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with a resource.</p>"
        }
      }
    },
    "ListsOfUtterances": {
      "type": "list",
      "member": {
        "shape": "UtteranceList"
      }
    },
    "Locale": {
      "type": "string",
      "enum": [
        "en-US",
        "en-GB",
        "de-DE",
        "en-AU"
      ]
    },
    "LocaleList": {
      "type": "list",
      "member": {
        "shape": "Locale"
      }
    },
    "LogSettingsRequest": {
      "type": "structure",
      "required": [
        "logType",
        "destination",
        "resourceArn"
      ],
      "members": {
        "logType": {
          "shape": "LogType",
          "documentation": "<p>The type of logging to enable. Text logs are delivered to a CloudWatch Logs log group. Audio logs are delivered to an S3 bucket.</p>"
        },
        "destination": {
          "shape": "Destination",
          "documentation": "<p>Where the logs will be delivered. Text logs are delivered to a CloudWatch Logs log group. Audio logs are delivered to an S3 bucket.</p>"
        },
        "kmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS KMS customer managed key for encrypting audio logs delivered to an S3 bucket. The key does not apply to CloudWatch Logs and is optional for S3 buckets.</p>"
        },
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs should be delivered.</p>"
        }
      },
      "documentation": "<p>Settings used to configure delivery mode and destination for conversation logs.</p>"
    },
    "LogSettingsRequestList": {
      "type": "list",
      "member": {
        "shape": "LogSettingsRequest"
      }
    },
    "LogSettingsResponse": {
      "type": "structure",
      "members": {
        "logType": {
          "shape": "LogType",
          "documentation": "<p>The type of logging that is enabled.</p>"
        },
        "destination": {
          "shape": "Destination",
          "documentation": "<p>The destination where logs are delivered.</p>"
        },
        "kmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the key used to encrypt audio logs in an S3 bucket.</p>"
        },
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the CloudWatch Logs log group or S3 bucket where the logs are delivered.</p>"
        },
        "resourcePrefix": {
          "shape": "ResourcePrefix",
          "documentation": "<p>The resource prefix is the first part of the S3 object key within the S3 bucket that you specified to contain audio logs. For CloudWatch Logs it is the prefix of the log stream name within the log group that you specified. </p>"
        }
      },
      "documentation": "<p>The settings for conversation logs.</p>"
    },
    "LogSettingsResponseList": {
      "type": "list",
      "member": {
        "shape": "LogSettingsResponse"
      }
    },
    "LogType": {
      "type": "string",
      "enum": [
        "AUDIO",
        "TEXT"
      ]
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 1
    },
    "MergeStrategy": {
      "type": "string",
      "enum": [
        "OVERWRITE_LATEST",
        "FAIL_ON_CONFLICT"
      ]
    },
    "Message": {
      "type": "structure",
      "required": [
        "contentType",
        "content"
      ],
      "members": {
        "contentType": {
          "shape": "ContentType",
          "documentation": "<p>The content type of the message string.</p>"
        },
        "content": {
          "shape": "ContentString",
          "documentation": "<p>The text of the message.</p>"
        },
        "groupNumber": {
          "shape": "GroupNumber",
          "documentation": "<p>Identifies the message group that the message belongs to. When a group is assigned to a message, Amazon Lex returns one message from each group in the response.</p>"
        }
      },
      "documentation": "<p>The message object that provides the message text and its type.</p>"
    },
    "MessageList": {
      "type": "list",
      "member": {
        "shape": "Message"
      },
      "max": 15,
      "min": 1
    },
    "MessageVersion": {
      "type": "string",
      "max": 5,
      "min": 1
    },
    "Name": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z_]+"
    },
    "NextToken": {
      "type": "string"
    },
    "NumericalVersion": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[0-9]+"
    },
    "ObfuscationSetting": {
      "type": "string",
      "enum": [
        "NONE",
        "DEFAULT_OBFUSCATION"
      ]
    },
    "Priority": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "ProcessBehavior": {
      "type": "string",
      "enum": [
        "SAVE",
        "BUILD"
      ]
    },
    "Prompt": {
      "type": "structure",
      "required": [
        "messages",
        "maxAttempts"
      ],
      "members": {
        "messages": {
          "shape": "MessageList",
          "documentation": "<p>An array of objects, each of which provides a message string and its type. You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).</p>"
        },
        "maxAttempts": {
          "shape": "PromptMaxAttempts",
          "documentation": "<p>The number of times to prompt the user for information.</p>"
        },
        "responseCard": {
          "shape": "ResponseCard",
          "documentation": "<p>A response card. Amazon Lex uses this prompt at runtime, in the <code>PostText</code> API response. It substitutes session attributes and slot values for placeholders in the response card. For more information, see <a>ex-resp-card</a>. </p>"
        }
      },
      "documentation": "<p>Obtains information from the user. To define a prompt, provide one or more messages and specify the number of attempts to get information from the user. If you provide more than one message, Amazon Lex chooses one of the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>"
    },
    "PromptMaxAttempts": {
      "type": "integer",
      "max": 5,
      "min": 1
    },
    "PutBotAliasRequest": {
      "type": "structure",
      "required": [
        "name",
        "botVersion",
        "botName"
      ],
      "members": {
        "name": {
          "shape": "AliasName",
          "documentation": "<p>The name of the alias. The name is <i>not</i> case sensitive.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the alias.</p>"
        },
        "botVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the bot.</p>"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>",
          "location": "uri",
          "locationName": "botName"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new bot alias, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a bot alias, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>"
        },
        "conversationLogs": {
          "shape": "ConversationLogsRequest",
          "documentation": "<p>Settings for conversation logs for the alias.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags to add to the bot alias. You can only add tags when you create an alias, you can't use the <code>PutBotAlias</code> operation to update the tags on a bot alias. To update tags, use the <code>TagResource</code> operation.</p>"
        }
      }
    },
    "PutBotAliasResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AliasName",
          "documentation": "<p>The name of the alias.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the alias.</p>"
        },
        "botVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the bot that the alias points to.</p>"
        },
        "botName": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot that the alias points to.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot alias was created.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>The checksum for the current version of the alias.</p>"
        },
        "conversationLogs": {
          "shape": "ConversationLogsResponse",
          "documentation": "<p>The settings that determine how Amazon Lex uses conversation logs for the alias.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags associated with a bot.</p>"
        }
      }
    },
    "PutBotRequest": {
      "type": "structure",
      "required": [
        "name",
        "locale",
        "childDirected"
      ],
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot. The name is <i>not</i> case sensitive. </p>",
          "location": "uri",
          "locationName": "name"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot.</p>"
        },
        "intents": {
          "shape": "IntentList",
          "documentation": "<p>An array of <code>Intent</code> objects. Each intent represents a command that a user can express. For example, a pizza ordering bot might support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>"
        },
        "enableModelImprovements": {
          "shape": "Boolean",
          "documentation": "<p>Set to <code>true</code> to enable access to natural language understanding improvements. </p> <p>When you set the <code>enableModelImprovements</code> parameter to <code>true</code> you can use the <code>nluIntentConfidenceThreshold</code> parameter to configure confidence scores. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html\">Confidence Scores</a>.</p> <p>You can only set the <code>enableModelImprovements</code> parameter in certain Regions. If you set the parameter to <code>true</code>, your bot has access to accuracy improvements.</p> <p>The Regions where you can set the <code>enableModelImprovements</code> parameter to <code>true</code> are:</p> <ul> <li> <p>US East (N. Virginia) (us-east-1)</p> </li> <li> <p>US West (Oregon) (us-west-2)</p> </li> <li> <p>Asia Pacific (Sydney) (ap-southeast-2)</p> </li> <li> <p>EU (Ireland) (eu-west-1)</p> </li> </ul> <p>In other Regions, the <code>enableModelImprovements</code> parameter is set to <code>true</code> by default. In these Regions setting the parameter to <code>false</code> throws a <code>ValidationException</code> exception.</p> <ul> <li> <p>Asia Pacific (Singapore) (ap-southeast-1)</p> </li> <li> <p>Asia Pacific (Tokyo) (ap-northeast-1)</p> </li> <li> <p>EU (Frankfurt) (eu-central-1)</p> </li> <li> <p>EU (London) (eu-west-2)</p> </li> </ul>"
        },
        "nluIntentConfidenceThreshold": {
          "shape": "ConfidenceThreshold",
          "documentation": "<p>Determines the threshold where Amazon Lex will insert the <code>AMAZON.FallbackIntent</code>, <code>AMAZON.KendraSearchIntent</code>, or both when returning alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response. <code>AMAZON.FallbackIntent</code> and <code>AMAZON.KendraSearchIntent</code> are only inserted if they are configured for the bot.</p> <p>You must set the <code>enableModelImprovements</code> parameter to <code>true</code> to use confidence scores.</p> <ul> <li> <p>US East (N. Virginia) (us-east-1)</p> </li> <li> <p>US West (Oregon) (us-west-2)</p> </li> <li> <p>Asia Pacific (Sydney) (ap-southeast-2)</p> </li> <li> <p>EU (Ireland) (eu-west-1)</p> </li> </ul> <p>In other Regions, the <code>enableModelImprovements</code> parameter is set to <code>true</code> by default.</p> <p>For example, suppose a bot is configured with the confidence threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex returns three alternative intents with the following confidence scores: IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the <code>PostText</code> operation would be:</p> <ul> <li> <p>AMAZON.FallbackIntent</p> </li> <li> <p>IntentA</p> </li> <li> <p>IntentB</p> </li> <li> <p>IntentC</p> </li> </ul>"
        },
        "clarificationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>When Amazon Lex doesn't understand the user's intent, it uses this message to get clarification. To specify how many times Amazon Lex should repeat the clarification prompt, use the <code>maxAttempts</code> field. If Amazon Lex still doesn't understand, it sends the message in the <code>abortStatement</code> field. </p> <p>When you create a clarification prompt, make sure that it suggests the correct response from the user. for example, for a bot that orders pizza and drinks, you might create this clarification prompt: \"What would you like to do? You can say 'Order a pizza' or 'Order a drink.'\"</p> <p>If you have defined a fallback intent, it will be invoked if the clarification prompt is repeated the number of times defined in the <code>maxAttempts</code> field. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html\"> AMAZON.FallbackIntent</a>.</p> <p>If you don't define a clarification prompt, at runtime Amazon Lex will return a 400 Bad Request exception in three cases: </p> <ul> <li> <p>Follow-up prompt - When the user responds to a follow-up prompt but does not provide an intent. For example, in response to a follow-up prompt that says \"Would you like anything else today?\" the user says \"Yes.\" Amazon Lex will return a 400 Bad Request exception because it does not have a clarification prompt to send to the user to get an intent.</p> </li> <li> <p>Lambda function - When using a Lambda function, you return an <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a clarification prompt to get an intent from the user, it returns a 400 Bad Request exception.</p> </li> <li> <p>PutSession operation - When using the <code>PutSession</code> operation, you send an <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a clarification prompt to get an intent from the user, it returns a 400 Bad Request exception.</p> </li> </ul>"
        },
        "abortStatement": {
          "shape": "Statement",
          "documentation": "<p>When Amazon Lex can't understand the user's input in context, it tries to elicit the information a few times. After that, Amazon Lex sends the message defined in <code>abortStatement</code> to the user, and then cancels the conversation. To set the number of retries, use the <code>valueElicitationPrompt</code> field for the slot type. </p> <p>For example, in a pizza ordering bot, Amazon Lex might ask a user \"What type of crust would you like?\" If the user's response is not one of the expected responses (for example, \"thin crust, \"deep dish,\" etc.), Amazon Lex tries to elicit a correct response a few more times. </p> <p>For example, in a pizza ordering application, <code>OrderPizza</code> might be one of the intents. This intent might require the <code>CrustType</code> slot. You specify the <code>valueElicitationPrompt</code> field when you create the <code>CrustType</code> slot.</p> <p>If you have defined a fallback intent the cancel statement will not be sent to the user, the fallback intent is used instead. For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html\"> AMAZON.FallbackIntent</a>.</p>"
        },
        "idleSessionTTLInSeconds": {
          "shape": "SessionTTL",
          "documentation": "<p>The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.</p> <p>A user interaction session remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Lex deletes any data provided before the timeout.</p> <p>For example, suppose that a user chooses the OrderPizza intent, but gets sidetracked halfway through placing an order. If the user doesn't complete the order within the specified time, Amazon Lex discards the slot information that it gathered, and the user must start over.</p> <p>If you don't include the <code>idleSessionTTLInSeconds</code> element in a <code>PutBot</code> operation request, Amazon Lex uses the default value. This is also true if the request replaces an existing bot.</p> <p>The default is 300 seconds (5 minutes).</p>"
        },
        "voiceId": {
          "shape": "String",
          "documentation": "<p>The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/voicelist.html\">Voices in Amazon Polly</a> in the <i>Amazon Polly Developer Guide</i>.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new bot, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a bot, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>"
        },
        "processBehavior": {
          "shape": "ProcessBehavior",
          "documentation": "<p>If you set the <code>processBehavior</code> element to <code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If you set the element to <code>SAVE</code> Amazon Lex saves the bot, but doesn't build it. </p> <p>If you don't specify this value, the default value is <code>BUILD</code>.</p>"
        },
        "locale": {
          "shape": "Locale",
          "documentation": "<p> Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. </p> <p>The default is <code>en-US</code>.</p>"
        },
        "childDirected": {
          "shape": "Boolean",
          "documentation": "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a> </p>"
        },
        "detectSentiment": {
          "shape": "Boolean",
          "documentation": "<p>When set to <code>true</code> user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify <code>detectSentiment</code>, the default is <code>false</code>.</p>"
        },
        "createVersion": {
          "shape": "Boolean",
          "documentation": "<p>When set to <code>true</code> a new numbered version of the bot is created. This is the same as calling the <code>CreateBotVersion</code> operation. If you don't specify <code>createVersion</code>, the default is <code>false</code>.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags to add to the bot. You can only add tags when you create a bot, you can't use the <code>PutBot</code> operation to update the tags on a bot. To update tags, use the <code>TagResource</code> operation.</p>"
        }
      }
    },
    "PutBotResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "BotName",
          "documentation": "<p>The name of the bot.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the bot.</p>"
        },
        "intents": {
          "shape": "IntentList",
          "documentation": "<p>An array of <code>Intent</code> objects. For more information, see <a>PutBot</a>.</p>"
        },
        "enableModelImprovements": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the bot uses accuracy improvements. <code>true</code> indicates that the bot is using the imoprovements, otherwise, <code>false</code>.</p>"
        },
        "nluIntentConfidenceThreshold": {
          "shape": "ConfidenceThreshold",
          "documentation": "<p>The score that determines where Amazon Lex inserts the <code>AMAZON.FallbackIntent</code>, <code>AMAZON.KendraSearchIntent</code>, or both when returning alternative intents in a <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html\">PostContent</a> or <a href=\"https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> response. <code>AMAZON.FallbackIntent</code> is inserted if the confidence score for all intents is below this value. <code>AMAZON.KendraSearchIntent</code> is only inserted if it is configured for the bot.</p>"
        },
        "clarificationPrompt": {
          "shape": "Prompt",
          "documentation": "<p> The prompts that Amazon Lex uses when it doesn't understand the user's intent. For more information, see <a>PutBot</a>. </p>"
        },
        "abortStatement": {
          "shape": "Statement",
          "documentation": "<p>The message that Amazon Lex uses to cancel a conversation. For more information, see <a>PutBot</a>.</p>"
        },
        "status": {
          "shape": "Status",
          "documentation": "<p> When you send a request to create a bot with <code>processBehavior</code> set to <code>BUILD</code>, Amazon Lex sets the <code>status</code> response element to <code>BUILDING</code>.</p> <p>In the <code>READY_BASIC_TESTING</code> state you can test the bot with user inputs that exactly match the utterances configured for the bot's intents and values in the slot types.</p> <p>If Amazon Lex can't build the bot, Amazon Lex sets <code>status</code> to <code>FAILED</code>. Amazon Lex returns the reason for the failure in the <code>failureReason</code> response element. </p> <p>When you set <code>processBehavior</code> to <code>SAVE</code>, Amazon Lex sets the status code to <code>NOT BUILT</code>.</p> <p>When the bot is in the <code>READY</code> state you can test and publish the bot.</p>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to build the bot.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot was updated. When you create a resource, the creation date and last updated date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the bot was created.</p>"
        },
        "idleSessionTTLInSeconds": {
          "shape": "SessionTTL",
          "documentation": "<p>The maximum length of time that Amazon Lex retains the data gathered in a conversation. For more information, see <a>PutBot</a>.</p>"
        },
        "voiceId": {
          "shape": "String",
          "documentation": "<p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see <a>PutBot</a>.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the bot that you created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the bot. For a new bot, the version is always <code>$LATEST</code>.</p>"
        },
        "locale": {
          "shape": "Locale",
          "documentation": "<p> The target locale for the bot. </p>"
        },
        "childDirected": {
          "shape": "Boolean",
          "documentation": "<p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href=\"https://aws.amazon.com/lex/faqs#data-security\">Amazon Lex FAQ.</a> </p>"
        },
        "createVersion": {
          "shape": "Boolean",
          "documentation": "<p> <code>True</code> if a new version of the bot was created. If the <code>createVersion</code> field was not specified in the request, the <code>createVersion</code> field is set to false in the response.</p>"
        },
        "detectSentiment": {
          "shape": "Boolean",
          "documentation": "<p> <code>true</code> if the bot is configured to send user utterances to Amazon Comprehend for sentiment analysis. If the <code>detectSentiment</code> field was not specified in the request, the <code>detectSentiment</code> field is <code>false</code> in the response.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags associated with the bot.</p>"
        }
      }
    },
    "PutIntentRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent. The name is <i>not</i> case sensitive. </p> <p>The name can't match a built-in intent name, or a built-in intent name with \"AMAZON.\" removed. For example, because there is a built-in intent called <code>AMAZON.HelpIntent</code>, you can't create a custom intent called <code>HelpIntent</code>.</p> <p>For a list of built-in intents, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the intent.</p>"
        },
        "slots": {
          "shape": "SlotList",
          "documentation": "<p>An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see <a>how-it-works</a>. </p>"
        },
        "sampleUtterances": {
          "shape": "IntentUtteranceList",
          "documentation": "<p>An array of utterances (strings) that a user might say to signal the intent. For example, \"I want {PizzaSize} pizza\", \"Order {Quantity} {PizzaSize} pizzas\". </p> <p>In each utterance, a slot name is enclosed in curly braces. </p>"
        },
        "confirmationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>Prompts the user to confirm the intent. This question should have a yes or no answer.</p> <p>Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the <code>OrderPizza</code> intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information. </p> <note> <p>You you must provide both the <code>rejectionStatement</code> and the <code>confirmationPrompt</code>, or neither.</p> </note>"
        },
        "rejectionStatement": {
          "shape": "Statement",
          "documentation": "<p>When the user answers \"no\" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p> <note> <p>You must provide both the <code>rejectionStatement</code> and the <code>confirmationPrompt</code>, or neither.</p> </note>"
        },
        "followUpPrompt": {
          "shape": "FollowUpPrompt",
          "documentation": "<p>Amazon Lex uses this prompt to solicit additional activity after fulfilling an intent. For example, after the <code>OrderPizza</code> intent is fulfilled, you might prompt the user to order a drink.</p> <p>The action that Amazon Lex takes depends on the user's response, as follows:</p> <ul> <li> <p>If the user says \"Yes\" it responds with the clarification prompt that is configured for the bot.</p> </li> <li> <p>if the user says \"Yes\" and continues with an utterance that triggers an intent it starts a conversation for the intent.</p> </li> <li> <p>If the user says \"No\" it responds with the rejection statement configured for the the follow-up prompt.</p> </li> <li> <p>If it doesn't recognize the utterance it repeats the follow-up prompt again.</p> </li> </ul> <p>The <code>followUpPrompt</code> field and the <code>conclusionStatement</code> field are mutually exclusive. You can specify only one. </p>"
        },
        "conclusionStatement": {
          "shape": "Statement",
          "documentation": "<p> The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function. </p> <p>This element is relevant only if you provide a Lambda function in the <code>fulfillmentActivity</code>. If you return the intent to the client application, you can't specify this element.</p> <note> <p>The <code>followUpPrompt</code> and <code>conclusionStatement</code> are mutually exclusive. You can specify only one.</p> </note>"
        },
        "dialogCodeHook": {
          "shape": "CodeHook",
          "documentation": "<p> Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction. </p> <p>For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John's information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, <code>GlutenIntolerant</code>, to true. You might find John's phone number and set the corresponding session attribute. </p>"
        },
        "fulfillmentActivity": {
          "shape": "FulfillmentActivity",
          "documentation": "<p>Required. Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, <code>fulfillmentActivity</code> defines how the bot places an order with a local pizza store. </p> <p> You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria). </p>"
        },
        "parentIntentSignature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents\">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new intent, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a intent, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>"
        },
        "createVersion": {
          "shape": "Boolean",
          "documentation": "<p>When set to <code>true</code> a new numbered version of the intent is created. This is the same as calling the <code>CreateIntentVersion</code> operation. If you do not specify <code>createVersion</code>, the default is <code>false</code>.</p>"
        },
        "kendraConfiguration": {
          "shape": "KendraConfiguration",
          "documentation": "<p>Configuration information required to use the <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon Kendra index. For more information, see <a href=\"http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html\"> AMAZON.KendraSearchIntent</a>.</p>"
        }
      }
    },
    "PutIntentResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "IntentName",
          "documentation": "<p>The name of the intent.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the intent.</p>"
        },
        "slots": {
          "shape": "SlotList",
          "documentation": "<p>An array of intent slots that are configured for the intent.</p>"
        },
        "sampleUtterances": {
          "shape": "IntentUtteranceList",
          "documentation": "<p> An array of sample utterances that are configured for the intent. </p>"
        },
        "confirmationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>If defined in the intent, Amazon Lex prompts the user to confirm the intent before fulfilling it.</p>"
        },
        "rejectionStatement": {
          "shape": "Statement",
          "documentation": "<p>If the user answers \"no\" to the question defined in <code>confirmationPrompt</code> Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>"
        },
        "followUpPrompt": {
          "shape": "FollowUpPrompt",
          "documentation": "<p>If defined in the intent, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.</p>"
        },
        "conclusionStatement": {
          "shape": "Statement",
          "documentation": "<p>After the Lambda function specified in the<code>fulfillmentActivity</code>intent fulfills the intent, Amazon Lex conveys this statement to the user.</p>"
        },
        "dialogCodeHook": {
          "shape": "CodeHook",
          "documentation": "<p>If defined in the intent, Amazon Lex invokes this Lambda function for each user input.</p>"
        },
        "fulfillmentActivity": {
          "shape": "FulfillmentActivity",
          "documentation": "<p>If defined in the intent, Amazon Lex invokes this Lambda function to fulfill the intent after the user provides all of the information required by the intent.</p>"
        },
        "parentIntentSignature": {
          "shape": "BuiltinIntentSignature",
          "documentation": "<p>A unique identifier for the built-in intent that this intent is based on.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was updated. When you create a resource, the creation date and last update dates are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the intent was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the intent. For a new intent, the version is always <code>$LATEST</code>.</p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the <code>$LATEST</code>version of the intent created or updated.</p>"
        },
        "createVersion": {
          "shape": "Boolean",
          "documentation": "<p> <code>True</code> if a new version of the intent was created. If the <code>createVersion</code> field was not specified in the request, the <code>createVersion</code> field is set to false in the response.</p>"
        },
        "kendraConfiguration": {
          "shape": "KendraConfiguration",
          "documentation": "<p>Configuration information, if any, required to connect to an Amazon Kendra index and use the <code>AMAZON.KendraSearchIntent</code> intent.</p>"
        }
      }
    },
    "PutSlotTypeRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type. The name is <i>not</i> case sensitive. </p> <p>The name can't match a built-in slot type name, or a built-in slot type name with \"AMAZON.\" removed. For example, because there is a built-in slot type called <code>AMAZON.DATE</code>, you can't create a custom slot type called <code>DATE</code>.</p> <p>For a list of built-in slot types, see <a href=\"https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference\">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the slot type.</p>"
        },
        "enumerationValues": {
          "shape": "EnumerationValues",
          "documentation": "<p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take. Each value can have a list of <code>synonyms</code>, which are additional values that help train the machine learning model about the values that it resolves for a slot. </p> <p>A regular expression slot type doesn't require enumeration values. All other slot types require a list of enumeration values.</p> <p>When Amazon Lex resolves a slot value, it generates a resolution list that contains up to five possible values for the slot. If you are using a Lambda function, this resolution list is passed to the function. If you are not using a Lambda function you can choose to return the value that the user entered or the first value in the resolution list as the slot value. The <code>valueSelectionStrategy</code> field indicates the option to use. </p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new slot type, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a slot type, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>"
        },
        "valueSelectionStrategy": {
          "shape": "SlotValueSelectionStrategy",
          "documentation": "<p>Determines the slot resolution strategy that Amazon Lex uses to return slot type values. The field can be set to one of the following values:</p> <ul> <li> <p> <code>ORIGINAL_VALUE</code> - Returns the value entered by the user, if the user value is similar to the slot value.</p> </li> <li> <p> <code>TOP_RESOLUTION</code> - If there is a resolution list for the slot, return the first value in the resolution list as the slot type value. If there is no resolution list, null is returned.</p> </li> </ul> <p>If you don't specify the <code>valueSelectionStrategy</code>, the default is <code>ORIGINAL_VALUE</code>.</p>"
        },
        "createVersion": {
          "shape": "Boolean",
          "documentation": "<p>When set to <code>true</code> a new numbered version of the slot type is created. This is the same as calling the <code>CreateSlotTypeVersion</code> operation. If you do not specify <code>createVersion</code>, the default is <code>false</code>.</p>"
        },
        "parentSlotTypeSignature": {
          "shape": "CustomOrBuiltinSlotTypeName",
          "documentation": "<p>The built-in slot type used as the parent of the slot type. When you define a parent slot type, the new slot type has all of the same configuration as the parent.</p> <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>"
        },
        "slotTypeConfigurations": {
          "shape": "SlotTypeConfigurations",
          "documentation": "<p>Configuration information that extends the parent built-in slot type. The configuration is added to the settings for the parent slot type.</p>"
        }
      }
    },
    "PutSlotTypeResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the slot type.</p>"
        },
        "enumerationValues": {
          "shape": "EnumerationValues",
          "documentation": "<p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was updated. When you create a slot type, the creation date and last update date are the same.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the slot type. For a new slot type, the version is always <code>$LATEST</code>. </p>"
        },
        "checksum": {
          "shape": "String",
          "documentation": "<p>Checksum of the <code>$LATEST</code> version of the slot type.</p>"
        },
        "valueSelectionStrategy": {
          "shape": "SlotValueSelectionStrategy",
          "documentation": "<p>The slot resolution strategy that Amazon Lex uses to determine the value of the slot. For more information, see <a>PutSlotType</a>.</p>"
        },
        "createVersion": {
          "shape": "Boolean",
          "documentation": "<p> <code>True</code> if a new version of the slot type was created. If the <code>createVersion</code> field was not specified in the request, the <code>createVersion</code> field is set to false in the response.</p>"
        },
        "parentSlotTypeSignature": {
          "shape": "CustomOrBuiltinSlotTypeName",
          "documentation": "<p>The built-in slot type used as the parent of the slot type.</p>"
        },
        "slotTypeConfigurations": {
          "shape": "SlotTypeConfigurations",
          "documentation": "<p>Configuration information that extends the parent built-in slot type.</p>"
        }
      }
    },
    "QueryFilterString": {
      "type": "string",
      "min": 0
    },
    "RegexPattern": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ResourceArn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^arn:[\\w\\-]+:(?:logs:[\\w\\-]+:[\\d]{12}:log-group:[\\.\\-_/#A-Za-z0-9]{1,512}(?::\\*)?|s3:::[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9])$"
    },
    "ResourcePrefix": {
      "type": "string",
      "max": 1024
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "BOT",
        "INTENT",
        "SLOT_TYPE"
      ]
    },
    "ResponseCard": {
      "type": "string",
      "max": 50000,
      "min": 1
    },
    "SessionTTL": {
      "type": "integer",
      "max": 86400,
      "min": 60
    },
    "Slot": {
      "type": "structure",
      "required": [
        "name",
        "slotConstraint"
      ],
      "members": {
        "name": {
          "shape": "SlotName",
          "documentation": "<p>The name of the slot.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the slot.</p>"
        },
        "slotConstraint": {
          "shape": "SlotConstraint",
          "documentation": "<p>Specifies whether the slot is required or optional. </p>"
        },
        "slotType": {
          "shape": "CustomOrBuiltinSlotTypeName",
          "documentation": "<p>The type of the slot, either a custom slot type that you defined or one of the built-in slot types.</p>"
        },
        "slotTypeVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the slot type.</p>"
        },
        "valueElicitationPrompt": {
          "shape": "Prompt",
          "documentation": "<p>The prompt that Amazon Lex uses to elicit the slot value from the user.</p>"
        },
        "priority": {
          "shape": "Priority",
          "documentation": "<p> Directs Amazon Lex the order in which to elicit this slot value from the user. For example, if the intent has two slots with priorities 1 and 2, AWS Amazon Lex first elicits a value for the slot with priority 1.</p> <p>If multiple slots share the same priority, the order in which Amazon Lex elicits values is arbitrary.</p>"
        },
        "sampleUtterances": {
          "shape": "SlotUtteranceList",
          "documentation": "<p> If you know a specific pattern with which users might respond to an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This is optional. In most cases, Amazon Lex is capable of understanding user utterances. </p>"
        },
        "responseCard": {
          "shape": "ResponseCard",
          "documentation": "<p> A set of possible responses for the slot type used by text-based clients. A user chooses an option from the response card, instead of using text to reply. </p>"
        },
        "obfuscationSetting": {
          "shape": "ObfuscationSetting",
          "documentation": "<p>Determines whether a slot is obfuscated in conversation logs and stored utterances. When you obfuscate a slot, the value is replaced by the slot name in curly braces ({}). For example, if the slot name is \"full_name\", obfuscated values are replaced with \"{full_name}\". For more information, see <a href=\"https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html\"> Slot Obfuscation </a>. </p>"
        }
      },
      "documentation": "<p>Identifies the version of a specific slot.</p>"
    },
    "SlotConstraint": {
      "type": "string",
      "enum": [
        "Required",
        "Optional"
      ]
    },
    "SlotList": {
      "type": "list",
      "member": {
        "shape": "Slot"
      },
      "max": 100,
      "min": 0
    },
    "SlotName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^([A-Za-z](-|_|.)?)+$"
    },
    "SlotTypeConfiguration": {
      "type": "structure",
      "members": {
        "regexConfiguration": {
          "shape": "SlotTypeRegexConfiguration",
          "documentation": "<p>A regular expression used to validate the value of a slot.</p>"
        }
      },
      "documentation": "<p>Provides configuration information for a slot type.</p>"
    },
    "SlotTypeConfigurations": {
      "type": "list",
      "member": {
        "shape": "SlotTypeConfiguration"
      },
      "max": 10,
      "min": 0
    },
    "SlotTypeMetadata": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SlotTypeName",
          "documentation": "<p>The name of the slot type.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>A description of the slot type.</p>"
        },
        "lastUpdatedDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was updated. When you create a resource, the creation date and last updated date are the same. </p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the slot type was created.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>The version of the slot type.</p>"
        }
      },
      "documentation": "<p>Provides information about a slot type..</p>"
    },
    "SlotTypeMetadataList": {
      "type": "list",
      "member": {
        "shape": "SlotTypeMetadata"
      }
    },
    "SlotTypeName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^([A-Za-z]_?)+$"
    },
    "SlotTypeRegexConfiguration": {
      "type": "structure",
      "required": [
        "pattern"
      ],
      "members": {
        "pattern": {
          "shape": "RegexPattern",
          "documentation": "<p>A regular expression used to validate the value of a slot. </p> <p>Use a standard regular expression. Amazon Lex supports the following characters in the regular expression:</p> <ul> <li> <p>A-Z, a-z</p> </li> <li> <p>0-9</p> </li> <li> <p>Unicode characters (\"\\ u&lt;Unicode&gt;\")</p> </li> </ul> <p>Represent Unicode characters with four digits, for example \"\\u0041\" or \"\\u005A\".</p> <p>The following regular expression operators are not supported:</p> <ul> <li> <p>Infinite repeaters: *, +, or {x,} with no upper bound.</p> </li> <li> <p>Wild card (.)</p> </li> </ul>"
        }
      },
      "documentation": "<p>Provides a regular expression used to validate the value of a slot.</p>"
    },
    "SlotUtteranceList": {
      "type": "list",
      "member": {
        "shape": "Utterance"
      },
      "max": 10,
      "min": 0
    },
    "SlotValueSelectionStrategy": {
      "type": "string",
      "enum": [
        "ORIGINAL_VALUE",
        "TOP_RESOLUTION"
      ]
    },
    "StartImportRequest": {
      "type": "structure",
      "required": [
        "payload",
        "resourceType",
        "mergeStrategy"
      ],
      "members": {
        "payload": {
          "shape": "Blob",
          "documentation": "<p>A zip archive in binary format. The archive should contain one file, a JSON file containing the resource to import. The resource should match the type specified in the <code>resourceType</code> field.</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Specifies the type of resource to export. Each resource also exports any resources that it depends on. </p> <ul> <li> <p>A bot exports dependent intents.</p> </li> <li> <p>An intent exports dependent slot types.</p> </li> </ul>"
        },
        "mergeStrategy": {
          "shape": "MergeStrategy",
          "documentation": "<p>Specifies the action that the <code>StartImport</code> operation should take when there is an existing resource with the same name.</p> <ul> <li> <p>FAIL_ON_CONFLICT - The import operation is stopped on the first conflict between a resource in the import file and an existing resource. The name of the resource causing the conflict is in the <code>failureReason</code> field of the response to the <code>GetImport</code> operation.</p> <p>OVERWRITE_LATEST - The import operation proceeds even if there is a conflict with an existing resource. The $LASTEST version of the existing resource is overwritten with the data from the import file.</p> </li> </ul>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags to add to the imported bot. You can only add tags when you import a bot, you can't add tags to an intent or slot type.</p>"
        }
      }
    },
    "StartImportResponse": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name given to the import job.</p>"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource to import.</p>"
        },
        "mergeStrategy": {
          "shape": "MergeStrategy",
          "documentation": "<p>The action to take when there is a merge conflict.</p>"
        },
        "importId": {
          "shape": "String",
          "documentation": "<p>The identifier for the specific import job.</p>"
        },
        "importStatus": {
          "shape": "ImportStatus",
          "documentation": "<p>The status of the import job. If the status is <code>FAILED</code>, you can get the reason for the failure using the <code>GetImport</code> operation.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags added to the imported bot.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp for the date and time that the import job was requested.</p>"
        }
      }
    },
    "Statement": {
      "type": "structure",
      "required": [
        "messages"
      ],
      "members": {
        "messages": {
          "shape": "MessageList",
          "documentation": "<p>A collection of message objects.</p>"
        },
        "responseCard": {
          "shape": "ResponseCard",
          "documentation": "<p> At runtime, if the client is using the <a href=\"http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html\">PostText</a> API, Amazon Lex includes the response card in the response. It substitutes all of the session attributes and slot values for placeholders in the response card. </p>"
        }
      },
      "documentation": "<p>A collection of messages that convey information to the user. At runtime, Amazon Lex selects the message to convey. </p>"
    },
    "Status": {
      "type": "string",
      "enum": [
        "BUILDING",
        "READY",
        "READY_BASIC_TESTING",
        "FAILED",
        "NOT_BUILT"
      ]
    },
    "StatusType": {
      "type": "string",
      "enum": [
        "Detected",
        "Missed"
      ]
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SynonymList": {
      "type": "list",
      "member": {
        "shape": "Value"
      }
    },
    "Tag": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The key for the tag. Keys are not case-sensitive and must be unique.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The value associated with a key. The value may be an empty string but it can't be null.</p>"
        }
      },
      "documentation": "<p>A list of key/value pairs that identify a bot, bot alias, or bot channel. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @. </p>"
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
      "max": 200,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
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
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel to tag.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag keys to add to the resource. If a tag key already exists, the existing value is replaced with the new value.</p>"
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
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to remove the tags from.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag keys to remove from the resource. If a tag key does not exist on the resource, it is ignored.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UserId": {
      "type": "string",
      "max": 100,
      "min": 2
    },
    "Utterance": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "UtteranceData": {
      "type": "structure",
      "members": {
        "utteranceString": {
          "shape": "UtteranceString",
          "documentation": "<p>The text that was entered by the user or the text representation of an audio clip.</p>"
        },
        "count": {
          "shape": "Count",
          "documentation": "<p>The number of times that the utterance was processed.</p>"
        },
        "distinctUsers": {
          "shape": "Count",
          "documentation": "<p>The total number of individuals that used the utterance.</p>"
        },
        "firstUtteredDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the utterance was first recorded.</p>"
        },
        "lastUtteredDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the utterance was last recorded.</p>"
        }
      },
      "documentation": "<p>Provides information about a single utterance that was made to your bot. </p>"
    },
    "UtteranceList": {
      "type": "structure",
      "members": {
        "botVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the bot that processed the list.</p>"
        },
        "utterances": {
          "shape": "ListOfUtterance",
          "documentation": "<p>One or more <a>UtteranceData</a> objects that contain information about the utterances that have been made to a bot. The maximum number of object is 100.</p>"
        }
      },
      "documentation": "<p>Provides a list of utterances that have been made to a specific version of your bot. The list contains a maximum of 100 utterances.</p>"
    },
    "UtteranceString": {
      "type": "string",
      "max": 2000,
      "min": 1
    },
    "Value": {
      "type": "string",
      "max": 140,
      "min": 1
    },
    "Version": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "\\$LATEST|[0-9]+"
    },
    "roleArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws:iam::[0-9]{12}:role/.*"
    }
  },
  "documentation": "<fullname>Amazon Lex Build-Time Actions</fullname> <p> Amazon Lex is an AWS service for building conversational voice and text interfaces. Use these actions to create, update, and delete conversational bots for new and existing client applications. </p>"
}
]===]))
