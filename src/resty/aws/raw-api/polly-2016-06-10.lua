local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-06-10",
    "endpointPrefix": "polly",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Polly",
    "serviceId": "Polly",
    "signatureVersion": "v4",
    "uid": "polly-2016-06-10"
  },
  "operations": {
    "DeleteLexicon": {
      "name": "DeleteLexicon",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/lexicons/{LexiconName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteLexiconInput"
      },
      "output": {
        "shape": "DeleteLexiconOutput"
      },
      "errors": [
        {
          "shape": "LexiconNotFoundException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified pronunciation lexicon stored in an AWS Region. A lexicon which has been deleted is not available for speech synthesis, nor is it possible to retrieve it using either the <code>GetLexicon</code> or <code>ListLexicon</code> APIs.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html\">Managing Lexicons</a>.</p>"
    },
    "DescribeVoices": {
      "name": "DescribeVoices",
      "http": {
        "method": "GET",
        "requestUri": "/v1/voices",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeVoicesInput"
      },
      "output": {
        "shape": "DescribeVoicesOutput"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns the list of voices that are available for use when requesting speech synthesis. Each voice speaks a specified language, is either male or female, and is identified by an ID, which is the ASCII version of the voice name. </p> <p>When synthesizing speech ( <code>SynthesizeSpeech</code> ), you provide the voice ID for the voice you want from the list of voices returned by <code>DescribeVoices</code>.</p> <p>For example, you want your news reader application to read news in a specific language, but giving a user the option to choose the voice. Using the <code>DescribeVoices</code> operation you can provide the user with a list of available voices to select from.</p> <p> You can optionally specify a language code to filter the available voices. For example, if you specify <code>en-US</code>, the operation returns a list of all available US English voices. </p> <p>This operation requires permissions to perform the <code>polly:DescribeVoices</code> action.</p>"
    },
    "GetLexicon": {
      "name": "GetLexicon",
      "http": {
        "method": "GET",
        "requestUri": "/v1/lexicons/{LexiconName}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetLexiconInput"
      },
      "output": {
        "shape": "GetLexiconOutput"
      },
      "errors": [
        {
          "shape": "LexiconNotFoundException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns the content of the specified pronunciation lexicon stored in an AWS Region. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html\">Managing Lexicons</a>.</p>"
    },
    "GetSpeechSynthesisTask": {
      "name": "GetSpeechSynthesisTask",
      "http": {
        "method": "GET",
        "requestUri": "/v1/synthesisTasks/{TaskId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSpeechSynthesisTaskInput"
      },
      "output": {
        "shape": "GetSpeechSynthesisTaskOutput"
      },
      "errors": [
        {
          "shape": "InvalidTaskIdException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "SynthesisTaskNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object contains information about the given speech synthesis task, including the status of the task, and a link to the S3 bucket containing the output of the task.</p>"
    },
    "ListLexicons": {
      "name": "ListLexicons",
      "http": {
        "method": "GET",
        "requestUri": "/v1/lexicons",
        "responseCode": 200
      },
      "input": {
        "shape": "ListLexiconsInput"
      },
      "output": {
        "shape": "ListLexiconsOutput"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html\">Managing Lexicons</a>.</p>"
    },
    "ListSpeechSynthesisTasks": {
      "name": "ListSpeechSynthesisTasks",
      "http": {
        "method": "GET",
        "requestUri": "/v1/synthesisTasks",
        "responseCode": 200
      },
      "input": {
        "shape": "ListSpeechSynthesisTasksInput"
      },
      "output": {
        "shape": "ListSpeechSynthesisTasksOutput"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns a list of SpeechSynthesisTask objects ordered by their creation date. This operation can filter the tasks by their status, for example, allowing users to list only tasks that are completed.</p>"
    },
    "PutLexicon": {
      "name": "PutLexicon",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/lexicons/{LexiconName}",
        "responseCode": 200
      },
      "input": {
        "shape": "PutLexiconInput"
      },
      "output": {
        "shape": "PutLexiconOutput"
      },
      "errors": [
        {
          "shape": "InvalidLexiconException"
        },
        {
          "shape": "UnsupportedPlsAlphabetException"
        },
        {
          "shape": "UnsupportedPlsLanguageException"
        },
        {
          "shape": "LexiconSizeExceededException"
        },
        {
          "shape": "MaxLexemeLengthExceededException"
        },
        {
          "shape": "MaxLexiconsNumberExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Stores a pronunciation lexicon in an AWS Region. If a lexicon with the same name already exists in the region, it is overwritten by the new lexicon. Lexicon operations have eventual consistency, therefore, it might take some time before the lexicon is available to the SynthesizeSpeech operation.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html\">Managing Lexicons</a>.</p>"
    },
    "StartSpeechSynthesisTask": {
      "name": "StartSpeechSynthesisTask",
      "http": {
        "method": "POST",
        "requestUri": "/v1/synthesisTasks",
        "responseCode": 200
      },
      "input": {
        "shape": "StartSpeechSynthesisTaskInput"
      },
      "output": {
        "shape": "StartSpeechSynthesisTaskOutput"
      },
      "errors": [
        {
          "shape": "TextLengthExceededException"
        },
        {
          "shape": "InvalidS3BucketException"
        },
        {
          "shape": "InvalidS3KeyException"
        },
        {
          "shape": "InvalidSampleRateException"
        },
        {
          "shape": "InvalidSnsTopicArnException"
        },
        {
          "shape": "InvalidSsmlException"
        },
        {
          "shape": "EngineNotSupportedException"
        },
        {
          "shape": "LexiconNotFoundException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "MarksNotSupportedForFormatException"
        },
        {
          "shape": "SsmlMarksNotSupportedForTextTypeException"
        },
        {
          "shape": "LanguageNotSupportedException"
        }
      ],
      "documentation": "<p>Allows the creation of an asynchronous synthesis task, by starting a new <code>SpeechSynthesisTask</code>. This operation requires all the standard information needed for speech synthesis, plus the name of an Amazon S3 bucket for the service to store the output of the synthesis task and two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the synthesis task is created, this operation will return a SpeechSynthesisTask object, which will include an identifier of this task as well as the current status.</p>"
    },
    "SynthesizeSpeech": {
      "name": "SynthesizeSpeech",
      "http": {
        "method": "POST",
        "requestUri": "/v1/speech",
        "responseCode": 200
      },
      "input": {
        "shape": "SynthesizeSpeechInput"
      },
      "output": {
        "shape": "SynthesizeSpeechOutput"
      },
      "errors": [
        {
          "shape": "TextLengthExceededException"
        },
        {
          "shape": "InvalidSampleRateException"
        },
        {
          "shape": "InvalidSsmlException"
        },
        {
          "shape": "LexiconNotFoundException"
        },
        {
          "shape": "ServiceFailureException"
        },
        {
          "shape": "MarksNotSupportedForFormatException"
        },
        {
          "shape": "SsmlMarksNotSupportedForTextTypeException"
        },
        {
          "shape": "LanguageNotSupportedException"
        },
        {
          "shape": "EngineNotSupportedException"
        }
      ],
      "documentation": "<p>Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML input must be valid, well-formed SSML. Some alphabets might not be available with all the voices (for example, Cyrillic might not be read at all by English voices) unless phoneme mapping is used. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html\">How it Works</a>.</p>"
    }
  },
  "shapes": {
    "Alphabet": {
      "type": "string"
    },
    "AudioStream": {
      "type": "blob",
      "streaming": true
    },
    "ContentType": {
      "type": "string"
    },
    "DateTime": {
      "type": "timestamp"
    },
    "DeleteLexiconInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LexiconName",
          "documentation": "<p>The name of the lexicon to delete. Must be an existing lexicon in the region.</p>",
          "location": "uri",
          "locationName": "LexiconName"
        }
      }
    },
    "DeleteLexiconOutput": {
      "type": "structure",
      "members": {}
    },
    "DescribeVoicesInput": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "Engine",
          "documentation": "<p>Specifies the engine (<code>standard</code> or <code>neural</code>) used by Amazon Polly when processing input text for speech synthesis. </p>",
          "location": "querystring",
          "locationName": "Engine"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p> The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. </p>",
          "location": "querystring",
          "locationName": "LanguageCode"
        },
        "IncludeAdditionalLanguageCodes": {
          "shape": "IncludeAdditionalLanguageCodes",
          "documentation": "<p>Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify <code>yes</code> but not if you specify <code>no</code>.</p>",
          "location": "querystring",
          "locationName": "IncludeAdditionalLanguageCodes"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque pagination token returned from the previous <code>DescribeVoices</code> operation. If present, this indicates where to continue the listing.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        }
      }
    },
    "DescribeVoicesOutput": {
      "type": "structure",
      "members": {
        "Voices": {
          "shape": "VoiceList",
          "documentation": "<p>A list of voices with their properties.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token to use in the next request to continue the listing of voices. <code>NextToken</code> is returned only if the response is truncated.</p>"
        }
      }
    },
    "Engine": {
      "type": "string",
      "enum": [
        "standard",
        "neural"
      ]
    },
    "EngineList": {
      "type": "list",
      "member": {
        "shape": "Engine"
      }
    },
    "Gender": {
      "type": "string",
      "enum": [
        "Female",
        "Male"
      ]
    },
    "GetLexiconInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LexiconName",
          "documentation": "<p>Name of the lexicon.</p>",
          "location": "uri",
          "locationName": "LexiconName"
        }
      }
    },
    "GetLexiconOutput": {
      "type": "structure",
      "members": {
        "Lexicon": {
          "shape": "Lexicon",
          "documentation": "<p>Lexicon object that provides name and the string content of the lexicon. </p>"
        },
        "LexiconAttributes": {
          "shape": "LexiconAttributes",
          "documentation": "<p>Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.</p>"
        }
      }
    },
    "GetSpeechSynthesisTaskInput": {
      "type": "structure",
      "required": [
        "TaskId"
      ],
      "members": {
        "TaskId": {
          "shape": "TaskId",
          "documentation": "<p>The Amazon Polly generated identifier for a speech synthesis task.</p>",
          "location": "uri",
          "locationName": "TaskId"
        }
      }
    },
    "GetSpeechSynthesisTaskOutput": {
      "type": "structure",
      "members": {
        "SynthesisTask": {
          "shape": "SynthesisTask",
          "documentation": "<p>SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.</p>"
        }
      }
    },
    "IncludeAdditionalLanguageCodes": {
      "type": "boolean"
    },
    "LanguageCode": {
      "type": "string",
      "enum": [
        "arb",
        "cmn-CN",
        "cy-GB",
        "da-DK",
        "de-DE",
        "en-AU",
        "en-GB",
        "en-GB-WLS",
        "en-IN",
        "en-US",
        "es-ES",
        "es-MX",
        "es-US",
        "fr-CA",
        "fr-FR",
        "is-IS",
        "it-IT",
        "ja-JP",
        "hi-IN",
        "ko-KR",
        "nb-NO",
        "nl-NL",
        "pl-PL",
        "pt-BR",
        "pt-PT",
        "ro-RO",
        "ru-RU",
        "sv-SE",
        "tr-TR"
      ]
    },
    "LanguageCodeList": {
      "type": "list",
      "member": {
        "shape": "LanguageCode"
      }
    },
    "LanguageName": {
      "type": "string"
    },
    "LastModified": {
      "type": "timestamp"
    },
    "LexemesCount": {
      "type": "integer"
    },
    "Lexicon": {
      "type": "structure",
      "members": {
        "Content": {
          "shape": "LexiconContent",
          "documentation": "<p>Lexicon content in string format. The content of a lexicon must be in PLS format.</p>"
        },
        "Name": {
          "shape": "LexiconName",
          "documentation": "<p>Name of the lexicon.</p>"
        }
      },
      "documentation": "<p>Provides lexicon name and lexicon content in string format. For more information, see <a href=\"https://www.w3.org/TR/pronunciation-lexicon/\">Pronunciation Lexicon Specification (PLS) Version 1.0</a>.</p>"
    },
    "LexiconArn": {
      "type": "string"
    },
    "LexiconAttributes": {
      "type": "structure",
      "members": {
        "Alphabet": {
          "shape": "Alphabet",
          "documentation": "<p>Phonetic alphabet used in the lexicon. Valid values are <code>ipa</code> and <code>x-sampa</code>.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>Language code that the lexicon applies to. A lexicon with a language code such as \"en\" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.</p>"
        },
        "LastModified": {
          "shape": "LastModified",
          "documentation": "<p>Date lexicon was last modified (a timestamp value).</p>"
        },
        "LexiconArn": {
          "shape": "LexiconArn",
          "documentation": "<p>Amazon Resource Name (ARN) of the lexicon.</p>"
        },
        "LexemesCount": {
          "shape": "LexemesCount",
          "documentation": "<p>Number of lexemes in the lexicon.</p>"
        },
        "Size": {
          "shape": "Size",
          "documentation": "<p>Total size of the lexicon, in characters.</p>"
        }
      },
      "documentation": "<p>Contains metadata describing the lexicon such as the number of lexemes, language code, and so on. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html\">Managing Lexicons</a>.</p>"
    },
    "LexiconContent": {
      "type": "string"
    },
    "LexiconDescription": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "LexiconName",
          "documentation": "<p>Name of the lexicon.</p>"
        },
        "Attributes": {
          "shape": "LexiconAttributes",
          "documentation": "<p>Provides lexicon metadata.</p>"
        }
      },
      "documentation": "<p>Describes the content of the lexicon.</p>"
    },
    "LexiconDescriptionList": {
      "type": "list",
      "member": {
        "shape": "LexiconDescription"
      }
    },
    "LexiconName": {
      "type": "string",
      "pattern": "[0-9A-Za-z]{1,20}",
      "sensitive": true
    },
    "LexiconNameList": {
      "type": "list",
      "member": {
        "shape": "LexiconName"
      },
      "max": 5
    },
    "ListLexiconsInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque pagination token returned from previous <code>ListLexicons</code> operation. If present, indicates where to continue the list of lexicons.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        }
      }
    },
    "ListLexiconsOutput": {
      "type": "structure",
      "members": {
        "Lexicons": {
          "shape": "LexiconDescriptionList",
          "documentation": "<p>A list of lexicon names and attributes.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token to use in the next request to continue the listing of lexicons. <code>NextToken</code> is returned only if the response is truncated.</p>"
        }
      }
    },
    "ListSpeechSynthesisTasksInput": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Maximum number of speech synthesis tasks returned in a List operation.</p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token to use in the next request to continue the listing of speech synthesis tasks. </p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "Status": {
          "shape": "TaskStatus",
          "documentation": "<p>Status of the speech synthesis tasks returned in a List operation</p>",
          "location": "querystring",
          "locationName": "Status"
        }
      }
    },
    "ListSpeechSynthesisTasksOutput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque pagination token returned from the previous List operation in this request. If present, this indicates where to continue the listing.</p>"
        },
        "SynthesisTasks": {
          "shape": "SynthesisTasks",
          "documentation": "<p>List of SynthesisTask objects that provides information from the specified task in the list request, including output format, creation time, task status, and so on.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 4096,
      "min": 0
    },
    "OutputFormat": {
      "type": "string",
      "enum": [
        "json",
        "mp3",
        "ogg_vorbis",
        "pcm"
      ]
    },
    "OutputS3BucketName": {
      "type": "string",
      "pattern": "^[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$"
    },
    "OutputS3KeyPrefix": {
      "type": "string",
      "pattern": "^[0-9a-zA-Z\\/\\!\\-_\\.\\*\\'\\(\\)]{0,800}$"
    },
    "OutputUri": {
      "type": "string"
    },
    "PutLexiconInput": {
      "type": "structure",
      "required": [
        "Name",
        "Content"
      ],
      "members": {
        "Name": {
          "shape": "LexiconName",
          "documentation": "<p>Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. </p>",
          "location": "uri",
          "locationName": "LexiconName"
        },
        "Content": {
          "shape": "LexiconContent",
          "documentation": "<p>Content of the PLS lexicon as string data.</p>"
        }
      }
    },
    "PutLexiconOutput": {
      "type": "structure",
      "members": {}
    },
    "RequestCharacters": {
      "type": "integer"
    },
    "SampleRate": {
      "type": "string"
    },
    "Size": {
      "type": "integer"
    },
    "SnsTopicArn": {
      "type": "string",
      "pattern": "^arn:aws(-(cn|iso(-b)?|us-gov))?:sns:[a-z0-9_-]{1,50}:\\d{12}:[a-zA-Z0-9_-]{1,256}$"
    },
    "SpeechMarkType": {
      "type": "string",
      "enum": [
        "sentence",
        "ssml",
        "viseme",
        "word"
      ]
    },
    "SpeechMarkTypeList": {
      "type": "list",
      "member": {
        "shape": "SpeechMarkType"
      },
      "max": 4
    },
    "StartSpeechSynthesisTaskInput": {
      "type": "structure",
      "required": [
        "OutputFormat",
        "OutputS3BucketName",
        "Text",
        "VoiceId"
      ],
      "members": {
        "Engine": {
          "shape": "Engine",
          "documentation": "<p>Specifies the engine (<code>standard</code> or <code>neural</code>) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p> <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.</p>"
        },
        "LexiconNames": {
          "shape": "LexiconNameList",
          "documentation": "<p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. </p>"
        },
        "OutputFormat": {
          "shape": "OutputFormat",
          "documentation": "<p>The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>"
        },
        "OutputS3BucketName": {
          "shape": "OutputS3BucketName",
          "documentation": "<p>Amazon S3 bucket name to which the output file will be saved.</p>"
        },
        "OutputS3KeyPrefix": {
          "shape": "OutputS3KeyPrefix",
          "documentation": "<p>The Amazon S3 key prefix for the output speech file.</p>"
        },
        "SampleRate": {
          "shape": "SampleRate",
          "documentation": "<p>The audio frequency specified in Hz.</p> <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The default value for standard voices is \"22050\". The default value for neural voices is \"24000\".</p> <p>Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". </p>"
        },
        "SnsTopicArn": {
          "shape": "SnsTopicArn",
          "documentation": "<p>ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.</p>"
        },
        "SpeechMarkTypes": {
          "shape": "SpeechMarkTypeList",
          "documentation": "<p>The type of speech marks returned for the input text.</p>"
        },
        "Text": {
          "shape": "Text",
          "documentation": "<p>The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. </p>"
        },
        "TextType": {
          "shape": "TextType",
          "documentation": "<p>Specifies whether the input text is plain text or SSML. The default value is plain text. </p>"
        },
        "VoiceId": {
          "shape": "VoiceId",
          "documentation": "<p>Voice ID to use for the synthesis. </p>"
        }
      }
    },
    "StartSpeechSynthesisTaskOutput": {
      "type": "structure",
      "members": {
        "SynthesisTask": {
          "shape": "SynthesisTask",
          "documentation": "<p>SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.</p>"
        }
      }
    },
    "SynthesisTask": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "Engine",
          "documentation": "<p>Specifies the engine (<code>standard</code> or <code>neural</code>) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.</p>"
        },
        "TaskId": {
          "shape": "TaskId",
          "documentation": "<p>The Amazon Polly generated identifier for a speech synthesis task.</p>"
        },
        "TaskStatus": {
          "shape": "TaskStatus",
          "documentation": "<p>Current status of the individual speech synthesis task.</p>"
        },
        "TaskStatusReason": {
          "shape": "TaskStatusReason",
          "documentation": "<p>Reason for the current status of a specific speech synthesis task, including errors if the task has failed.</p>"
        },
        "OutputUri": {
          "shape": "OutputUri",
          "documentation": "<p>Pathway for the output speech file.</p>"
        },
        "CreationTime": {
          "shape": "DateTime",
          "documentation": "<p>Timestamp for the time the synthesis task was started.</p>"
        },
        "RequestCharacters": {
          "shape": "RequestCharacters",
          "documentation": "<p>Number of billable characters synthesized.</p>"
        },
        "SnsTopicArn": {
          "shape": "SnsTopicArn",
          "documentation": "<p>ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.</p>"
        },
        "LexiconNames": {
          "shape": "LexiconNameList",
          "documentation": "<p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. </p>"
        },
        "OutputFormat": {
          "shape": "OutputFormat",
          "documentation": "<p>The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>"
        },
        "SampleRate": {
          "shape": "SampleRate",
          "documentation": "<p>The audio frequency specified in Hz.</p> <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The default value for standard voices is \"22050\". The default value for neural voices is \"24000\".</p> <p>Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". </p>"
        },
        "SpeechMarkTypes": {
          "shape": "SpeechMarkTypeList",
          "documentation": "<p>The type of speech marks returned for the input text.</p>"
        },
        "TextType": {
          "shape": "TextType",
          "documentation": "<p>Specifies whether the input text is plain text or SSML. The default value is plain text. </p>"
        },
        "VoiceId": {
          "shape": "VoiceId",
          "documentation": "<p>Voice ID to use for the synthesis. </p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p> <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.</p>"
        }
      },
      "documentation": "<p>SynthesisTask object that provides information about a speech synthesis task.</p>"
    },
    "SynthesisTasks": {
      "type": "list",
      "member": {
        "shape": "SynthesisTask"
      }
    },
    "SynthesizeSpeechInput": {
      "type": "structure",
      "required": [
        "OutputFormat",
        "Text",
        "VoiceId"
      ],
      "members": {
        "Engine": {
          "shape": "Engine",
          "documentation": "<p>Specifies the engine (<code>standard</code> or <code>neural</code>) for Amazon Polly to use when processing input text for speech synthesis. Using a voice that is not supported for the engine selected will result in an error.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p> <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.</p>"
        },
        "LexiconNames": {
          "shape": "LexiconNameList",
          "documentation": "<p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html\">PutLexicon</a>.</p>"
        },
        "OutputFormat": {
          "shape": "OutputFormat",
          "documentation": "<p> The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p> <p>When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. </p>"
        },
        "SampleRate": {
          "shape": "SampleRate",
          "documentation": "<p>The audio frequency specified in Hz.</p> <p>The valid values for mp3 and ogg_vorbis are \"8000\", \"16000\", \"22050\", and \"24000\". The default value for standard voices is \"22050\". The default value for neural voices is \"24000\".</p> <p>Valid values for pcm are \"8000\" and \"16000\" The default value is \"16000\". </p>"
        },
        "SpeechMarkTypes": {
          "shape": "SpeechMarkTypeList",
          "documentation": "<p>The type of speech marks returned for the input text.</p>"
        },
        "Text": {
          "shape": "Text",
          "documentation": "<p> Input text to synthesize. If you specify <code>ssml</code> as the <code>TextType</code>, follow the SSML format for the input text. </p>"
        },
        "TextType": {
          "shape": "TextType",
          "documentation": "<p> Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <a href=\"https://docs.aws.amazon.com/polly/latest/dg/ssml.html\">Using SSML</a>.</p>"
        },
        "VoiceId": {
          "shape": "VoiceId",
          "documentation": "<p> Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <a href=\"https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html\">DescribeVoices</a> operation. </p>"
        }
      }
    },
    "SynthesizeSpeechOutput": {
      "type": "structure",
      "members": {
        "AudioStream": {
          "shape": "AudioStream",
          "documentation": "<p> Stream containing the synthesized speech. </p>"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p> Specifies the type audio stream. This should reflect the <code>OutputFormat</code> parameter in your request. </p> <ul> <li> <p> If you request <code>mp3</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/mpeg. </p> </li> <li> <p> If you request <code>ogg_vorbis</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/ogg. </p> </li> <li> <p> If you request <code>pcm</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. </p> </li> <li> <p>If you request <code>json</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/json.</p> </li> </ul> <p> </p>",
          "location": "header",
          "locationName": "Content-Type"
        },
        "RequestCharacters": {
          "shape": "RequestCharacters",
          "documentation": "<p>Number of characters synthesized.</p>",
          "location": "header",
          "locationName": "x-amzn-RequestCharacters"
        }
      },
      "payload": "AudioStream"
    },
    "TaskId": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9_-]{1,100}$"
    },
    "TaskStatus": {
      "type": "string",
      "enum": [
        "scheduled",
        "inProgress",
        "completed",
        "failed"
      ]
    },
    "TaskStatusReason": {
      "type": "string"
    },
    "Text": {
      "type": "string"
    },
    "TextType": {
      "type": "string",
      "enum": [
        "ssml",
        "text"
      ]
    },
    "Voice": {
      "type": "structure",
      "members": {
        "Gender": {
          "shape": "Gender",
          "documentation": "<p>Gender of the voice.</p>"
        },
        "Id": {
          "shape": "VoiceId",
          "documentation": "<p>Amazon Polly assigned voice ID. This is the ID that you specify when calling the <code>SynthesizeSpeech</code> operation.</p>"
        },
        "LanguageCode": {
          "shape": "LanguageCode",
          "documentation": "<p>Language code of the voice.</p>"
        },
        "LanguageName": {
          "shape": "LanguageName",
          "documentation": "<p>Human readable name of the language in English.</p>"
        },
        "Name": {
          "shape": "VoiceName",
          "documentation": "<p>Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.</p>"
        },
        "AdditionalLanguageCodes": {
          "shape": "LanguageCodeList",
          "documentation": "<p>Additional codes for languages available for the specified voice in addition to its default language. </p> <p>For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code <code>hi-IN</code>.</p>"
        },
        "SupportedEngines": {
          "shape": "EngineList",
          "documentation": "<p>Specifies which engines (<code>standard</code> or <code>neural</code>) that are supported by a given voice.</p>"
        }
      },
      "documentation": "<p>Description of the voice.</p>"
    },
    "VoiceId": {
      "type": "string",
      "enum": [
        "Aditi",
        "Amy",
        "Astrid",
        "Bianca",
        "Brian",
        "Camila",
        "Carla",
        "Carmen",
        "Celine",
        "Chantal",
        "Conchita",
        "Cristiano",
        "Dora",
        "Emma",
        "Enrique",
        "Ewa",
        "Filiz",
        "Geraint",
        "Giorgio",
        "Gwyneth",
        "Hans",
        "Ines",
        "Ivy",
        "Jacek",
        "Jan",
        "Joanna",
        "Joey",
        "Justin",
        "Karl",
        "Kendra",
        "Kevin",
        "Kimberly",
        "Lea",
        "Liv",
        "Lotte",
        "Lucia",
        "Lupe",
        "Mads",
        "Maja",
        "Marlene",
        "Mathieu",
        "Matthew",
        "Maxim",
        "Mia",
        "Miguel",
        "Mizuki",
        "Naja",
        "Nicole",
        "Penelope",
        "Raveena",
        "Ricardo",
        "Ruben",
        "Russell",
        "Salli",
        "Seoyeon",
        "Takumi",
        "Tatyana",
        "Vicki",
        "Vitoria",
        "Zeina",
        "Zhiyu"
      ]
    },
    "VoiceList": {
      "type": "list",
      "member": {
        "shape": "Voice"
      }
    },
    "VoiceName": {
      "type": "string"
    }
  },
  "documentation": "<p>Amazon Polly is a web service that makes it easy to synthesize speech from text.</p> <p>The Amazon Polly service provides API operations for synthesizing high-quality speech from plain text and Speech Synthesis Markup Language (SSML), along with managing pronunciations lexicons that enable you to get the best results for your application domain.</p>"
}
]===]))
