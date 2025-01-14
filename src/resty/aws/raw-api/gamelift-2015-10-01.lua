local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-10-01",
    "endpointPrefix": "gamelift",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon GameLift",
    "serviceId": "GameLift",
    "signatureVersion": "v4",
    "targetPrefix": "GameLift",
    "uid": "gamelift-2015-10-01"
  },
  "operations": {
    "AcceptMatch": {
      "name": "AcceptMatch",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AcceptMatchInput"
      },
      "output": {
        "shape": "AcceptMatchOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Registers a player's acceptance or rejection of a proposed FlexMatch match. A matchmaking configuration may require player acceptance; if so, then matches built with that configuration cannot be completed unless all players accept the proposed match within a specified time limit. </p> <p>When FlexMatch builds a match, all the matchmaking tickets involved in the proposed match are placed into status <code>REQUIRES_ACCEPTANCE</code>. This is a trigger for your game to get acceptance from all players in the ticket. Acceptances are only valid for tickets when they are in this status; all other acceptances result in an error.</p> <p>To register acceptance, specify the ticket ID, a response, and one or more players. Once all players have registered acceptance, the matchmaking tickets advance to status <code>PLACING</code>, where a new game session is created for the match. </p> <p>If any player rejects the match, or if acceptances are not received before a specified timeout, the proposed match is dropped. The matchmaking tickets are then handled in one of two ways: For tickets where one or more players rejected the match, the ticket status is returned to <code>SEARCHING</code> to find a new match. For tickets where one or more players failed to respond, the ticket status is set to <code>CANCELLED</code>, and processing is terminated. A new matchmaking request for these players can be submitted as needed. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html\"> Add FlexMatch to a Game Client</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-events.html\"> FlexMatch Events Reference</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>"
    },
    "ClaimGameServer": {
      "name": "ClaimGameServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ClaimGameServerInput"
      },
      "output": {
        "shape": "ClaimGameServerOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "OutOfCapacityException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Locates an available game server and temporarily reserves it to host gameplay and players. This operation is called from a game client or client service (such as a matchmaker) to request hosting resources for a new game session. In response, GameLift FleetIQ locates an available game server, places it in <code>CLAIMED</code> status for 60 seconds, and returns connection information that players can use to connect to the game server. </p> <p>To claim a game server, identify a game server group. You can also specify a game server ID, although this approach bypasses GameLift FleetIQ placement optimization. Optionally, include game data to pass to the game server at the start of a game session, such as a game map or player information. </p> <p>When a game server is successfully claimed, connection information is returned. A claimed game server's utilization status remains <code>AVAILABLE</code> while the claim status is set to <code>CLAIMED</code> for up to 60 seconds. This time period gives the game server time to update its status to <code>UTILIZED</code> (using <a>UpdateGameServer</a>) once players join. If the game server's status is not updated within 60 seconds, the game server reverts to unclaimed status and is available to be claimed by another request. The claim time period is a fixed value and is not configurable.</p> <p>If you try to claim a specific game server, this request will fail in the following cases:</p> <ul> <li> <p>If the game server utilization status is <code>UTILIZED</code>.</p> </li> <li> <p>If the game server claim status is <code>CLAIMED</code>.</p> </li> </ul> <note> <p>When claiming a specific game server, this request will succeed even if the game server is running on an instance in <code>DRAINING</code> status. To avoid this, first check the instance status by calling <a>DescribeGameServerInstances</a>.</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "CreateAlias": {
      "name": "CreateAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAliasInput"
      },
      "output": {
        "shape": "CreateAliasOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Creates an alias for a fleet. In most situations, you can use an alias ID in place of a fleet ID. An alias provides a level of abstraction for a fleet that is useful when redirecting player traffic from one fleet to another, such as when updating your game build. </p> <p>Amazon GameLift supports two types of routing strategies for aliases: simple and terminal. A simple alias points to an active fleet. A terminal alias is used to display messaging or link to a URL instead of routing players to an active fleet. For example, you might use a terminal alias when a game version is no longer supported and you want to direct players to an upgrade site. </p> <p>To create a fleet alias, specify an alias name, routing strategy, and optional description. Each simple alias can point to only one fleet, but a fleet can have multiple aliases. If successful, a new alias record is returned, including an alias ID and an ARN. You can reassign an alias to another fleet by calling <code>UpdateAlias</code>.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "CreateBuild": {
      "name": "CreateBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateBuildInput"
      },
      "output": {
        "shape": "CreateBuildOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Creates a new Amazon GameLift build resource for your game server binary files. Game server binaries must be combined into a zip file for use with Amazon GameLift. </p> <important> <p>When setting up a new game build for GameLift, we recommend using the AWS CLI command <b> <a href=\"https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html\">upload-build</a> </b>. This helper command combines two tasks: (1) it uploads your build files from a file directory to a GameLift Amazon S3 location, and (2) it creates a new build resource. </p> </important> <p>The <code>CreateBuild</code> operation can used in the following scenarios:</p> <ul> <li> <p>To create a new game build with build files that are in an S3 location under an AWS account that you control. To use this option, you must first give Amazon GameLift access to the S3 bucket. With permissions in place, call <code>CreateBuild</code> and specify a build name, operating system, and the S3 storage location of your game build.</p> </li> <li> <p>To directly upload your build files to a GameLift S3 location. To use this option, first call <code>CreateBuild</code> and specify a build name and operating system. This operation creates a new build resource and also returns an S3 location with temporary access credentials. Use the credentials to manually upload your build files to the specified S3 location. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html\">Uploading Objects</a> in the <i>Amazon S3 Developer Guide</i>. Build files can be uploaded to the GameLift S3 location once only; that can't be updated. </p> </li> </ul> <p>If successful, this operation creates a new build resource with a unique build ID and places it in <code>INITIALIZED</code> status. A build must be in <code>READY</code> status before you can create fleets with it.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html\">Uploading Your Game</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build\"> Create a Build with Files in Amazon S3</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "CreateFleet": {
      "name": "CreateFleet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateFleetInput"
      },
      "output": {
        "shape": "CreateFleetOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Creates a new fleet to run your game servers. whether they are custom game builds or Realtime Servers with game-specific script. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can host multiple game sessions. When creating a fleet, you choose the hardware specifications, set some configuration options, and specify the game server to deploy on the new fleet. </p> <p>To create a new fleet, provide the following: (1) a fleet name, (2) an EC2 instance type and fleet type (spot or on-demand), (3) the build ID for your game build or script ID if using Realtime Servers, and (4) a runtime configuration, which determines how game servers will run on each instance in the fleet. </p> <p>If the <code>CreateFleet</code> call is successful, Amazon GameLift performs the following tasks. You can track the process of a fleet by checking the fleet status or by monitoring fleet creation events:</p> <ul> <li> <p>Creates a fleet resource. Status: <code>NEW</code>.</p> </li> <li> <p>Begins writing events to the fleet event log, which can be accessed in the Amazon GameLift console.</p> </li> <li> <p>Sets the fleet's target capacity to 1 (desired instances), which triggers Amazon GameLift to start one new EC2 instance.</p> </li> <li> <p>Downloads the game build or Realtime script to the new instance and installs it. Statuses: <code>DOWNLOADING</code>, <code>VALIDATING</code>, <code>BUILDING</code>. </p> </li> <li> <p>Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, Amazon GameLift staggers each process launch by a few seconds. Status: <code>ACTIVATING</code>.</p> </li> <li> <p>Sets the fleet's status to <code>ACTIVE</code> as soon as one server process is ready to host a game session.</p> </li> </ul> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting Up Fleets</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation\">Debug Fleet Creation Issues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "CreateGameServerGroup": {
      "name": "CreateGameServerGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGameServerGroupInput"
      },
      "output": {
        "shape": "CreateGameServerGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Creates a GameLift FleetIQ game server group for managing game hosting on a collection of Amazon EC2 instances for game hosting. This operation creates the game server group, creates an Auto Scaling group in your AWS account, and establishes a link between the two groups. You can view the status of your game server groups in the GameLift console. Game server group metrics and events are emitted to Amazon CloudWatch.</p> <p>Before creating a new game server group, you must have the following: </p> <ul> <li> <p>An Amazon EC2 launch template that specifies how to launch Amazon EC2 instances with your game server build. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html\"> Launching an Instance from a Launch Template</a> in the <i>Amazon EC2 User Guide</i>. </p> </li> <li> <p>An IAM role that extends limited access to your AWS account to allow GameLift FleetIQ to create and interact with the Auto Scaling group. For more information, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-iam-permissions-roles.html\">Create IAM roles for cross-service interaction</a> in the <i>GameLift FleetIQ Developer Guide</i>.</p> </li> </ul> <p>To create a new game server group, specify a unique group name, IAM role and Amazon EC2 launch template, and provide a list of instance types that can be used in the group. You must also set initial maximum and minimum limits on the group's instance count. You can optionally set an Auto Scaling policy with target tracking based on a GameLift FleetIQ metric.</p> <p>Once the game server group and corresponding Auto Scaling group are created, you have full access to change the Auto Scaling group's configuration as needed. Several properties that are set when creating a game server group, including maximum/minimum size and auto-scaling policy settings, must be updated directly in the Auto Scaling group. Keep in mind that some Auto Scaling group properties are periodically updated by GameLift FleetIQ as part of its balancing activities to optimize for availability and cost.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "CreateGameSession": {
      "name": "CreateGameSession",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGameSessionInput"
      },
      "output": {
        "shape": "CreateGameSessionOutput"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidFleetStatusException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "FleetCapacityExceededException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        }
      ],
      "documentation": "<p>Creates a multiplayer game session for players. This operation creates a game session record and assigns an available server process in the specified fleet to host the game session. A fleet must have an <code>ACTIVE</code> status before a game session can be created in it.</p> <p>To create a game session, specify either fleet ID or alias ID and indicate a maximum number of players to allow in the game session. You can also provide a name and game-specific properties for this game session. If successful, a <a>GameSession</a> object is returned containing the game session properties and other settings you specified.</p> <p> <b>Idempotency tokens.</b> You can add a token that uniquely identifies game session requests. This is useful for ensuring that game session requests are idempotent. Multiple requests with the same idempotency token are processed only once; subsequent requests return the original result. All response values are the same with the exception of game session status, which may change.</p> <p> <b>Resource creation limits.</b> If you are creating a game session on a fleet with a resource creation limit policy in force, then you must specify a creator ID. Without this ID, Amazon GameLift has no way to evaluate the policy for this new game session request.</p> <p> <b>Player acceptance policy.</b> By default, newly created game sessions are open to new players. You can restrict new player access by using <a>UpdateGameSession</a> to change the game session's player session creation policy.</p> <p> <b>Game session logs.</b> Logs are retained for all active game sessions for 14 days. To access the logs, call <a>GetGameSessionLogUrl</a> to download the log files.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "CreateGameSessionQueue": {
      "name": "CreateGameSessionQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGameSessionQueueInput"
      },
      "output": {
        "shape": "CreateGameSessionQueueOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Establishes a new queue for processing requests to place new game sessions. A queue identifies where new game sessions can be hosted -- by specifying a list of destinations (fleets or aliases) -- and how long requests can wait in the queue before timing out. You can set up a queue to try to place game sessions on fleets in multiple Regions. To add placement requests to a queue, call <a>StartGameSessionPlacement</a> and reference the queue name.</p> <p> <b>Destination order.</b> When processing a request for a game session, Amazon GameLift tries each destination in order until it finds one with available resources to host the new game session. A queue's default order is determined by how destinations are listed. The default order is overridden when a game session placement request provides player latency information. Player latency information enables Amazon GameLift to prioritize destinations where players report the lowest average latency, as a result placing the new game session where the majority of players will have the best possible gameplay experience.</p> <p> <b>Player latency policies.</b> For placement requests containing player latency information, use player latency policies to protect individual players from very high latencies. With a latency cap, even when a destination can deliver a low latency for most players, the game is not placed where any individual player is reporting latency higher than a policy's maximum. A queue can have multiple latency policies, which are enforced consecutively starting with the policy with the lowest latency cap. Use multiple policies to gradually relax latency controls; for example, you might set a policy with a low latency cap for the first 60 seconds, a second policy with a higher cap for the next 60 seconds, etc. </p> <p>To create a new queue, provide a name, timeout value, a list of destinations and, if desired, a set of latency policies. If successful, a new queue object is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html\"> Design a Game Session Queue</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html\"> Create a Game Session Queue</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "CreateMatchmakingConfiguration": {
      "name": "CreateMatchmakingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateMatchmakingConfigurationInput"
      },
      "output": {
        "shape": "CreateMatchmakingConfigurationOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Defines a new matchmaking configuration for use with FlexMatch. A matchmaking configuration sets out guidelines for matching players and getting the matches into games. You can set up multiple matchmaking configurations to handle the scenarios needed for your game. Each matchmaking ticket (<a>StartMatchmaking</a> or <a>StartMatchBackfill</a>) specifies a configuration for the match and provides player attributes to support the configuration being used. </p> <p>To create a matchmaking configuration, at a minimum you must specify the following: configuration name; a rule set that governs how to evaluate players and find acceptable matches; a game session queue to use when placing a new game session for the match; and the maximum time allowed for a matchmaking attempt.</p> <p>To track the progress of matchmaking tickets, set up an Amazon Simple Notification Service (SNS) to receive notifications, and provide the topic ARN in the matchmaking configuration. An alternative method, continuously poling ticket status with <a>DescribeMatchmaking</a>, should only be used for games in development with low matchmaking usage.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html\"> Design a FlexMatch Matchmaker</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html\"> Set Up FlexMatch Event Notification</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "CreateMatchmakingRuleSet": {
      "name": "CreateMatchmakingRuleSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateMatchmakingRuleSetInput"
      },
      "output": {
        "shape": "CreateMatchmakingRuleSetOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Creates a new rule set for FlexMatch matchmaking. A rule set describes the type of match to create, such as the number and size of teams. It also sets the parameters for acceptable player matches, such as minimum skill level or character type. A rule set is used by a <a>MatchmakingConfiguration</a>. </p> <p>To create a matchmaking rule set, provide unique rule set name and the rule set body in JSON format. Rule sets must be defined in the same Region as the matchmaking configuration they are used with.</p> <p>Since matchmaking rule sets cannot be edited, it is a good idea to check the rule set syntax using <a>ValidateMatchmakingRuleSet</a> before creating a new rule set.</p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html\">Build a Rule Set</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html\">Design a Matchmaker</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html\">Matchmaking with FlexMatch</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "CreatePlayerSession": {
      "name": "CreatePlayerSession",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePlayerSessionInput"
      },
      "output": {
        "shape": "CreatePlayerSessionOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidGameSessionStatusException"
        },
        {
          "shape": "GameSessionFullException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Reserves an open player slot in an active game session. Before a player can be added, a game session must have an <code>ACTIVE</code> status, have a creation policy of <code>ALLOW_ALL</code>, and have an open player slot. To add a group of players to a game session, use <a>CreatePlayerSessions</a>. When the player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player.</p> <p>To create a player session, specify a game session ID, player ID, and optionally a string of player data. If successful, a slot is reserved in the game session for the player and a new <a>PlayerSession</a> object is returned. Player sessions cannot be updated. </p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "CreatePlayerSessions": {
      "name": "CreatePlayerSessions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePlayerSessionsInput"
      },
      "output": {
        "shape": "CreatePlayerSessionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidGameSessionStatusException"
        },
        {
          "shape": "GameSessionFullException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Reserves open slots in a game session for a group of players. Before players can be added, a game session must have an <code>ACTIVE</code> status, have a creation policy of <code>ALLOW_ALL</code>, and have an open player slot. To add a single player to a game session, use <a>CreatePlayerSession</a>. When a player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player.</p> <p>To create player sessions, specify a game session ID, a list of player IDs, and optionally a set of player data strings. If successful, a slot is reserved in the game session for each player and a set of new <a>PlayerSession</a> objects is returned. Player sessions cannot be updated.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "CreateScript": {
      "name": "CreateScript",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateScriptInput"
      },
      "output": {
        "shape": "CreateScriptOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Creates a new script record for your Realtime Servers script. Realtime scripts are JavaScript that provide configuration settings and optional custom game logic for your game. The script is deployed when you create a Realtime Servers fleet to host your game sessions. Script logic is executed during an active game session. </p> <p>To create a new script record, specify a script name and provide the script file(s). The script files and all dependencies must be zipped into a single file. You can pull the zip file from either of these locations: </p> <ul> <li> <p>A locally available directory. Use the <i>ZipFile</i> parameter for this option.</p> </li> <li> <p>An Amazon Simple Storage Service (Amazon S3) bucket under your AWS account. Use the <i>StorageLocation</i> parameter for this option. You'll need to have an Identity Access Management (IAM) role that allows the Amazon GameLift service to access your S3 bucket. </p> </li> </ul> <p>If the call is successful, a new script record is created with a unique script ID. If the script file is provided as a local file, the file is uploaded to an Amazon GameLift-owned S3 bucket and the script record's storage location reflects this location. If the script file is provided as an S3 bucket, Amazon GameLift accesses the file at this storage location as needed for deployment.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html\">Amazon GameLift Realtime Servers</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html\">Set Up a Role for Amazon GameLift Access</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>"
    },
    "CreateVpcPeeringAuthorization": {
      "name": "CreateVpcPeeringAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateVpcPeeringAuthorizationInput"
      },
      "output": {
        "shape": "CreateVpcPeeringAuthorizationOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Requests authorization to create or delete a peer connection between the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in your AWS account. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. Once you've received authorization, call <a>CreateVpcPeeringConnection</a> to establish the peering connection. For more information, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p> <p>You can peer with VPCs that are owned by any AWS account you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different Regions.</p> <p>To request authorization to create a connection, call this operation from the AWS account with the VPC that you want to peer to your Amazon GameLift fleet. For example, to enable your game servers to retrieve data from a DynamoDB table, use the account that manages that DynamoDB resource. Identify the following values: (1) The ID of the VPC that you want to peer with, and (2) the ID of the AWS account that you use to manage Amazon GameLift. If successful, VPC peering is authorized for the specified VPC. </p> <p>To request authorization to delete a connection, call this operation from the AWS account with the VPC that is peered with your Amazon GameLift fleet. Identify the following values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the AWS account that you use to manage Amazon GameLift. </p> <p>The authorization remains valid for 24 hours unless it is canceled by a call to <a>DeleteVpcPeeringAuthorization</a>. You must create or delete the peering connection while the authorization is valid. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "CreateVpcPeeringConnection": {
      "name": "CreateVpcPeeringConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateVpcPeeringConnectionInput"
      },
      "output": {
        "shape": "CreateVpcPeeringConnectionOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Establishes a VPC peering connection between a virtual private cloud (VPC) in an AWS account with the VPC for your Amazon GameLift fleet. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. You can peer with VPCs in any AWS account that you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different Regions. For more information, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p> <p>Before calling this operation to establish the peering connection, you first need to call <a>CreateVpcPeeringAuthorization</a> and identify the VPC you want to peer with. Once the authorization for the specified VPC is issued, you have 24 hours to establish the connection. These two operations handle all tasks necessary to peer the two VPCs, including acceptance, updating routing tables, etc. </p> <p>To establish the connection, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the following values: (1) The ID of the fleet you want to be enable a VPC peering connection for; (2) The AWS account with the VPC that you want to peer with; and (3) The ID of the VPC you want to peer with. This operation is asynchronous. If successful, a <a>VpcPeeringConnection</a> request is created. You can use continuous polling to track the request's status using <a>DescribeVpcPeeringConnections</a>, or by monitoring fleet events for success or failure using <a>DescribeFleetEvents</a>. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "DeleteAlias": {
      "name": "DeleteAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAliasInput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Deletes an alias. This operation removes all record of the alias. Game clients attempting to access a server process using the deleted alias receive an error. To delete an alias, specify the alias ID to be deleted.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "DeleteBuild": {
      "name": "DeleteBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteBuildInput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes a build. This operation permanently deletes the build resource and any uploaded build files. Deleting a build does not affect the status of any active fleets using the build, but you can no longer create new fleets with the deleted build.</p> <p>To delete a build, specify the build ID. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html\"> Upload a Custom Server Build</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "DeleteFleet": {
      "name": "DeleteFleet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteFleetInput"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidFleetStatusException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Deletes everything related to a fleet. Before deleting a fleet, you must set the fleet's desired capacity to zero. See <a>UpdateFleetCapacity</a>.</p> <p>If the fleet being deleted has a VPC peering connection, you first need to get a valid authorization (good for 24 hours) by calling <a>CreateVpcPeeringAuthorization</a>. You do not need to explicitly delete the VPC peering connection--this is done as part of the delete fleet process.</p> <p>This operation removes the fleet and its resources. Once a fleet is deleted, you can no longer use any of the resource in that fleet.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DeleteGameServerGroup": {
      "name": "DeleteGameServerGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGameServerGroupInput"
      },
      "output": {
        "shape": "DeleteGameServerGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Terminates a game server group and permanently deletes the game server group record. You have several options for how these resources are impacted when deleting the game server group. Depending on the type of delete operation selected, this operation might affect these resources:</p> <ul> <li> <p>The game server group</p> </li> <li> <p>The corresponding Auto Scaling group</p> </li> <li> <p>All game servers that are currently running in the group</p> </li> </ul> <p>To delete a game server group, identify the game server group to delete and specify the type of delete operation to initiate. Game server groups can only be deleted if they are in <code>ACTIVE</code> or <code>ERROR</code> status.</p> <p>If the delete request is successful, a series of operations are kicked off. The game server group status is changed to <code>DELETE_SCHEDULED</code>, which prevents new game servers from being registered and stops automatic scaling activity. Once all game servers in the game server group are deregistered, GameLift FleetIQ can begin deleting resources. If any of the delete operations fail, the game server group is placed in <code>ERROR</code> status.</p> <p>GameLift FleetIQ emits delete events to Amazon CloudWatch.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "DeleteGameSessionQueue": {
      "name": "DeleteGameSessionQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGameSessionQueueInput"
      },
      "output": {
        "shape": "DeleteGameSessionQueueOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Deletes a game session queue. Once a queue is successfully deleted, unfulfilled <a>StartGameSessionPlacement</a> requests that reference the queue will fail. To delete a queue, specify the queue name.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html\"> Using Multi-Region Queues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "DeleteMatchmakingConfiguration": {
      "name": "DeleteMatchmakingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMatchmakingConfigurationInput"
      },
      "output": {
        "shape": "DeleteMatchmakingConfigurationOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Permanently removes a FlexMatch matchmaking configuration. To delete, specify the configuration name. A matchmaking configuration cannot be deleted if it is being used in any active matchmaking tickets.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "DeleteMatchmakingRuleSet": {
      "name": "DeleteMatchmakingRuleSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMatchmakingRuleSetInput"
      },
      "output": {
        "shape": "DeleteMatchmakingRuleSetOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TaggingFailedException"
        }
      ],
      "documentation": "<p>Deletes an existing matchmaking rule set. To delete the rule set, provide the rule set name. Rule sets cannot be deleted if they are currently being used by a matchmaking configuration. </p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html\">Build a Rule Set</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "DeleteScalingPolicy": {
      "name": "DeleteScalingPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteScalingPolicyInput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Deletes a fleet scaling policy. Once deleted, the policy is no longer in force and GameLift removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with.</p> <p>To temporarily suspend scaling policies, call <a>StopFleetActions</a>. This operation suspends all policies for the fleet.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>"
    },
    "DeleteScript": {
      "name": "DeleteScript",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteScriptInput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Deletes a Realtime script. This operation permanently deletes the script record. If script files were uploaded, they are also deleted (files stored in an S3 bucket are not deleted). </p> <p>To delete a script, specify the script ID. Before deleting a script, be sure to terminate all fleets that are deployed with the script being deleted. Fleet instances periodically check for script updates, and if the script record no longer exists, the instance will go into an error state and be unable to host game sessions.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html\">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>"
    },
    "DeleteVpcPeeringAuthorization": {
      "name": "DeleteVpcPeeringAuthorization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteVpcPeeringAuthorizationInput"
      },
      "output": {
        "shape": "DeleteVpcPeeringAuthorizationOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Cancels a pending VPC peering authorization for the specified VPC. If you need to delete an existing VPC peering connection, call <a>DeleteVpcPeeringConnection</a>. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "DeleteVpcPeeringConnection": {
      "name": "DeleteVpcPeeringConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteVpcPeeringConnectionInput"
      },
      "output": {
        "shape": "DeleteVpcPeeringConnectionOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Removes a VPC peering connection. To delete the connection, you must have a valid authorization for the VPC peering connection that you want to delete. You can check for an authorization by calling <a>DescribeVpcPeeringAuthorizations</a> or request a new one using <a>CreateVpcPeeringAuthorization</a>. </p> <p>Once a valid authorization exists, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the connection to delete by the connection ID and fleet ID. If successful, the connection is removed. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "DeregisterGameServer": {
      "name": "DeregisterGameServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterGameServerInput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Removes the game server from a game server group. As a result of this operation, the deregistered game server can no longer be claimed and will not be returned in a list of active game servers. </p> <p>To deregister a game server, specify the game server group and game server ID. If successful, this operation emits a CloudWatch event with termination timestamp and reason.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "DescribeAlias": {
      "name": "DescribeAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAliasInput"
      },
      "output": {
        "shape": "DescribeAliasOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves properties for an alias. This operation returns all alias metadata and settings. To get an alias's target fleet ID only, use <code>ResolveAlias</code>. </p> <p>To get alias properties, specify the alias ID. If successful, the requested alias record is returned.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "DescribeBuild": {
      "name": "DescribeBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeBuildInput"
      },
      "output": {
        "shape": "DescribeBuildOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves properties for a custom game build. To request a build resource, specify a build ID. If successful, an object containing the build properties is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html\"> Upload a Custom Server Build</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "DescribeEC2InstanceLimits": {
      "name": "DescribeEC2InstanceLimits",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEC2InstanceLimitsInput"
      },
      "output": {
        "shape": "DescribeEC2InstanceLimitsOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves the following information for the specified EC2 instance type:</p> <ul> <li> <p>Maximum number of instances allowed per AWS account (service limit).</p> </li> <li> <p>Current usage for the AWS account.</p> </li> </ul> <p>To learn more about the capabilities of each instance type, see <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a>. Note that the instance types offered may vary depending on the region.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeFleetAttributes": {
      "name": "DescribeFleetAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFleetAttributesInput"
      },
      "output": {
        "shape": "DescribeFleetAttributesOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves core properties, including configuration, status, and metadata, for a fleet. </p> <p>To get attributes for one or more fleets, provide a list of fleet IDs or fleet ARNs. To get attributes for all fleets, do not specify a fleet identifier. When requesting attributes for multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetAttributes</a> object is returned for each fleet requested, unless the fleet identifier is not found.</p> <note> <p>Some API operations may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed number.</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeFleetCapacity": {
      "name": "DescribeFleetCapacity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFleetCapacityInput"
      },
      "output": {
        "shape": "DescribeFleetCapacityOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves the current capacity statistics for one or more fleets. These statistics present a snapshot of the fleet's instances and provide insight on current or imminent scaling activity. To get statistics on game hosting activity in the fleet, see <a>DescribeFleetUtilization</a>.</p> <p>You can request capacity for all fleets or specify a list of one or more fleet identifiers. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetCapacity</a> object is returned for each requested fleet ID. When a list of fleet IDs is provided, attribute objects are returned only for fleets that currently exist.</p> <note> <p>Some API operations may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet\">GameLift Metrics for Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeFleetEvents": {
      "name": "DescribeFleetEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFleetEventsInput"
      },
      "output": {
        "shape": "DescribeFleetEventsOutput"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Retrieves entries from the specified fleet's event log. You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of event log entries matching the request are returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeFleetPortSettings": {
      "name": "DescribeFleetPortSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFleetPortSettingsInput"
      },
      "output": {
        "shape": "DescribeFleetPortSettingsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves a fleet's inbound connection permissions. Connection permissions specify the range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. Game sessions that are running on instances in the fleet use connections that fall in this range. </p> <p>To get a fleet's inbound connection permissions, specify the fleet's unique identifier. If successful, a collection of <a>IpPermission</a> objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeFleetUtilization": {
      "name": "DescribeFleetUtilization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeFleetUtilizationInput"
      },
      "output": {
        "shape": "DescribeFleetUtilizationOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves utilization statistics for one or more fleets. These statistics provide insight into how available hosting resources are currently being used. To get statistics on available hosting resources, see <a>DescribeFleetCapacity</a>.</p> <p>You can request utilization data for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetUtilization</a> object is returned for each requested fleet ID, unless the fleet identifier is not found. </p> <note> <p>Some API operations may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet\">GameLift Metrics for Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeGameServer": {
      "name": "DescribeGameServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameServerInput"
      },
      "output": {
        "shape": "DescribeGameServerOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Retrieves information for a registered game server. Information includes game server status, health check info, and the instance that the game server is running on. </p> <p>To retrieve game server information, specify the game server ID. If successful, the requested game server object is returned. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "DescribeGameServerGroup": {
      "name": "DescribeGameServerGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameServerGroupInput"
      },
      "output": {
        "shape": "DescribeGameServerGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Retrieves information on a game server group. This operation returns only properties related to GameLift FleetIQ. To view or update properties for the corresponding Auto Scaling group, such as launch template, auto scaling policies, and maximum/minimum group size, access the Auto Scaling group directly.</p> <p>To get attributes for a game server group, provide a group name or ARN value. If successful, a <a>GameServerGroup</a> object is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "DescribeGameServerInstances": {
      "name": "DescribeGameServerInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameServerInstancesInput"
      },
      "output": {
        "shape": "DescribeGameServerInstancesOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Retrieves status information about the Amazon EC2 instances associated with a GameLift FleetIQ game server group. Use this operation to detect when instances are active or not available to host new game servers. If you are looking for instance configuration information, call <a>DescribeGameServerGroup</a> or access the corresponding Auto Scaling group properties.</p> <p>To request status for all instances in the game server group, provide a game server group ID only. To request status for specific instances, provide the game server group ID and one or more instance IDs. Use the pagination parameters to retrieve results in sequential segments. If successful, a collection of <code>GameServerInstance</code> objects is returned. </p> <p>This operation is not designed to be called with every game server claim request; this practice can cause you to exceed your API limit, which results in errors. Instead, as a best practice, cache the results and refresh your cache no more than once every 10 seconds.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "DescribeGameSessionDetails": {
      "name": "DescribeGameSessionDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameSessionDetailsInput"
      },
      "output": {
        "shape": "DescribeGameSessionDetailsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        }
      ],
      "documentation": "<p>Retrieves properties, including the protection policy in force, for one or more game sessions. This operation can be used in several ways: (1) provide a <code>GameSessionId</code> or <code>GameSessionArn</code> to request details for a specific game session; (2) provide either a <code>FleetId</code> or an <code>AliasId</code> to request properties for all game sessions running on a fleet. </p> <p>To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSessionDetail</a> object is returned for each session matching the request.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "DescribeGameSessionPlacement": {
      "name": "DescribeGameSessionPlacement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameSessionPlacementInput"
      },
      "output": {
        "shape": "DescribeGameSessionPlacementOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves properties and current status of a game session placement request. To get game session placement details, specify the placement ID. If successful, a <a>GameSessionPlacement</a> object is returned.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "DescribeGameSessionQueues": {
      "name": "DescribeGameSessionQueues",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameSessionQueuesInput"
      },
      "output": {
        "shape": "DescribeGameSessionQueuesOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves the properties for one or more game session queues. When requesting multiple queues, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSessionQueue</a> object is returned for each requested queue. When specifying a list of queues, objects are returned only for queues that currently exist in the Region.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html\"> View Your Queues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "DescribeGameSessions": {
      "name": "DescribeGameSessions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGameSessionsInput"
      },
      "output": {
        "shape": "DescribeGameSessionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        }
      ],
      "documentation": "<p>Retrieves a set of one or more game sessions. Request a specific game session or request all game sessions on a fleet. Alternatively, use <a>SearchGameSessions</a> to request a set of active game sessions that are filtered by certain criteria. To retrieve protection policy settings for game sessions, use <a>DescribeGameSessionDetails</a>.</p> <p>To get game sessions, specify one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSession</a> object is returned for each game session matching the request.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "DescribeInstances": {
      "name": "DescribeInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstancesInput"
      },
      "output": {
        "shape": "DescribeInstancesOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves information about a fleet's instances, including instance IDs. Use this operation to get details on all instances in the fleet or get details on one specific instance.</p> <p>To get a specific instance, specify fleet ID and instance ID. To get all instances in a fleet, specify a fleet ID only. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, an <a>Instance</a> object is returned for each result.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html\">Remotely Access Fleet Instances</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html\">Debug Fleet Issues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>DescribeInstances</a> </p> </li> <li> <p> <a>GetInstanceAccess</a> </p> </li> </ul>"
    },
    "DescribeMatchmaking": {
      "name": "DescribeMatchmaking",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMatchmakingInput"
      },
      "output": {
        "shape": "DescribeMatchmakingOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket information, including--after a successful match is made--connection information for the resulting new game session. </p> <p>To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the request is successful, a ticket object is returned for each requested ID that currently exists.</p> <p>This operation is not designed to be continually called to track matchmaking ticket status. This practice can cause you to exceed your API limit, which results in errors. Instead, as a best practice, set up an Amazon Simple Notification Service (SNS) to receive notifications, and provide the topic ARN in the matchmaking configuration. Continuously poling ticket status with <a>DescribeMatchmaking</a> should only be used for games in development with low matchmaking usage.</p> <p/> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html\"> Add FlexMatch to a Game Client</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html\"> Set Up FlexMatch Event Notification</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>"
    },
    "DescribeMatchmakingConfigurations": {
      "name": "DescribeMatchmakingConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMatchmakingConfigurationsInput"
      },
      "output": {
        "shape": "DescribeMatchmakingConfigurationsOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Retrieves the details of FlexMatch matchmaking configurations. </p> <p>This operation offers the following options: (1) retrieve all matchmaking configurations, (2) retrieve configurations for a specified list, or (3) retrieve all configurations that use a specified rule set name. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. </p> <p>If successful, a configuration is returned for each requested name. When specifying a list of names, only configurations that currently exist are returned. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/matchmaker-build.html\"> Setting Up FlexMatch Matchmakers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "DescribeMatchmakingRuleSets": {
      "name": "DescribeMatchmakingRuleSets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeMatchmakingRuleSetsInput"
      },
      "output": {
        "shape": "DescribeMatchmakingRuleSetsOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the Region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name. </p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html\">Build a Rule Set</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "DescribePlayerSessions": {
      "name": "DescribePlayerSessions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePlayerSessionsInput"
      },
      "output": {
        "shape": "DescribePlayerSessionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves properties for one or more player sessions. This operation can be used in several ways: (1) provide a <code>PlayerSessionId</code> to request properties for a specific player session; (2) provide a <code>GameSessionId</code> to request properties for all player sessions in the specified game session; (3) provide a <code>PlayerId</code> to request properties for all player sessions of a specified player. </p> <p>To get game session record(s), specify only one of the following: a player session ID, a game session ID, or a player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>PlayerSession</a> object is returned for each session matching the request.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "DescribeRuntimeConfiguration": {
      "name": "DescribeRuntimeConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRuntimeConfigurationInput"
      },
      "output": {
        "shape": "DescribeRuntimeConfigurationOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Retrieves a fleet's runtime configuration settings. The runtime configuration tells Amazon GameLift which server processes to run (and how) on each instance in the fleet.</p> <p>To get a runtime configuration, specify the fleet's unique identifier. If successful, a <a>RuntimeConfiguration</a> object is returned for the requested fleet. If the requested fleet has been deleted, the result set is empty.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html\">Running Multiple Processes on a Fleet</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "DescribeScalingPolicies": {
      "name": "DescribeScalingPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeScalingPoliciesInput"
      },
      "output": {
        "shape": "DescribeScalingPoliciesOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves all scaling policies applied to a fleet.</p> <p>To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of <a>ScalingPolicy</a> objects is returned for the fleet.</p> <p>A fleet may have all of its scaling policies suspended (<a>StopFleetActions</a>). This operation does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call <a>DescribeFleetAttributes</a> and check the stopped actions.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>"
    },
    "DescribeScript": {
      "name": "DescribeScript",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeScriptInput"
      },
      "output": {
        "shape": "DescribeScriptOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Retrieves properties for a Realtime script. </p> <p>To request a script record, specify the script ID. If successful, an object containing the script properties is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html\">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>"
    },
    "DescribeVpcPeeringAuthorizations": {
      "name": "DescribeVpcPeeringAuthorizations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeVpcPeeringAuthorizationsInput"
      },
      "output": {
        "shape": "DescribeVpcPeeringAuthorizationsOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves valid VPC peering authorizations that are pending for the AWS account. This operation returns all VPC peering authorizations and requests for peering. This includes those initiated and received by this account. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "DescribeVpcPeeringConnections": {
      "name": "DescribeVpcPeeringConnections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeVpcPeeringConnectionsInput"
      },
      "output": {
        "shape": "DescribeVpcPeeringConnectionsOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves information on VPC peering connections. Use this operation to get peering information for all fleets or for one specific fleet ID. </p> <p>To retrieve connection information, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the parameter empty to retrieve all connection records. If successful, the retrieved information includes both active and pending connections. Active connections identify the IpV4 CIDR block that the VPC uses to connect. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "GetGameSessionLogUrl": {
      "name": "GetGameSessionLogUrl",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetGameSessionLogUrlInput"
      },
      "output": {
        "shape": "GetGameSessionLogUrlOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.</p> <note> <p>See the <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift\">AWS Service Limits</a> page for maximum log file sizes. Log files that exceed this limit are not saved.</p> </note> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "GetInstanceAccess": {
      "name": "GetInstanceAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInstanceAccessInput"
      },
      "output": {
        "shape": "GetInstanceAccessOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Requests remote access to a fleet instance. Remote access is useful for debugging, gathering benchmarking data, or observing activity in real time. </p> <p>To remotely access an instance, you need credentials that match the operating system of the instance. For a Windows instance, Amazon GameLift returns a user name and password as strings for use with a Windows Remote Desktop client. For a Linux instance, Amazon GameLift returns a user name and RSA private key, also as strings, for use with an SSH client. The private key must be saved in the proper format to a <code>.pem</code> file before using. If you're making this request using the AWS CLI, saving the secret can be handled as part of the GetInstanceAccess request, as shown in one of the examples for this operation. </p> <p>To request access to a specific instance, specify the IDs of both the instance and the fleet it belongs to. You can retrieve a fleet's instance IDs by calling <a>DescribeInstances</a>. If successful, an <a>InstanceAccess</a> object is returned that contains the instance's IP address and a set of credentials.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html\">Remotely Access Fleet Instances</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html\">Debug Fleet Issues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>DescribeInstances</a> </p> </li> <li> <p> <a>GetInstanceAccess</a> </p> </li> </ul>"
    },
    "ListAliases": {
      "name": "ListAliases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAliasesInput"
      },
      "output": {
        "shape": "ListAliasesOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves all aliases for this AWS account. You can filter the result set by alias name and/or routing strategy type. Use the pagination parameters to retrieve results in sequential pages.</p> <note> <p>Returned aliases are not listed in any particular order.</p> </note> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "ListBuilds": {
      "name": "ListBuilds",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListBuildsInput"
      },
      "output": {
        "shape": "ListBuildsOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves build resources for all builds associated with the AWS account in use. You can limit results to builds that are in a specific status by using the <code>Status</code> parameter. Use the pagination parameters to retrieve results in a set of sequential pages. </p> <note> <p>Build resources are not listed in any particular order.</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html\"> Upload a Custom Server Build</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "ListFleets": {
      "name": "ListFleets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListFleetsInput"
      },
      "output": {
        "shape": "ListFleetsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves a collection of fleet resources for this AWS account. You can filter the result set to find only those fleets that are deployed with a specific build or script. Use the pagination parameters to retrieve results in sequential pages.</p> <note> <p>Fleet resources are not listed in a particular order.</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "ListGameServerGroups": {
      "name": "ListGameServerGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGameServerGroupsInput"
      },
      "output": {
        "shape": "ListGameServerGroupsOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Retrieves information on all game servers groups that exist in the current AWS account for the selected Region. Use the pagination parameters to retrieve results in a set of sequential segments. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "ListGameServers": {
      "name": "ListGameServers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGameServersInput"
      },
      "output": {
        "shape": "ListGameServersOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Retrieves information on all game servers that are currently active in a specified game server group. You can opt to sort the list by game server age. Use the pagination parameters to retrieve results in a set of sequential segments. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "ListScripts": {
      "name": "ListScripts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListScriptsInput"
      },
      "output": {
        "shape": "ListScriptsOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves script records for all Realtime scripts that are associated with the AWS account in use. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html\">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>"
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
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> Retrieves all tags that are assigned to a GameLift resource. Resource tags are used to organize AWS resources for a range of purposes. This operation handles the permissions necessary to manage tags for the following GameLift resource types:</p> <ul> <li> <p>Build</p> </li> <li> <p>Script</p> </li> <li> <p>Fleet</p> </li> <li> <p>Alias</p> </li> <li> <p>GameSessionQueue</p> </li> <li> <p>MatchmakingConfiguration</p> </li> <li> <p>MatchmakingRuleSet</p> </li> </ul> <p>To list tags for a resource, specify the unique ARN value for the resource.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> in the <i>AWS General Reference</i> </p> <p> <a href=\"http://aws.amazon.com/answers/account-management/aws-tagging-strategies/\"> AWS Tagging Strategies</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>TagResource</a> </p> </li> <li> <p> <a>UntagResource</a> </p> </li> <li> <p> <a>ListTagsForResource</a> </p> </li> </ul>"
    },
    "PutScalingPolicy": {
      "name": "PutScalingPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutScalingPolicyInput"
      },
      "output": {
        "shape": "PutScalingPolicyOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Creates or updates a scaling policy for a fleet. Scaling policies are used to automatically scale a fleet's hosting capacity to meet player demand. An active scaling policy instructs Amazon GameLift to track a fleet metric and automatically change the fleet's capacity when a certain threshold is reached. There are two types of scaling policies: target-based and rule-based. Use a target-based policy to quickly and efficiently manage fleet scaling; this option is the most commonly used. Use rule-based policies when you need to exert fine-grained control over auto-scaling. </p> <p>Fleets can have multiple scaling policies of each type in force at the same time; you can have one target-based policy, one or multiple rule-based scaling policies, or both. We recommend caution, however, because multiple auto-scaling policies can have unintended consequences.</p> <p>You can temporarily suspend all scaling policies for a fleet by calling <a>StopFleetActions</a> with the fleet action AUTO_SCALING. To resume scaling policies, call <a>StartFleetActions</a> with the same fleet action. To stop just one scaling policy--or to permanently remove it, you must delete the policy with <a>DeleteScalingPolicy</a>.</p> <p>Learn more about how to work with auto-scaling in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html\">Set Up Fleet Automatic Scaling</a>.</p> <p> <b>Target-based policy</b> </p> <p>A target-based policy tracks a single metric: PercentAvailableGameSessions. This metric tells us how much of a fleet's hosting capacity is ready to host game sessions but is not currently in use. This is the fleet's buffer; it measures the additional player demand that the fleet could handle at current capacity. With a target-based policy, you set your ideal buffer size and leave it to Amazon GameLift to take whatever action is needed to maintain that target. </p> <p>For example, you might choose to maintain a 10% buffer for a fleet that has the capacity to host 100 simultaneous game sessions. This policy tells Amazon GameLift to take action whenever the fleet's available capacity falls below or rises above 10 game sessions. Amazon GameLift will start new instances or stop unused instances in order to return to the 10% buffer. </p> <p>To create or update a target-based policy, specify a fleet ID and name, and set the policy type to \"TargetBased\". Specify the metric to track (PercentAvailableGameSessions) and reference a <a>TargetConfiguration</a> object with your desired buffer value. Exclude all other parameters. On a successful request, the policy name is returned. The scaling policy is automatically in force as soon as it's successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.</p> <p> <b>Rule-based policy</b> </p> <p>A rule-based policy tracks specified fleet metric, sets a threshold value, and specifies the type of action to initiate when triggered. With a rule-based policy, you can select from several available fleet metrics. Each policy specifies whether to scale up or scale down (and by how much), so you need one policy for each type of action. </p> <p>For example, a policy may make the following statement: \"If the percentage of idle instances is greater than 20% for more than 15 minutes, then reduce the fleet capacity by 10%.\"</p> <p>A policy's rule statement has the following structure:</p> <p>If <code>[MetricName]</code> is <code>[ComparisonOperator]</code> <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes, then <code>[ScalingAdjustmentType]</code> to/by <code>[ScalingAdjustment]</code>.</p> <p>To implement the example, the rule statement would look like this:</p> <p>If <code>[PercentIdleInstances]</code> is <code>[GreaterThanThreshold]</code> <code>[20]</code> for <code>[15]</code> minutes, then <code>[PercentChangeInCapacity]</code> to/by <code>[10]</code>.</p> <p>To create or update a scaling policy, specify a unique combination of name and fleet ID, and set the policy type to \"RuleBased\". Specify the parameter values for a policy rule statement. On a successful request, the policy name is returned. Scaling policies are automatically in force as soon as they're successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>"
    },
    "RegisterGameServer": {
      "name": "RegisterGameServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterGameServerInput"
      },
      "output": {
        "shape": "RegisterGameServerOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Creates a new game server resource and notifies GameLift FleetIQ that the game server is ready to host gameplay and players. This operation is called by a game server process that is running on an instance in a game server group. Registering game servers enables GameLift FleetIQ to track available game servers and enables game clients and services to claim a game server for a new game session. </p> <p>To register a game server, identify the game server group and instance where the game server is running, and provide a unique identifier for the game server. You can also include connection and game server data. When a game client or service requests a game server by calling <a>ClaimGameServer</a>, this information is returned in the response.</p> <p>Once a game server is successfully registered, it is put in status <code>AVAILABLE</code>. A request to register a game server may fail if the instance it is running on is in the process of shutting down as part of instance balancing or scale-down activity. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "RequestUploadCredentials": {
      "name": "RequestUploadCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RequestUploadCredentialsInput"
      },
      "output": {
        "shape": "RequestUploadCredentialsOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves a fresh set of credentials for use when uploading a new set of game build files to Amazon GameLift's Amazon S3. This is done as part of the build creation process; see <a>CreateBuild</a>.</p> <p>To request new credentials, specify the build ID as returned with an initial <code>CreateBuild</code> request. If successful, a new set of credentials are returned, along with the S3 storage location associated with the build ID.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build\"> Create a Build with Files in S3</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "ResolveAlias": {
      "name": "ResolveAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResolveAliasInput"
      },
      "output": {
        "shape": "ResolveAliasOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves the fleet ID that an alias is currently pointing to.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "ResumeGameServerGroup": {
      "name": "ResumeGameServerGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResumeGameServerGroupInput"
      },
      "output": {
        "shape": "ResumeGameServerGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Reinstates activity on a game server group after it has been suspended. A game server group might be suspended by the<a>SuspendGameServerGroup</a> operation, or it might be suspended involuntarily due to a configuration problem. In the second case, you can manually resume activity on the group once the configuration problem has been resolved. Refer to the game server group status and status reason for more information on why group activity is suspended.</p> <p>To resume activity, specify a game server group ARN and the type of activity to be resumed. If successful, a <a>GameServerGroup</a> object is returned showing that the resumed activity is no longer listed in <code>SuspendedActions</code>. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "SearchGameSessions": {
      "name": "SearchGameSessions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchGameSessionsInput"
      },
      "output": {
        "shape": "SearchGameSessionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "TerminalRoutingStrategyException"
        }
      ],
      "documentation": "<p>Retrieves all active game sessions that match a set of search criteria and sorts them in a specified order. You can search or sort by the following game session attributes:</p> <ul> <li> <p> <b>gameSessionId</b> -- A unique identifier for the game session. You can use either a <code>GameSessionId</code> or <code>GameSessionArn</code> value. </p> </li> <li> <p> <b>gameSessionName</b> -- Name assigned to a game session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>. Game session names do not need to be unique to a game session.</p> </li> <li> <p> <b>gameSessionProperties</b> -- Custom data defined in a game session's <code>GameProperty</code> parameter. <code>GameProperty</code> values are stored as key:value pairs; the filter expression must indicate the key and a string to search the data values for. For example, to search for game sessions with custom data containing the key:value pair \"gameMode:brawl\", specify the following: <code>gameSessionProperties.gameMode = \"brawl\"</code>. All custom data values are searched as strings.</p> </li> <li> <p> <b>maximumSessions</b> -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>.</p> </li> <li> <p> <b>creationTimeMillis</b> -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.</p> </li> <li> <p> <b>playerSessionCount</b> -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.</p> </li> <li> <p> <b>hasAvailablePlayerSessions</b> -- Boolean value indicating whether a game session has reached its maximum number of players. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join. </p> </li> </ul> <note> <p>Returned values for <code>playerSessionCount</code> and <code>hasAvailablePlayerSessions</code> change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join. </p> </note> <p>To search or sort, specify either a fleet ID or an alias ID, and provide a search filter expression, a sort expression, or both. If successful, a collection of <a>GameSession</a> objects matching the request is returned. Use the pagination parameters to retrieve results as a set of sequential pages. </p> <p>You can search for game sessions one fleet at a time only. To find game sessions across multiple fleets, you must search each fleet separately and combine the results. This search feature finds only game sessions that are in <code>ACTIVE</code> status. To locate games in statuses other than active, use <a>DescribeGameSessionDetails</a>.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "StartFleetActions": {
      "name": "StartFleetActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartFleetActionsInput"
      },
      "output": {
        "shape": "StartFleetActionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Resumes activity on a fleet that was suspended with <a>StopFleetActions</a>. Currently, this operation is used to restart a fleet's auto-scaling activity. </p> <p>To start fleet actions, specify the fleet ID and the type of actions to restart. When auto-scaling fleet actions are restarted, Amazon GameLift once again initiates scaling events as triggered by the fleet's scaling policies. If actions on the fleet were never stopped, this operation will have no effect. You can view a fleet's stopped actions using <a>DescribeFleetAttributes</a>.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "StartGameSessionPlacement": {
      "name": "StartGameSessionPlacement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartGameSessionPlacementInput"
      },
      "output": {
        "shape": "StartGameSessionPlacementOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Places a request for a new game session in a queue (see <a>CreateGameSessionQueue</a>). When processing a placement request, Amazon GameLift searches for available resources on the queue's destinations, scanning each until it finds resources or the placement request times out.</p> <p>A game session placement request can also request player sessions. When a new game session is successfully created, Amazon GameLift creates a player session for each player included in the request.</p> <p>When placing a game session, by default Amazon GameLift tries each fleet in the order they are listed in the queue configuration. Ideally, a queue's destinations are listed in preference order.</p> <p>Alternatively, when requesting a game session with players, you can also provide latency data for each player in relevant Regions. Latency data indicates the performance lag a player experiences when connected to a fleet in the Region. Amazon GameLift uses latency data to reorder the list of destinations to place the game session in a Region with minimal lag. If latency data is provided for multiple players, Amazon GameLift calculates each Region's average lag for all players and reorders to get the best game play across all players. </p> <p>To place a new game session request, specify the following:</p> <ul> <li> <p>The queue name and a set of game session properties and settings</p> </li> <li> <p>A unique ID (such as a UUID) for the placement. You use this ID to track the status of the placement request</p> </li> <li> <p>(Optional) A set of player data and a unique player ID for each player that you are joining to the new game session (player data is optional, but if you include it, you must also provide a unique ID for each player)</p> </li> <li> <p>Latency data for all players (if you want to optimize game play for the players)</p> </li> </ul> <p>If successful, a new game session placement is created.</p> <p>To track the status of a placement request, call <a>DescribeGameSessionPlacement</a> and check the request's status. If the status is <code>FULFILLED</code>, a new game session has been created and a game session ARN and Region are referenced. If the placement request times out, you can resubmit the request or retry it with a different queue. </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "StartMatchBackfill": {
      "name": "StartMatchBackfill",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartMatchBackfillInput"
      },
      "output": {
        "shape": "StartMatchBackfillOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Finds new players to fill open slots in an existing game session. This operation can be used to add players to matched games that start with fewer than the maximum number of players or to replace players when they drop out. By backfilling with the same matchmaker used to create the original match, you ensure that new players meet the match criteria and maintain a consistent experience throughout the game session. You can backfill a match anytime after a game session has been created. </p> <p>To request a match backfill, specify a unique ticket ID, the existing game session's ARN, a matchmaking configuration, and a set of data that describes all current players in the game session. If successful, a match backfill ticket is created and returned with status set to QUEUED. The ticket is placed in the matchmaker's ticket pool and processed. Track the status of the ticket to respond as needed. </p> <p>The process of finding backfill matches is essentially identical to the initial matchmaking process. The matchmaker searches the pool and groups tickets together to form potential matches, allowing only one backfill ticket per potential match. Once the a match is formed, the matchmaker creates player sessions for the new players. All tickets in the match are updated with the game session's connection information, and the <a>GameSession</a> object is updated to include matchmaker data on the new players. For more detail on how match backfill requests are processed, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html\"> How Amazon GameLift FlexMatch Works</a>. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html\"> Backfill Existing Games with FlexMatch</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html\"> How GameLift FlexMatch Works</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>"
    },
    "StartMatchmaking": {
      "name": "StartMatchmaking",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartMatchmakingInput"
      },
      "output": {
        "shape": "StartMatchmakingOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Uses FlexMatch to create a game match for a group of players based on custom matchmaking rules, and starts a new game for the matched players. Each matchmaking request specifies the type of match to build (team configuration, rules for an acceptable match, etc.). The request also specifies the players to find a match for and where to host the new game session for optimal performance. A matchmaking request might start with a single player or a group of players who want to play together. FlexMatch finds additional players as needed to fill the match. Match type, rules, and the queue used to place a new game session are defined in a <code>MatchmakingConfiguration</code>. </p> <p>To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration, and include the players to be matched. You must also include a set of player attributes relevant for the matchmaking configuration. If successful, a matchmaking ticket is returned with status set to <code>QUEUED</code>. </p> <p>Track the status of the ticket to respond as needed and acquire game session connection information for successfully completed matches. Ticket status updates are tracked using event notification through Amazon Simple Notification Service (SNS), which is defined in the matchmaking configuration.</p> <p> <b>Processing a matchmaking request</b> -- FlexMatch handles a matchmaking request as follows: </p> <ol> <li> <p>Your client code submits a <code>StartMatchmaking</code> request for one or more players and tracks the status of the request ticket. </p> </li> <li> <p>FlexMatch uses this ticket and others in process to build an acceptable match. When a potential match is identified, all tickets in the proposed match are advanced to the next status. </p> </li> <li> <p>If the match requires player acceptance (set in the matchmaking configuration), the tickets move into status <code>REQUIRES_ACCEPTANCE</code>. This status triggers your client code to solicit acceptance from all players in every ticket involved in the match, and then call <a>AcceptMatch</a> for each player. If any player rejects or fails to accept the match before a specified timeout, the proposed match is dropped (see <code>AcceptMatch</code> for more details).</p> </li> <li> <p>Once a match is proposed and accepted, the matchmaking tickets move into status <code>PLACING</code>. FlexMatch locates resources for a new game session using the game session queue (set in the matchmaking configuration) and creates the game session based on the match data. </p> </li> <li> <p>When the match is successfully placed, the matchmaking tickets move into <code>COMPLETED</code> status. Connection information (including game session endpoint and player session) is added to the matchmaking tickets. Matched players can use the connection information to join the game. </p> </li> </ol> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html\"> Add FlexMatch to a Game Client</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html\"> Set Up FlexMatch Event Notification</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-tasks.html\"> FlexMatch Integration Roadmap</a> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html\"> How GameLift FlexMatch Works</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>"
    },
    "StopFleetActions": {
      "name": "StopFleetActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopFleetActionsInput"
      },
      "output": {
        "shape": "StopFleetActionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Suspends activity on a fleet. Currently, this operation is used to stop a fleet's auto-scaling activity. It is used to temporarily stop triggering scaling events. The policies can be retained and auto-scaling activity can be restarted using <a>StartFleetActions</a>. You can view a fleet's stopped actions using <a>DescribeFleetAttributes</a>.</p> <p>To stop fleet actions, specify the fleet ID and the type of actions to suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no longer initiates scaling events except in response to manual changes using <a>UpdateFleetCapacity</a>. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "StopGameSessionPlacement": {
      "name": "StopGameSessionPlacement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopGameSessionPlacementInput"
      },
      "output": {
        "shape": "StopGameSessionPlacementOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Cancels a game session placement that is in <code>PENDING</code> status. To stop a placement, provide the placement ID values. If successful, the placement is moved to <code>CANCELLED</code> status.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "StopMatchmaking": {
      "name": "StopMatchmaking",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopMatchmakingInput"
      },
      "output": {
        "shape": "StopMatchmakingOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Cancels a matchmaking ticket or match backfill ticket that is currently being processed. To stop the matchmaking operation, specify the ticket ID. If successful, work on the ticket is stopped, and the ticket status is changed to <code>CANCELLED</code>.</p> <p>This call is also used to turn off automatic backfill for an individual game session. This is for game sessions that are created with a matchmaking configuration that has automatic backfill enabled. The ticket ID is included in the <code>MatchmakerData</code> of an updated game session object, which is provided to the game server.</p> <note> <p>If the operation is successful, the service sends back an empty JSON struct with the HTTP 200 response (not an empty HTTP body).</p> </note> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html\"> Add FlexMatch to a Game Client</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>"
    },
    "SuspendGameServerGroup": {
      "name": "SuspendGameServerGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SuspendGameServerGroupInput"
      },
      "output": {
        "shape": "SuspendGameServerGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Temporarily stops activity on a game server group without terminating instances or the game server group. You can restart activity by calling <a>ResumeGameServerGroup</a>. You can suspend the following activity:</p> <ul> <li> <p> <b>Instance type replacement</b> - This activity evaluates the current game hosting viability of all Spot instance types that are defined for the game server group. It updates the Auto Scaling group to remove nonviable Spot Instance types, which have a higher chance of game server interruptions. It then balances capacity across the remaining viable Spot Instance types. When this activity is suspended, the Auto Scaling group continues with its current balance, regardless of viability. Instance protection, utilization metrics, and capacity scaling activities continue to be active. </p> </li> </ul> <p>To suspend activity, specify a game server group ARN and the type of activity to be suspended. If successful, a <a>GameServerGroup</a> object is returned showing that the activity is listed in <code>SuspendedActions</code>.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
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
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> Assigns a tag to a GameLift resource. AWS resource tags provide an additional management tool set. You can use tags to organize resources, create IAM permissions policies to manage access to groups of resources, customize AWS cost breakdowns, etc. This operation handles the permissions necessary to manage tags for the following GameLift resource types:</p> <ul> <li> <p>Build</p> </li> <li> <p>Script</p> </li> <li> <p>Fleet</p> </li> <li> <p>Alias</p> </li> <li> <p>GameSessionQueue</p> </li> <li> <p>MatchmakingConfiguration</p> </li> <li> <p>MatchmakingRuleSet</p> </li> </ul> <p>To add a tag to a resource, specify the unique ARN value for the resource and provide a tag list containing one or more tags. The operation succeeds even if the list includes tags that are already assigned to the specified resource. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> in the <i>AWS General Reference</i> </p> <p> <a href=\"http://aws.amazon.com/answers/account-management/aws-tagging-strategies/\"> AWS Tagging Strategies</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>TagResource</a> </p> </li> <li> <p> <a>UntagResource</a> </p> </li> <li> <p> <a>ListTagsForResource</a> </p> </li> </ul>"
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
          "shape": "NotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TaggingFailedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Removes a tag that is assigned to a GameLift resource. Resource tags are used to organize AWS resources for a range of purposes. This operation handles the permissions necessary to manage tags for the following GameLift resource types:</p> <ul> <li> <p>Build</p> </li> <li> <p>Script</p> </li> <li> <p>Fleet</p> </li> <li> <p>Alias</p> </li> <li> <p>GameSessionQueue</p> </li> <li> <p>MatchmakingConfiguration</p> </li> <li> <p>MatchmakingRuleSet</p> </li> </ul> <p>To remove a tag from a resource, specify the unique ARN value for the resource and provide a string list containing one or more tags to be removed. This operation succeeds even if the list includes tags that are not currently assigned to the specified resource.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> in the <i>AWS General Reference</i> </p> <p> <a href=\"http://aws.amazon.com/answers/account-management/aws-tagging-strategies/\"> AWS Tagging Strategies</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>TagResource</a> </p> </li> <li> <p> <a>UntagResource</a> </p> </li> <li> <p> <a>ListTagsForResource</a> </p> </li> </ul>"
    },
    "UpdateAlias": {
      "name": "UpdateAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAliasInput"
      },
      "output": {
        "shape": "UpdateAliasOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Updates properties for an alias. To update properties, specify the alias ID to be updated and provide the information to be changed. To reassign an alias to another fleet, provide an updated routing strategy. If successful, the updated alias record is returned.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "UpdateBuild": {
      "name": "UpdateBuild",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateBuildInput"
      },
      "output": {
        "shape": "UpdateBuildOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Updates metadata in a build resource, including the build name and version. To update the metadata, specify the build ID to update and provide the new values. If successful, a build object containing the updated metadata is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html\"> Upload a Custom Server Build</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "UpdateFleetAttributes": {
      "name": "UpdateFleetAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateFleetAttributesInput"
      },
      "output": {
        "shape": "UpdateFleetAttributesOutput"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidFleetStatusException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Updates fleet properties, including name and description, for a fleet. To update metadata, specify the fleet ID and the property values that you want to change. If successful, the fleet ID for the updated fleet is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "UpdateFleetCapacity": {
      "name": "UpdateFleetCapacity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateFleetCapacityInput"
      },
      "output": {
        "shape": "UpdateFleetCapacityOutput"
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
          "shape": "InvalidFleetStatusException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Updates capacity settings for a fleet. Use this operation to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this operation, you may want to call <a>DescribeEC2InstanceLimits</a> to get the maximum capacity based on the fleet's EC2 instance type.</p> <p>Specify minimum and maximum number of instances. Amazon GameLift will not change fleet capacity to values fall outside of this range. This is particularly important when using auto-scaling (see <a>PutScalingPolicy</a>) to allow capacity to adjust based on player demand while imposing limits on automatic adjustments.</p> <p>To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling <a>DescribeFleetCapacity</a>. If the desired instance count is higher than the instance type's limit, the \"Limit Exceeded\" exception occurs.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "UpdateFleetPortSettings": {
      "name": "UpdateFleetPortSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateFleetPortSettingsInput"
      },
      "output": {
        "shape": "UpdateFleetPortSettingsOutput"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidFleetStatusException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Updates port settings for a fleet. To update settings, specify the fleet ID to be updated and list the permissions you want to update. List the permissions you want to add in <code>InboundPermissionAuthorizations</code>, and permissions you want to remove in <code>InboundPermissionRevocations</code>. Permissions to be removed must match existing fleet permissions. If successful, the fleet ID for the updated fleet is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "UpdateGameServer": {
      "name": "UpdateGameServer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGameServerInput"
      },
      "output": {
        "shape": "UpdateGameServerOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Updates information about a registered game server to help GameLift FleetIQ to track game server availability. This operation is called by a game server process that is running on an instance in a game server group. </p> <p>Use this operation to update the following types of game server information. You can make all three types of updates in the same request:</p> <ul> <li> <p>To update the game server's utilization status, identify the game server and game server group and specify the current utilization status. Use this status to identify when game servers are currently hosting games and when they are available to be claimed.</p> </li> <li> <p>To report health status, identify the game server and game server group and set health check to <code>HEALTHY</code>. If a game server does not report health status for a certain length of time, the game server is no longer considered healthy. As a result, it will be eventually deregistered from the game server group to avoid affecting utilization metrics. The best practice is to report health every 60 seconds.</p> </li> <li> <p>To change game server metadata, provide updated game server data.</p> </li> </ul> <p>Once a game server is successfully updated, the relevant statuses and timestamps are updated.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "UpdateGameServerGroup": {
      "name": "UpdateGameServerGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGameServerGroupInput"
      },
      "output": {
        "shape": "UpdateGameServerGroupOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> <b>This operation is used with the Amazon GameLift FleetIQ solution and game server groups.</b> </p> <p>Updates GameLift FleetIQ-specific properties for a game server group. Many Auto Scaling group properties are updated on the Auto Scaling group directly, including the launch template, Auto Scaling policies, and maximum/minimum/desired instance counts.</p> <p>To update the game server group, specify the game server group ID and provide the updated values. Before applying the updates, the new values are validated to ensure that GameLift FleetIQ can continue to perform instance balancing activity. If successful, a <a>GameServerGroup</a> object is returned.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html\">GameLift FleetIQ Guide</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "UpdateGameSession": {
      "name": "UpdateGameSession",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGameSessionInput"
      },
      "output": {
        "shape": "UpdateGameSessionOutput"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidGameSessionStatusException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates game session properties. This includes the session name, maximum player count, protection policy, which controls whether or not an active game session can be terminated during a scale-down event, and the player session creation policy, which controls whether or not new players can join the session. To update a game session, specify the game session ID and the values you want to change. If successful, an updated <a>GameSession</a> object is returned. </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "UpdateGameSessionQueue": {
      "name": "UpdateGameSessionQueue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGameSessionQueueInput"
      },
      "output": {
        "shape": "UpdateGameSessionQueueOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Updates settings for a game session queue, which determines how new game session requests in the queue are processed. To update settings, specify the queue name to be updated and provide the new settings. When updating destinations, provide a complete list of destinations. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html\"> Using Multi-Region Queues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "UpdateMatchmakingConfiguration": {
      "name": "UpdateMatchmakingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMatchmakingConfigurationInput"
      },
      "output": {
        "shape": "UpdateMatchmakingConfigurationOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        }
      ],
      "documentation": "<p>Updates settings for a FlexMatch matchmaking configuration. These changes affect all matches and game sessions that are created after the update. To update settings, specify the configuration name to be updated and provide the new settings. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html\"> Design a FlexMatch Matchmaker</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    },
    "UpdateRuntimeConfiguration": {
      "name": "UpdateRuntimeConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRuntimeConfigurationInput"
      },
      "output": {
        "shape": "UpdateRuntimeConfigurationOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidFleetStatusException"
        }
      ],
      "documentation": "<p>Updates the current runtime configuration for the specified fleet, which tells Amazon GameLift how to launch server processes on instances in the fleet. You can update a fleet's runtime configuration at any time after the fleet is created; it does not need to be in an <code>ACTIVE</code> status.</p> <p>To update runtime configuration, specify the fleet ID and provide a <code>RuntimeConfiguration</code> object with an updated set of server process configurations.</p> <p>Each instance in a Amazon GameLift fleet checks regularly for an updated runtime configuration and changes how it launches server processes to comply with the latest version. Existing server processes are not affected by the update; runtime configuration changes are applied gradually as existing processes shut down and new processes are launched during Amazon GameLift's normal process recycling activity.</p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html\">Setting up GameLift Fleets</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "UpdateScript": {
      "name": "UpdateScript",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateScriptInput"
      },
      "output": {
        "shape": "UpdateScriptOutput"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Updates Realtime script metadata and content.</p> <p>To update script metadata, specify the script ID and provide updated name and/or version values. </p> <p>To update script content, provide an updated zip file by pointing to either a local file or an Amazon S3 bucket location. You can use either method regardless of how the original script was uploaded. Use the <i>Version</i> parameter to track updates to the script.</p> <p>If the call is successful, the updated metadata is stored in the script record and a revised script is uploaded to the Amazon GameLift service. Once the script is updated and acquired by a fleet instance, the new version is used for all new game sessions. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html\">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>"
    },
    "ValidateMatchmakingRuleSet": {
      "name": "ValidateMatchmakingRuleSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ValidateMatchmakingRuleSetInput"
      },
      "output": {
        "shape": "ValidateMatchmakingRuleSetOutput"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "UnsupportedRegionException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Validates the syntax of a matchmaking rule or rule set. This operation checks that the rule set is using syntactically correct JSON and that it conforms to allowed property expressions. To validate syntax, provide a rule set JSON string.</p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html\">Build a Rule Set</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>"
    }
  },
  "shapes": {
    "AcceptMatchInput": {
      "type": "structure",
      "required": [
        "TicketId",
        "PlayerIds",
        "AcceptanceType"
      ],
      "members": {
        "TicketId": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking ticket. The ticket must be in status <code>REQUIRES_ACCEPTANCE</code>; otherwise this request will fail.</p>"
        },
        "PlayerIds": {
          "shape": "StringList",
          "documentation": "<p>A unique identifier for a player delivering the response. This parameter can include one or multiple player IDs.</p>"
        },
        "AcceptanceType": {
          "shape": "AcceptanceType",
          "documentation": "<p>Player response to the proposed match.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "AcceptMatchOutput": {
      "type": "structure",
      "members": {}
    },
    "AcceptanceType": {
      "type": "string",
      "enum": [
        "ACCEPT",
        "REJECT"
      ]
    },
    "Alias": {
      "type": "structure",
      "members": {
        "AliasId": {
          "shape": "AliasId",
          "documentation": "<p>A unique identifier for an alias. Alias IDs are unique within a Region.</p>"
        },
        "Name": {
          "shape": "NonBlankAndLengthConstraintString",
          "documentation": "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
        },
        "AliasArn": {
          "shape": "AliasArn",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift alias resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift alias ARN, the resource ID matches the alias ID value.</p>"
        },
        "Description": {
          "shape": "FreeText",
          "documentation": "<p>A human-readable description of an alias.</p>"
        },
        "RoutingStrategy": {
          "shape": "RoutingStrategy",
          "documentation": "<p>The routing configuration, including routing type and fleet target, for the alias. </p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this data object was last modified. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        }
      },
      "documentation": "<p>Properties that describe an alias resource.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "AliasArn": {
      "type": "string",
      "pattern": "^arn:.*:alias\\/alias-\\S+"
    },
    "AliasId": {
      "type": "string",
      "pattern": "^alias-\\S+"
    },
    "AliasIdOrArn": {
      "type": "string",
      "pattern": "^alias-\\S+|^arn:.*:alias\\/alias-\\S+"
    },
    "AliasList": {
      "type": "list",
      "member": {
        "shape": "Alias"
      }
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "ArnStringModel": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9:/-]+"
    },
    "AttributeValue": {
      "type": "structure",
      "members": {
        "S": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>For single string values. Maximum string length is 100 characters.</p>"
        },
        "N": {
          "shape": "DoubleObject",
          "documentation": "<p>For number values, expressed as double.</p>"
        },
        "SL": {
          "shape": "StringList",
          "documentation": "<p>For a list of up to 10 strings. Maximum length for each string is 100 characters. Duplicate values are not recognized; all occurrences of the repeated value after the first of a repeated value are ignored.</p>"
        },
        "SDM": {
          "shape": "StringDoubleMap",
          "documentation": "<p>For a map of up to 10 data type:value pairs. Maximum length for each string value is 100 characters. </p>"
        }
      },
      "documentation": "<p>Values for use in <a>Player</a> attribute key-value pairs. This object lets you specify an attribute value using any of the valid data types: string, number, string array, or data map. Each <code>AttributeValue</code> object can use only one of the available properties.</p>"
    },
    "AutoScalingGroupArn": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "AwsCredentials": {
      "type": "structure",
      "members": {
        "AccessKeyId": {
          "shape": "NonEmptyString",
          "documentation": "<p>Temporary key allowing access to the Amazon GameLift S3 account.</p>"
        },
        "SecretAccessKey": {
          "shape": "NonEmptyString",
          "documentation": "<p>Temporary secret key allowing access to the Amazon GameLift S3 account.</p>"
        },
        "SessionToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>Token used to associate a specific build ID with the files uploaded using these credentials.</p>"
        }
      },
      "documentation": "<p>Temporary access credentials used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>",
      "sensitive": true
    },
    "BackfillMode": {
      "type": "string",
      "enum": [
        "AUTOMATIC",
        "MANUAL"
      ]
    },
    "BalancingStrategy": {
      "type": "string",
      "enum": [
        "SPOT_ONLY",
        "SPOT_PREFERRED",
        "ON_DEMAND_ONLY"
      ]
    },
    "BooleanModel": {
      "type": "boolean"
    },
    "Build": {
      "type": "structure",
      "members": {
        "BuildId": {
          "shape": "BuildId",
          "documentation": "<p>A unique identifier for a build.</p>"
        },
        "BuildArn": {
          "shape": "BuildArn",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift build resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift build ARN, the resource ID matches the <i>BuildId</i> value.</p>"
        },
        "Name": {
          "shape": "FreeText",
          "documentation": "<p>A descriptive label that is associated with a build. Build names do not need to be unique. It can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>"
        },
        "Version": {
          "shape": "FreeText",
          "documentation": "<p>Version information that is associated with a build or script. Version strings do not need to be unique. This value can be set using <a>CreateBuild</a> or <a>UpdateBuild</a>.</p>"
        },
        "Status": {
          "shape": "BuildStatus",
          "documentation": "<p>Current status of the build.</p> <p>Possible build statuses include the following:</p> <ul> <li> <p> <b>INITIALIZED</b> -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value. </p> </li> <li> <p> <b>READY</b> -- The game build has been successfully uploaded. You can now create new fleets for this build.</p> </li> <li> <p> <b>FAILED</b> -- The game build upload failed. You cannot create new fleets for this build. </p> </li> </ul>"
        },
        "SizeOnDisk": {
          "shape": "PositiveLong",
          "documentation": "<p>File size of the uploaded game build, expressed in bytes. When the build status is <code>INITIALIZED</code>, this value is 0.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        }
      },
      "documentation": "<p>Properties describing a custom game build.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>"
    },
    "BuildArn": {
      "type": "string",
      "pattern": "^arn:.*:build\\/build-\\S+"
    },
    "BuildId": {
      "type": "string",
      "pattern": "^build-\\S+"
    },
    "BuildIdOrArn": {
      "type": "string",
      "pattern": "^build-\\S+|^arn:.*:build\\/build-\\S+"
    },
    "BuildList": {
      "type": "list",
      "member": {
        "shape": "Build"
      }
    },
    "BuildStatus": {
      "type": "string",
      "enum": [
        "INITIALIZED",
        "READY",
        "FAILED"
      ]
    },
    "CertificateConfiguration": {
      "type": "structure",
      "required": [
        "CertificateType"
      ],
      "members": {
        "CertificateType": {
          "shape": "CertificateType",
          "documentation": "<p>Indicates whether a TLS/SSL certificate was generated for a fleet. </p> <p> </p> <p> </p>"
        }
      },
      "documentation": "<p>Information about the use of a TLS/SSL certificate for a fleet. TLS certificate generation is enabled at the fleet level, with one certificate generated for the fleet. When this feature is enabled, the certificate can be retrieved using the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html\">GameLift Server SDK</a> call <code>GetInstanceCertificate</code>. All instances in a fleet share the same certificate.</p>"
    },
    "CertificateType": {
      "type": "string",
      "enum": [
        "DISABLED",
        "GENERATED"
      ]
    },
    "ClaimGameServerInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group where the game server is running. Use either the <a>GameServerGroup</a> name or ARN value.. If you are not specifying a game server to claim, this value identifies where you want GameLift FleetIQ to look for an available game server to claim. </p>"
        },
        "GameServerId": {
          "shape": "GameServerId",
          "documentation": "<p>A custom string that uniquely identifies the game server to claim. If this parameter is left empty, GameLift FleetIQ searches for an available game server in the specified game server group.</p>"
        },
        "GameServerData": {
          "shape": "GameServerData",
          "documentation": "<p>A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information on game servers using <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>"
        }
      }
    },
    "ClaimGameServerOutput": {
      "type": "structure",
      "members": {
        "GameServer": {
          "shape": "GameServer",
          "documentation": "<p>Object that describes the newly claimed game server.</p>"
        }
      }
    },
    "ComparisonOperatorType": {
      "type": "string",
      "enum": [
        "GreaterThanOrEqualToThreshold",
        "GreaterThanThreshold",
        "LessThanThreshold",
        "LessThanOrEqualToThreshold"
      ]
    },
    "CreateAliasInput": {
      "type": "structure",
      "required": [
        "Name",
        "RoutingStrategy"
      ],
      "members": {
        "Name": {
          "shape": "NonBlankAndLengthConstraintString",
          "documentation": "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A human-readable description of the alias.</p>"
        },
        "RoutingStrategy": {
          "shape": "RoutingStrategy",
          "documentation": "<p>The routing configuration, including routing type and fleet target, for the alias. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new alias resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateAliasOutput": {
      "type": "structure",
      "members": {
        "Alias": {
          "shape": "Alias",
          "documentation": "<p>The newly created alias resource.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateBuildInput": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a build. Build names do not need to be unique. You can use <a>UpdateBuild</a> to change this value later. </p>"
        },
        "Version": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateBuild</a> to change this value later. </p>"
        },
        "StorageLocation": {
          "shape": "S3Location",
          "documentation": "<p>Information indicating where your game build files are stored. Use this parameter only when creating a build with files stored in an S3 bucket that you own. The storage location must specify an S3 bucket name and key. The location must also specify a role ARN that you set up to allow Amazon GameLift to access your S3 bucket. The S3 bucket and your new build must be in the same Region.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>The operating system that the game server binaries are built to run on. This value determines the type of fleet resources that you can use for this build. If your game build contains multiple executables, they all must run on the same operating system. If an operating system is not specified when creating a build, Amazon GameLift uses the default value (WINDOWS_2012). This value cannot be changed later.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new build resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateBuildOutput": {
      "type": "structure",
      "members": {
        "Build": {
          "shape": "Build",
          "documentation": "<p>The newly created build resource, including a unique build IDs and status. </p>"
        },
        "UploadCredentials": {
          "shape": "AwsCredentials",
          "documentation": "<p>This element is returned only when the operation is called without a storage location. It contains credentials to use when you are uploading a build file to an S3 bucket that is owned by Amazon GameLift. Credentials have a limited life span. To refresh these credentials, call <a>RequestUploadCredentials</a>. </p>"
        },
        "StorageLocation": {
          "shape": "S3Location",
          "documentation": "<p>Amazon S3 location for your game build file, including bucket name and key.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateFleetInput": {
      "type": "structure",
      "required": [
        "Name",
        "EC2InstanceType"
      ],
      "members": {
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A human-readable description of a fleet.</p>"
        },
        "BuildId": {
          "shape": "BuildIdOrArn",
          "documentation": "<p>A unique identifier for a build to be deployed on the new fleet. You can use either the build ID or ARN value. The custom game server build must have been successfully uploaded to Amazon GameLift and be in a <code>READY</code> status. This fleet setting cannot be changed once the fleet is created. </p>"
        },
        "ScriptId": {
          "shape": "ScriptIdOrArn",
          "documentation": "<p>A unique identifier for a Realtime script to be deployed on the new fleet. You can use either the script ID or ARN value. The Realtime script must have been successfully uploaded to Amazon GameLift. This fleet setting cannot be changed once the fleet is created.</p>"
        },
        "ServerLaunchPath": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>This parameter is no longer used. Instead, specify a server launch path using the <code>RuntimeConfiguration</code> parameter. Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.</p>"
        },
        "ServerLaunchParameters": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>This parameter is no longer used. Instead, specify server launch parameters in the <code>RuntimeConfiguration</code> parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)</p>"
        },
        "LogPaths": {
          "shape": "StringList",
          "documentation": "<p>This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API <code>ProcessReady()</code> and specify one or more directory paths in <code>logParameters</code>. See more information in the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process\">Server API Reference</a>. </p>"
        },
        "EC2InstanceType": {
          "shape": "EC2InstanceType",
          "documentation": "<p>The name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed descriptions.</p>"
        },
        "EC2InboundPermissions": {
          "shape": "IpPermissionsList",
          "documentation": "<p>Range of IP addresses and port settings that permit inbound traffic to access game sessions that are running on the fleet. For fleets using a custom game build, this parameter is required before game sessions running on the fleet can accept connections. For Realtime Servers fleets, Amazon GameLift automatically sets TCP and UDP ranges for use by the Realtime servers. You can specify multiple permission settings or add more by updating the fleet.</p>"
        },
        "NewGameSessionProtectionPolicy": {
          "shape": "ProtectionPolicy",
          "documentation": "<p>A game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using <a>UpdateFleetAttributes</a>, but this change will only affect sessions created after the policy change. You can also set protection for individual instances using <a>UpdateGameSession</a>.</p> <ul> <li> <p> <b>NoProtection</b> - The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> - If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>"
        },
        "RuntimeConfiguration": {
          "shape": "RuntimeConfiguration",
          "documentation": "<p>Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime script. The runtime configuration defines the server executables or launch script file, launch parameters, and the number of processes to run concurrently on each instance. When creating a fleet, the runtime configuration must have at least one server process configuration; otherwise the request fails with an invalid request exception. (This parameter replaces the parameters <code>ServerLaunchPath</code> and <code>ServerLaunchParameters</code>, although requests that contain values for these parameters instead of a runtime configuration will continue to work.) This parameter is required unless the parameters <code>ServerLaunchPath</code> and <code>ServerLaunchParameters</code> are defined. Runtime configuration replaced these parameters, but fleets that use them will continue to work. </p>"
        },
        "ResourceCreationLimitPolicy": {
          "shape": "ResourceCreationLimitPolicy",
          "documentation": "<p>A policy that limits the number of game sessions an individual player can create over a span of time for this fleet.</p>"
        },
        "MetricGroups": {
          "shape": "MetricGroupList",
          "documentation": "<p>The name of an Amazon CloudWatch metric group to add this fleet to. A metric group aggregates the metrics for all fleets in the group. Specify an existing metric group name, or provide a new name to create a new metric group. A fleet can only be included in one metric group at a time. </p>"
        },
        "PeerVpcAwsAccountId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your account ID in the AWS Management Console under account settings. </p>"
        },
        "PeerVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region as your fleet. To look up a VPC ID, use the <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>. </p>"
        },
        "FleetType": {
          "shape": "FleetType",
          "documentation": "<p>Indicates whether to use On-Demand instances or Spot instances for this fleet. If empty, the default is <code>ON_DEMAND</code>. Both categories of instances use identical hardware and configurations based on the instance type selected for this fleet. Learn more about <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot\"> On-Demand versus Spot Instances</a>. </p>"
        },
        "InstanceRoleArn": {
          "shape": "NonEmptyString",
          "documentation": "<p>A unique identifier for an AWS IAM role that manages access to your AWS services. With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, including install scripts, server processes, and daemons (background processes). Create a role or look up a role's ARN from the <a href=\"https://console.aws.amazon.com/iam/\">IAM dashboard</a> in the AWS Management Console. Learn more about using on-box credentials for your game servers at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html\"> Access external resources from a game server</a>.</p>"
        },
        "CertificateConfiguration": {
          "shape": "CertificateConfiguration",
          "documentation": "<p>Indicates whether to generate a TLS/SSL certificate for the new fleet. TLS certificates are used for encrypting traffic between game clients and game servers running on GameLift. If this parameter is not specified, the default value, DISABLED, is used. This fleet setting cannot be changed once the fleet is created. Learn more at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security\">Securing Client/Server Communication</a>. </p> <p>Note: This feature requires the AWS Certificate Manager (ACM) service, which is available in the AWS global partition but not in all other partitions. When working in a partition that does not support this feature, a request for a new fleet with certificate generation results fails with a 4xx unsupported Region error.</p> <p>Valid values include: </p> <ul> <li> <p> <b>GENERATED</b> - Generate a TLS/SSL certificate for this fleet.</p> </li> <li> <p> <b>DISABLED</b> - (default) Do not generate a TLS/SSL certificate for this fleet.</p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new fleet resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateFleetOutput": {
      "type": "structure",
      "members": {
        "FleetAttributes": {
          "shape": "FleetAttributes",
          "documentation": "<p>Properties for the newly created fleet.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateGameServerGroupInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "RoleArn",
        "MinSize",
        "MaxSize",
        "LaunchTemplate",
        "InstanceDefinitions"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupName",
          "documentation": "<p>An identifier for the new game server group. This value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group. The name must be unique per Region per AWS account.</p>"
        },
        "RoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.</p>"
        },
        "MinSize": {
          "shape": "WholeNumber",
          "documentation": "<p>The minimum number of instances allowed in the EC2 Auto Scaling group. During automatic scaling events, GameLift FleetIQ and EC2 do not scale down the group below this minimum. In production, this value should be set to at least 1. After the Auto Scaling group is created, update this value directly in the Auto Scaling group using the AWS console or APIs.</p>"
        },
        "MaxSize": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of instances allowed in the EC2 Auto Scaling group. During automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum. After the Auto Scaling group is created, update this value directly in the Auto Scaling group using the AWS console or APIs.</p>"
        },
        "LaunchTemplate": {
          "shape": "LaunchTemplateSpecification",
          "documentation": "<p>The EC2 launch template that contains configuration settings and game server code to be deployed to all instances in the game server group. You can specify the template using either the template name or ID. For help with creating a launch template, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html\">Creating a Launch Template for an Auto Scaling Group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. After the Auto Scaling group is created, update this value directly in the Auto Scaling group using the AWS console or APIs.</p>"
        },
        "InstanceDefinitions": {
          "shape": "InstanceDefinitions",
          "documentation": "<p>The EC2 instance types and sizes to use in the Auto Scaling group. The instance definitions must specify at least two different instance types that are supported by GameLift FleetIQ. For more information on instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">EC2 Instance Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally specify capacity weighting for each instance type. If no weight value is specified for an instance type, it is set to the default value \"1\". For more information about capacity weighting, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\"> Instance Weighting for Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>"
        },
        "AutoScalingPolicy": {
          "shape": "GameServerGroupAutoScalingPolicy",
          "documentation": "<p>Configuration settings to define a scaling policy for the Auto Scaling group that is optimized for game hosting. The scaling policy uses the metric <code>\"PercentUtilizedGameServers\"</code> to maintain a buffer of idle game servers that can immediately accommodate new games and players. After the Auto Scaling group is created, update this value directly in the Auto Scaling group using the AWS console or APIs.</p>"
        },
        "BalancingStrategy": {
          "shape": "BalancingStrategy",
          "documentation": "<p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the game server group. Method options include the following:</p> <ul> <li> <p> <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot Instances are unavailable or not viable for game hosting, the game server group provides no hosting capacity until Spot Instances can again be used. Until then, no new instances are started, and the existing nonviable Spot Instances are terminated (after current gameplay ends) and are not replaced.</p> </li> <li> <p> <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in the game server group. If Spot Instances are unavailable, the game server group continues to provide hosting capacity by falling back to On-Demand Instances. Existing nonviable Spot Instances are terminated (after current gameplay ends) and are replaced with new On-Demand Instances.</p> </li> <li> <p> <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game server group. No Spot Instances are used, even when available, while this balancing strategy is in force.</p> </li> </ul>"
        },
        "GameServerProtectionPolicy": {
          "shape": "GameServerProtectionPolicy",
          "documentation": "<p>A flag that indicates whether instances in the game server group are protected from early termination. Unprotected instances that have active game servers running might be terminated during a scale-down event, causing players to be dropped from the game. Protected instances cannot be terminated while there are active game servers running except in the event of a forced game server group deletion (see ). An exception to this is with Spot Instances, which can be terminated by AWS regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>"
        },
        "VpcSubnets": {
          "shape": "VpcSubnets",
          "documentation": "<p>A list of virtual private cloud (VPC) subnets to use with instances in the game server group. By default, all GameLift FleetIQ-supported Availability Zones are used. You can use this parameter to specify VPCs that you've set up. This property cannot be updated after the game server group is created, and the corresponding Auto Scaling group will always use the property value that is set with this request, even if the Auto Scaling group is updated directly</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new game server group resource. Tags are developer-defined key-value pairs. Tagging AWS resources is useful for resource management, access management, and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags, respectively. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      }
    },
    "CreateGameServerGroupOutput": {
      "type": "structure",
      "members": {
        "GameServerGroup": {
          "shape": "GameServerGroup",
          "documentation": "<p>The newly created game server group object, including the new ARN value for the GameLift FleetIQ game server group and the object's status. The EC2 Auto Scaling group ARN is initially null, since the group has not yet been created. This value is added once the game server group status reaches <code>ACTIVE</code>. </p>"
        }
      }
    },
    "CreateGameSessionInput": {
      "type": "structure",
      "required": [
        "MaximumPlayerSessionCount"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to create a game session in. You can use either the fleet ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.</p>"
        },
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>A unique identifier for an alias associated with the fleet to create a game session in. You can use either the alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.</p>"
        },
        "MaximumPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        },
        "CreatorId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player or entity creating the game session. This ID is used to enforce a resource protection policy (if one exists) that limits the number of concurrent active game sessions one player can have.</p>"
        },
        "GameSessionId": {
          "shape": "IdStringModel",
          "documentation": "<p> <i>This parameter is no longer preferred. Please use <code>IdempotencyToken</code> instead.</i> Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ARN has the following format: <code>arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;</code>.) </p>"
        },
        "IdempotencyToken": {
          "shape": "IdStringModel",
          "documentation": "<p>Custom string that uniquely identifies a request for a new game session. Maximum token length is 48 characters. If provided, this string is included in the new game session's ID. (A game session ARN has the following format: <code>arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;</code>.) Idempotency tokens remain in use for 30 days after a game session has ended; game session objects are retained for this time period and then deleted.</p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateGameSessionOutput": {
      "type": "structure",
      "members": {
        "GameSession": {
          "shape": "GameSession",
          "documentation": "<p>Object that describes the newly created game session record.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateGameSessionQueueInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "GameSessionQueueName",
          "documentation": "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>"
        },
        "TimeoutInSeconds": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>"
        },
        "PlayerLatencyPolicies": {
          "shape": "PlayerLatencyPolicyList",
          "documentation": "<p>A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. A player latency policy must set a value for <code>MaximumIndividualPlayerLatencyMilliseconds</code>. If none is set, this API request fails.</p>"
        },
        "Destinations": {
          "shape": "GameSessionQueueDestinationList",
          "documentation": "<p>A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new game session queue resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateGameSessionQueueOutput": {
      "type": "structure",
      "members": {
        "GameSessionQueue": {
          "shape": "GameSessionQueue",
          "documentation": "<p>An object that describes the newly created game session queue.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateMatchmakingConfigurationInput": {
      "type": "structure",
      "required": [
        "Name",
        "GameSessionQueueArns",
        "RequestTimeoutSeconds",
        "AcceptanceRequired",
        "RuleSetName"
      ],
      "members": {
        "Name": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking configuration. This name is used to identify the configuration associated with a matchmaking request or ticket.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A human-readable description of the matchmaking configuration. </p>"
        },
        "GameSessionQueueArns": {
          "shape": "QueueArnsList",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any Region.</p>"
        },
        "RequestTimeoutSeconds": {
          "shape": "MatchmakingRequestTimeoutInteger",
          "documentation": "<p>The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that fail due to timing out can be resubmitted as needed.</p>"
        },
        "AcceptanceTimeoutSeconds": {
          "shape": "MatchmakingAcceptanceTimeoutInteger",
          "documentation": "<p>The length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.</p>"
        },
        "AcceptanceRequired": {
          "shape": "BooleanModel",
          "documentation": "<p>A flag that determines whether a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to <code>TRUE</code>.</p>"
        },
        "RuleSetName": {
          "shape": "MatchmakingRuleSetName",
          "documentation": "<p>A unique identifier for a matchmaking rule set to use with this configuration. You can use either the rule set name or ARN value. A matchmaking configuration can only use rule sets that are defined in the same Region.</p>"
        },
        "NotificationTarget": {
          "shape": "SnsArnStringModel",
          "documentation": "<p>An SNS topic ARN that is set up to receive matchmaking notifications.</p>"
        },
        "AdditionalPlayerCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The number of player slots in a match to keep open for future players. For example, assume that the configuration's rule set specifies a match for a single 12-person team. If the additional player count is set to 2, only 10 players are initially selected for the match.</p>"
        },
        "CustomEventData": {
          "shape": "CustomEventData",
          "documentation": "<p>Information to be added to all events related to this matchmaking configuration. </p>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>A set of custom properties for a game session, formatted as key-value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object that is created for a successful match. </p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object that is created for a successful match.</p>"
        },
        "BackfillMode": {
          "shape": "BackfillMode",
          "documentation": "<p>The method used to backfill game sessions that are created with this matchmaking configuration. Specify <code>MANUAL</code> when your game manages backfill requests manually or does not use the match backfill feature. Specify <code>AUTOMATIC</code> to have GameLift create a <a>StartMatchBackfill</a> request whenever a game session has one or more open slots. Learn more about manual and automatic backfill in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html\"> Backfill Existing Games with FlexMatch</a>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new matchmaking configuration resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateMatchmakingConfigurationOutput": {
      "type": "structure",
      "members": {
        "Configuration": {
          "shape": "MatchmakingConfiguration",
          "documentation": "<p>Object that describes the newly created matchmaking configuration.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateMatchmakingRuleSetInput": {
      "type": "structure",
      "required": [
        "Name",
        "RuleSetBody"
      ],
      "members": {
        "Name": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name value. Note that the rule set name is different from the optional <code>name</code> field in the rule set body.</p>"
        },
        "RuleSetBody": {
          "shape": "RuleSetBody",
          "documentation": "<p>A collection of matchmaking rules, formatted as a JSON string. Comments are not allowed in JSON, but most elements support a description field.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new matchmaking rule set resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateMatchmakingRuleSetOutput": {
      "type": "structure",
      "required": [
        "RuleSet"
      ],
      "members": {
        "RuleSet": {
          "shape": "MatchmakingRuleSet",
          "documentation": "<p>The newly created matchmaking rule set.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreatePlayerSessionInput": {
      "type": "structure",
      "required": [
        "GameSessionId",
        "PlayerId"
      ],
      "members": {
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to add a player to.</p>"
        },
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player. Player IDs are developer-defined.</p>"
        },
        "PlayerData": {
          "shape": "PlayerData",
          "documentation": "<p>Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreatePlayerSessionOutput": {
      "type": "structure",
      "members": {
        "PlayerSession": {
          "shape": "PlayerSession",
          "documentation": "<p>Object that describes the newly created player session record.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreatePlayerSessionsInput": {
      "type": "structure",
      "required": [
        "GameSessionId",
        "PlayerIds"
      ],
      "members": {
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to add players to.</p>"
        },
        "PlayerIds": {
          "shape": "PlayerIdList",
          "documentation": "<p>List of unique identifiers for the players to be added.</p>"
        },
        "PlayerDataMap": {
          "shape": "PlayerDataMap",
          "documentation": "<p>Map of string pairs, each specifying a player ID and a set of developer-defined information related to the player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. Player data strings for player IDs not included in the <code>PlayerIds</code> parameter are ignored. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreatePlayerSessionsOutput": {
      "type": "structure",
      "members": {
        "PlayerSessions": {
          "shape": "PlayerSessionList",
          "documentation": "<p>A collection of player session objects created for the added players.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateScriptInput": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a script. Script names do not need to be unique. You can use <a>UpdateScript</a> to change this value later. </p>"
        },
        "Version": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>The version that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateScript</a> to change this value later. </p>"
        },
        "StorageLocation": {
          "shape": "S3Location",
          "documentation": "<p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the \"key\"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3 bucket must be in the same Region where you want to create a new script. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier version. </p>"
        },
        "ZipFile": {
          "shape": "ZipBlob",
          "documentation": "<p>A data object containing your Realtime scripts and dependencies as a zip file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.</p> <p>When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the string \"fileb://\" to indicate that the file data is a binary object. For example: <code>--zip-file fileb://myRealtimeScript.zip</code>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of labels to assign to the new script resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> in the <i>AWS General Reference</i>. Once the resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.</p>"
        }
      }
    },
    "CreateScriptOutput": {
      "type": "structure",
      "members": {
        "Script": {
          "shape": "Script",
          "documentation": "<p>The newly created script record with a unique script ID and ARN. The new script's storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket under your account, the storage location reflects the information that was provided in the <i>CreateScript</i> request; (2) If the script file was uploaded from a local zip file, the storage location reflects an S3 location controls by the Amazon GameLift service.</p>"
        }
      }
    },
    "CreateVpcPeeringAuthorizationInput": {
      "type": "structure",
      "required": [
        "GameLiftAwsAccountId",
        "PeerVpcId"
      ],
      "members": {
        "GameLiftAwsAccountId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.</p>"
        },
        "PeerVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateVpcPeeringAuthorizationOutput": {
      "type": "structure",
      "members": {
        "VpcPeeringAuthorization": {
          "shape": "VpcPeeringAuthorization",
          "documentation": "<p>Details on the requested VPC peering authorization, including expiration.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "CreateVpcPeeringConnectionInput": {
      "type": "structure",
      "required": [
        "FleetId",
        "PeerVpcAwsAccountId",
        "PeerVpcId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift which GameLift VPC to peer with. </p>"
        },
        "PeerVpcAwsAccountId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your Account ID in the AWS Management Console under account settings.</p>"
        },
        "PeerVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "CreateVpcPeeringConnectionOutput": {
      "type": "structure",
      "members": {}
    },
    "CustomEventData": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "DeleteAliasInput": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>A unique identifier of the alias that you want to delete. You can use either the alias ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteBuildInput": {
      "type": "structure",
      "required": [
        "BuildId"
      ],
      "members": {
        "BuildId": {
          "shape": "BuildIdOrArn",
          "documentation": "<p>A unique identifier for a build to delete. You can use either the build ID or ARN value. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteFleetInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to be deleted. You can use either the fleet ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteGameServerGroupInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "DeleteOption": {
          "shape": "GameServerGroupDeleteOption",
          "documentation": "<p>The type of delete to perform. Options include the following:</p> <ul> <li> <p> <code>SAFE_DELETE</code> – Terminates the game server group and EC2 Auto Scaling group only when it has no game servers that are in <code>UTILIZED</code> status.</p> </li> <li> <p> <code>FORCE_DELETE</code> – Terminates the game server group, including all active game servers regardless of their utilization status, and the EC2 Auto Scaling group. </p> </li> <li> <p> <code>RETAIN</code> – Does a safe delete of the game server group but retains the EC2 Auto Scaling group as is.</p> </li> </ul>"
        }
      }
    },
    "DeleteGameServerGroupOutput": {
      "type": "structure",
      "members": {
        "GameServerGroup": {
          "shape": "GameServerGroup",
          "documentation": "<p>An object that describes the deleted game server group resource, with status updated to <code>DELETE_SCHEDULED</code>. </p>"
        }
      }
    },
    "DeleteGameSessionQueueInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "GameSessionQueueNameOrArn",
          "documentation": "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation. </p>"
    },
    "DeleteGameSessionQueueOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteMatchmakingConfigurationInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "MatchmakingConfigurationName",
          "documentation": "<p>A unique identifier for a matchmaking configuration. You can use either the configuration name or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteMatchmakingConfigurationOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteMatchmakingRuleSetInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "MatchmakingRuleSetName",
          "documentation": "<p>A unique identifier for a matchmaking rule set to be deleted. (Note: The rule set name is different from the optional \"name\" field in the rule set body.) You can use either the rule set name or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteMatchmakingRuleSetOutput": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DeleteScalingPolicyInput": {
      "type": "structure",
      "required": [
        "Name",
        "FleetId"
      ],
      "members": {
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a scaling policy. Policy names do not need to be unique.</p>"
        },
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to be deleted. You can use either the fleet ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteScriptInput": {
      "type": "structure",
      "required": [
        "ScriptId"
      ],
      "members": {
        "ScriptId": {
          "shape": "ScriptIdOrArn",
          "documentation": "<p>A unique identifier for a Realtime script to delete. You can use either the script ID or ARN value.</p>"
        }
      }
    },
    "DeleteVpcPeeringAuthorizationInput": {
      "type": "structure",
      "required": [
        "GameLiftAwsAccountId",
        "PeerVpcId"
      ],
      "members": {
        "GameLiftAwsAccountId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.</p>"
        },
        "PeerVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteVpcPeeringAuthorizationOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteVpcPeeringConnectionInput": {
      "type": "structure",
      "required": [
        "FleetId",
        "VpcPeeringConnectionId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet. This fleet specified must match the fleet referenced in the VPC peering connection record. You can use either the fleet ID or ARN value.</p>"
        },
        "VpcPeeringConnectionId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC peering connection. This value is included in the <a>VpcPeeringConnection</a> object, which can be retrieved by calling <a>DescribeVpcPeeringConnections</a>.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DeleteVpcPeeringConnectionOutput": {
      "type": "structure",
      "members": {}
    },
    "DeregisterGameServerInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "GameServerId"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group where the game server is running. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "GameServerId": {
          "shape": "GameServerId",
          "documentation": "<p>A custom string that uniquely identifies the game server to deregister.</p>"
        }
      }
    },
    "DescribeAliasInput": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>The unique identifier for the fleet alias that you want to retrieve. You can use either the alias ID or ARN value. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeAliasOutput": {
      "type": "structure",
      "members": {
        "Alias": {
          "shape": "Alias",
          "documentation": "<p>The requested alias resource.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeBuildInput": {
      "type": "structure",
      "required": [
        "BuildId"
      ],
      "members": {
        "BuildId": {
          "shape": "BuildIdOrArn",
          "documentation": "<p>A unique identifier for a build to retrieve properties for. You can use either the build ID or ARN value. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeBuildOutput": {
      "type": "structure",
      "members": {
        "Build": {
          "shape": "Build",
          "documentation": "<p>Set of properties describing the requested build.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeEC2InstanceLimitsInput": {
      "type": "structure",
      "members": {
        "EC2InstanceType": {
          "shape": "EC2InstanceType",
          "documentation": "<p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed descriptions. Leave this parameter blank to retrieve limits for all types.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeEC2InstanceLimitsOutput": {
      "type": "structure",
      "members": {
        "EC2InstanceLimits": {
          "shape": "EC2InstanceLimitList",
          "documentation": "<p>The maximum number of instances for the specified instance type.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeFleetAttributesInput": {
      "type": "structure",
      "members": {
        "FleetIds": {
          "shape": "FleetIdOrArnList",
          "documentation": "<p>A list of unique fleet identifiers to retrieve attributes for. You can use either the fleet ID or ARN value. To retrieve attributes for all current fleets, do not include this parameter. If the list of fleet identifiers includes fleets that don't currently exist, the request succeeds but no attributes for that fleet are returned.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeFleetAttributesOutput": {
      "type": "structure",
      "members": {
        "FleetAttributes": {
          "shape": "FleetAttributesList",
          "documentation": "<p>A collection of objects containing attribute metadata for each requested fleet ID. Attribute objects are returned only for fleets that currently exist.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeFleetCapacityInput": {
      "type": "structure",
      "members": {
        "FleetIds": {
          "shape": "FleetIdOrArnList",
          "documentation": "<p>A unique identifier for a fleet(s) to retrieve capacity information for. You can use either the fleet ID or ARN value.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeFleetCapacityOutput": {
      "type": "structure",
      "members": {
        "FleetCapacity": {
          "shape": "FleetCapacityList",
          "documentation": "<p>A collection of objects containing capacity information for each requested fleet ID. Leave this parameter empty to retrieve capacity information for all fleets.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeFleetEventsInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to get event logs for. You can use either the fleet ID or ARN value.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>Earliest date to retrieve event logs for. If no start time is specified, this call returns entries starting from when the fleet was created to the specified end time. Format is a number expressed in Unix time as milliseconds (ex: \"1469498468.057\").</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>Most recent date to retrieve event logs for. If no end time is specified, this call returns entries from the specified start time up to the present. Format is a number expressed in Unix time as milliseconds (ex: \"1469498468.057\").</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeFleetEventsOutput": {
      "type": "structure",
      "members": {
        "Events": {
          "shape": "EventList",
          "documentation": "<p>A collection of objects containing event log entries for the specified fleet.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeFleetPortSettingsInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to retrieve port settings for. You can use either the fleet ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeFleetPortSettingsOutput": {
      "type": "structure",
      "members": {
        "InboundPermissions": {
          "shape": "IpPermissionsList",
          "documentation": "<p>The port settings for the requested fleet ID.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeFleetUtilizationInput": {
      "type": "structure",
      "members": {
        "FleetIds": {
          "shape": "FleetIdOrArnList",
          "documentation": "<p>A unique identifier for a fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN value. To retrieve attributes for all current fleets, do not include this parameter. If the list of fleet identifiers includes fleets that don't currently exist, the request succeeds but no attributes for that fleet are returned.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet IDs.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeFleetUtilizationOutput": {
      "type": "structure",
      "members": {
        "FleetUtilization": {
          "shape": "FleetUtilizationList",
          "documentation": "<p>A collection of objects containing utilization information for each requested fleet ID.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeGameServerGroupInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        }
      }
    },
    "DescribeGameServerGroupOutput": {
      "type": "structure",
      "members": {
        "GameServerGroup": {
          "shape": "GameServerGroup",
          "documentation": "<p>An object with the property settings for the requested game server group resource. </p>"
        }
      }
    },
    "DescribeGameServerInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "GameServerId"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group where the game server is running. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "GameServerId": {
          "shape": "GameServerId",
          "documentation": "<p>A custom string that uniquely identifies the game server information to be retrieved.</p>"
        }
      }
    },
    "DescribeGameServerInstancesInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "InstanceIds": {
          "shape": "GameServerInstanceIds",
          "documentation": "<p>The EC2 instance IDs that you want to retrieve status on. EC2 instance IDs use a 17-character format, for example: <code>i-1234567890abcdef0</code>. To retrieve all instances in the game server group, leave this parameter empty. </p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p> The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential segments. </p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p> A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value. </p>"
        }
      }
    },
    "DescribeGameServerInstancesOutput": {
      "type": "structure",
      "members": {
        "GameServerInstances": {
          "shape": "GameServerInstances",
          "documentation": "<p> The collection of requested game server instances. </p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p> A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list. </p>"
        }
      }
    },
    "DescribeGameServerOutput": {
      "type": "structure",
      "members": {
        "GameServer": {
          "shape": "GameServer",
          "documentation": "<p>Object that describes the requested game server.</p>"
        }
      }
    },
    "DescribeGameSessionDetailsInput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to retrieve all game sessions active on the fleet. You can use either the fleet ID or ARN value.</p>"
        },
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to retrieve. </p>"
        },
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.</p>"
        },
        "StatusFilter": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Game session status to filter results on. Possible game session statuses include <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code> and <code>TERMINATING</code> (the last two are transitory). </p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeGameSessionDetailsOutput": {
      "type": "structure",
      "members": {
        "GameSessionDetails": {
          "shape": "GameSessionDetailList",
          "documentation": "<p>A collection of objects containing game session properties and the protection policy currently in force for each session matching the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeGameSessionPlacementInput": {
      "type": "structure",
      "required": [
        "PlacementId"
      ],
      "members": {
        "PlacementId": {
          "shape": "IdStringModel",
          "documentation": "<p>A unique identifier for a game session placement to retrieve.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeGameSessionPlacementOutput": {
      "type": "structure",
      "members": {
        "GameSessionPlacement": {
          "shape": "GameSessionPlacement",
          "documentation": "<p>Object that describes the requested game session placement.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeGameSessionQueuesInput": {
      "type": "structure",
      "members": {
        "Names": {
          "shape": "GameSessionQueueNameOrArnList",
          "documentation": "<p>A list of queue names to retrieve information for. You can use either the queue ID or ARN value. To request settings for all queues, leave this parameter empty. </p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. You can request up to 50 results.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeGameSessionQueuesOutput": {
      "type": "structure",
      "members": {
        "GameSessionQueues": {
          "shape": "GameSessionQueueList",
          "documentation": "<p>A collection of objects that describe the requested game session queues.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeGameSessionsInput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to retrieve all game sessions for. You can use either the fleet ID or ARN value. </p>"
        },
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to retrieve. </p>"
        },
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>A unique identifier for an alias associated with the fleet to retrieve all game sessions for. You can use either the alias ID or ARN value.</p>"
        },
        "StatusFilter": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Game session status to filter results on. Possible game session statuses include <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and <code>TERMINATING</code> (the last two are transitory). </p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeGameSessionsOutput": {
      "type": "structure",
      "members": {
        "GameSessions": {
          "shape": "GameSessionList",
          "documentation": "<p>A collection of objects containing game session properties for each session matching the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeInstancesInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to retrieve instance information for. You can use either the fleet ID or ARN value.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>A unique identifier for an instance to retrieve. Specify an instance ID or leave blank to retrieve all instances in the fleet.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeInstancesOutput": {
      "type": "structure",
      "members": {
        "Instances": {
          "shape": "InstanceList",
          "documentation": "<p>A collection of objects containing properties for each instance returned.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeMatchmakingConfigurationsInput": {
      "type": "structure",
      "members": {
        "Names": {
          "shape": "MatchmakingConfigurationNameList",
          "documentation": "<p>A unique identifier for a matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To request all existing configurations, leave this parameter empty.</p>"
        },
        "RuleSetName": {
          "shape": "MatchmakingRuleSetName",
          "documentation": "<p>A unique identifier for a matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to retrieve all matchmaking configurations that use this rule set.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is limited to 10.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeMatchmakingConfigurationsOutput": {
      "type": "structure",
      "members": {
        "Configurations": {
          "shape": "MatchmakingConfigurationList",
          "documentation": "<p>A collection of requested matchmaking configurations.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeMatchmakingInput": {
      "type": "structure",
      "required": [
        "TicketIds"
      ],
      "members": {
        "TicketIds": {
          "shape": "MatchmakingIdList",
          "documentation": "<p>A unique identifier for a matchmaking ticket. You can include up to 10 ID values. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeMatchmakingOutput": {
      "type": "structure",
      "members": {
        "TicketList": {
          "shape": "MatchmakingTicketList",
          "documentation": "<p>A collection of existing matchmaking ticket objects matching the request.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeMatchmakingRuleSetsInput": {
      "type": "structure",
      "members": {
        "Names": {
          "shape": "MatchmakingRuleSetNameList",
          "documentation": "<p>A list of one or more matchmaking rule set names to retrieve details for. (Note: The rule set name is different from the optional \"name\" field in the rule set body.) You can use either the rule set name or ARN value. </p>"
        },
        "Limit": {
          "shape": "RuleSetLimit",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeMatchmakingRuleSetsOutput": {
      "type": "structure",
      "required": [
        "RuleSets"
      ],
      "members": {
        "RuleSets": {
          "shape": "MatchmakingRuleSetList",
          "documentation": "<p>A collection of requested matchmaking rule set objects. </p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribePlayerSessionsInput": {
      "type": "structure",
      "members": {
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to retrieve player sessions for.</p>"
        },
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player to retrieve player sessions for.</p>"
        },
        "PlayerSessionId": {
          "shape": "PlayerSessionId",
          "documentation": "<p>A unique identifier for a player session to retrieve.</p>"
        },
        "PlayerSessionStatusFilter": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Player session status to filter results on.</p> <p>Possible player session statuses include the following:</p> <ul> <li> <p> <b>RESERVED</b> -- The player session request has been received, but the player has not yet connected to the server process and/or been validated. </p> </li> <li> <p> <b>ACTIVE</b> -- The player has been validated by the server process and is currently connected.</p> </li> <li> <p> <b>COMPLETED</b> -- The player connection has been dropped.</p> </li> <li> <p> <b>TIMEDOUT</b> -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).</p> </li> </ul>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribePlayerSessionsOutput": {
      "type": "structure",
      "members": {
        "PlayerSessions": {
          "shape": "PlayerSessionList",
          "documentation": "<p>A collection of objects containing properties for each player session that matches the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeRuntimeConfigurationInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to get the runtime configuration for. You can use either the fleet ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeRuntimeConfigurationOutput": {
      "type": "structure",
      "members": {
        "RuntimeConfiguration": {
          "shape": "RuntimeConfiguration",
          "documentation": "<p>Instructions describing how server processes should be launched and maintained on each instance in the fleet.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeScalingPoliciesInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to retrieve scaling policies for. You can use either the fleet ID or ARN value.</p>"
        },
        "StatusFilter": {
          "shape": "ScalingStatusType",
          "documentation": "<p>Scaling policy status to filter results on. A scaling policy is only in force when in an <code>ACTIVE</code> status.</p> <ul> <li> <p> <b>ACTIVE</b> -- The scaling policy is currently in force.</p> </li> <li> <p> <b>UPDATEREQUESTED</b> -- A request to update the scaling policy has been received.</p> </li> <li> <p> <b>UPDATING</b> -- A change is being made to the scaling policy.</p> </li> <li> <p> <b>DELETEREQUESTED</b> -- A request to delete the scaling policy has been received.</p> </li> <li> <p> <b>DELETING</b> -- The scaling policy is being deleted.</p> </li> <li> <p> <b>DELETED</b> -- The scaling policy has been deleted.</p> </li> <li> <p> <b>ERROR</b> -- An error occurred in creating the policy. It should be removed and recreated.</p> </li> </ul>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeScalingPoliciesOutput": {
      "type": "structure",
      "members": {
        "ScalingPolicies": {
          "shape": "ScalingPolicyList",
          "documentation": "<p>A collection of objects containing the scaling policies matching the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DescribeScriptInput": {
      "type": "structure",
      "required": [
        "ScriptId"
      ],
      "members": {
        "ScriptId": {
          "shape": "ScriptIdOrArn",
          "documentation": "<p>A unique identifier for a Realtime script to retrieve properties for. You can use either the script ID or ARN value.</p>"
        }
      }
    },
    "DescribeScriptOutput": {
      "type": "structure",
      "members": {
        "Script": {
          "shape": "Script",
          "documentation": "<p>A set of properties describing the requested script.</p>"
        }
      }
    },
    "DescribeVpcPeeringAuthorizationsInput": {
      "type": "structure",
      "members": {}
    },
    "DescribeVpcPeeringAuthorizationsOutput": {
      "type": "structure",
      "members": {
        "VpcPeeringAuthorizations": {
          "shape": "VpcPeeringAuthorizationList",
          "documentation": "<p>A collection of objects that describe all valid VPC peering operations for the current AWS account.</p>"
        }
      }
    },
    "DescribeVpcPeeringConnectionsInput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet. You can use either the fleet ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "DescribeVpcPeeringConnectionsOutput": {
      "type": "structure",
      "members": {
        "VpcPeeringConnections": {
          "shape": "VpcPeeringConnectionList",
          "documentation": "<p>A collection of VPC peering connection records that match the request.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "DesiredPlayerSession": {
      "type": "structure",
      "members": {
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player to associate with the player session.</p>"
        },
        "PlayerData": {
          "shape": "PlayerData",
          "documentation": "<p>Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game.</p>"
        }
      },
      "documentation": "<p>Player information for use when creating player sessions using a game session placement request with <a>StartGameSessionPlacement</a>.</p>"
    },
    "DesiredPlayerSessionList": {
      "type": "list",
      "member": {
        "shape": "DesiredPlayerSession"
      }
    },
    "DnsName": {
      "type": "string"
    },
    "Double": {
      "type": "double"
    },
    "DoubleObject": {
      "type": "double"
    },
    "EC2InstanceCounts": {
      "type": "structure",
      "members": {
        "DESIRED": {
          "shape": "WholeNumber",
          "documentation": "<p>Ideal number of active instances in the fleet.</p>"
        },
        "MINIMUM": {
          "shape": "WholeNumber",
          "documentation": "<p>The minimum value allowed for the fleet's instance count.</p>"
        },
        "MAXIMUM": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum value allowed for the fleet's instance count.</p>"
        },
        "PENDING": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of instances in the fleet that are starting but not yet active.</p>"
        },
        "ACTIVE": {
          "shape": "WholeNumber",
          "documentation": "<p>Actual number of active instances in the fleet.</p>"
        },
        "IDLE": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of active instances in the fleet that are not currently hosting a game session.</p>"
        },
        "TERMINATING": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of instances in the fleet that are no longer active but haven't yet been terminated.</p>"
        }
      },
      "documentation": "<p>Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an <a>UpdateFleetCapacity</a> request, or if access to resources is temporarily affected.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "EC2InstanceLimit": {
      "type": "structure",
      "members": {
        "EC2InstanceType": {
          "shape": "EC2InstanceType",
          "documentation": "<p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed descriptions.</p>"
        },
        "CurrentInstances": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of instances of the specified type that are currently in use by this AWS account.</p>"
        },
        "InstanceLimit": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of instances allowed.</p>"
        }
      },
      "documentation": "<p>The maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling <a>DescribeEC2InstanceLimits</a>.</p>"
    },
    "EC2InstanceLimitList": {
      "type": "list",
      "member": {
        "shape": "EC2InstanceLimit"
      }
    },
    "EC2InstanceType": {
      "type": "string",
      "enum": [
        "t2.micro",
        "t2.small",
        "t2.medium",
        "t2.large",
        "c3.large",
        "c3.xlarge",
        "c3.2xlarge",
        "c3.4xlarge",
        "c3.8xlarge",
        "c4.large",
        "c4.xlarge",
        "c4.2xlarge",
        "c4.4xlarge",
        "c4.8xlarge",
        "c5.large",
        "c5.xlarge",
        "c5.2xlarge",
        "c5.4xlarge",
        "c5.9xlarge",
        "c5.12xlarge",
        "c5.18xlarge",
        "c5.24xlarge",
        "r3.large",
        "r3.xlarge",
        "r3.2xlarge",
        "r3.4xlarge",
        "r3.8xlarge",
        "r4.large",
        "r4.xlarge",
        "r4.2xlarge",
        "r4.4xlarge",
        "r4.8xlarge",
        "r4.16xlarge",
        "r5.large",
        "r5.xlarge",
        "r5.2xlarge",
        "r5.4xlarge",
        "r5.8xlarge",
        "r5.12xlarge",
        "r5.16xlarge",
        "r5.24xlarge",
        "m3.medium",
        "m3.large",
        "m3.xlarge",
        "m3.2xlarge",
        "m4.large",
        "m4.xlarge",
        "m4.2xlarge",
        "m4.4xlarge",
        "m4.10xlarge",
        "m5.large",
        "m5.xlarge",
        "m5.2xlarge",
        "m5.4xlarge",
        "m5.8xlarge",
        "m5.12xlarge",
        "m5.16xlarge",
        "m5.24xlarge"
      ]
    },
    "Event": {
      "type": "structure",
      "members": {
        "EventId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a fleet event.</p>"
        },
        "ResourceId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for an event resource, such as a fleet ID.</p>"
        },
        "EventCode": {
          "shape": "EventCode",
          "documentation": "<p>The type of event being logged. </p> <p> <b>Fleet creation events (ordered by fleet creation activity):</b> </p> <ul> <li> <p>FLEET_CREATED -- A fleet resource was successfully created with a status of <code>NEW</code>. Event messaging includes the fleet ID.</p> </li> <li> <p>FLEET_STATE_DOWNLOADING -- Fleet status changed from <code>NEW</code> to <code>DOWNLOADING</code>. The compressed build has started downloading to a fleet instance for installation.</p> </li> <li> <p> FLEET_BINARY_DOWNLOAD_FAILED -- The build failed to download to the fleet instance.</p> </li> <li> <p>FLEET_CREATION_EXTRACTING_BUILD – The game server build was successfully downloaded to an instance, and the build files are now being extracted from the uploaded build and saved to an instance. Failure at this stage prevents a fleet from moving to <code>ACTIVE</code> status. Logs for this stage display a list of the files that are extracted and saved on the instance. Access the logs by using the URL in <i>PreSignedLogUrl</i>.</p> </li> <li> <p>FLEET_CREATION_RUNNING_INSTALLER – The game server build files were successfully extracted, and the Amazon GameLift is now running the build's install script (if one is included). Failure in this stage prevents a fleet from moving to <code>ACTIVE</code> status. Logs for this stage list the installation steps and whether or not the install completed successfully. Access the logs by using the URL in <i>PreSignedLogUrl</i>. </p> </li> <li> <p>FLEET_CREATION_VALIDATING_RUNTIME_CONFIG -- The build process was successful, and the Amazon GameLift is now verifying that the game server launch paths, which are specified in the fleet's runtime configuration, exist. If any listed launch path exists, Amazon GameLift tries to launch a game server process and waits for the process to report ready. Failures in this stage prevent a fleet from moving to <code>ACTIVE</code> status. Logs for this stage list the launch paths in the runtime configuration and indicate whether each is found. Access the logs by using the URL in <i>PreSignedLogUrl</i>. </p> </li> <li> <p>FLEET_STATE_VALIDATING -- Fleet status changed from <code>DOWNLOADING</code> to <code>VALIDATING</code>.</p> </li> <li> <p> FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND -- Validation of the runtime configuration failed because the executable specified in a launch path does not exist on the instance.</p> </li> <li> <p>FLEET_STATE_BUILDING -- Fleet status changed from <code>VALIDATING</code> to <code>BUILDING</code>.</p> </li> <li> <p>FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE -- Validation of the runtime configuration failed because the executable specified in a launch path failed to run on the fleet instance.</p> </li> <li> <p>FLEET_STATE_ACTIVATING -- Fleet status changed from <code>BUILDING</code> to <code>ACTIVATING</code>. </p> </li> <li> <p> FLEET_ACTIVATION_FAILED - The fleet failed to successfully complete one of the steps in the fleet activation process. This event code indicates that the game build was successfully downloaded to a fleet instance, built, and validated, but was not able to start a server process. Learn more at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation\"> Debug Fleet Creation Issues</a> </p> </li> <li> <p>FLEET_STATE_ACTIVE -- The fleet's status changed from <code>ACTIVATING</code> to <code>ACTIVE</code>. The fleet is now ready to host game sessions.</p> </li> </ul> <p> <b>VPC peering events:</b> </p> <ul> <li> <p>FLEET_VPC_PEERING_SUCCEEDED -- A VPC peering connection has been established between the VPC for an Amazon GameLift fleet and a VPC in your AWS account.</p> </li> <li> <p>FLEET_VPC_PEERING_FAILED -- A requested VPC peering connection has failed. Event details and status information (see <a>DescribeVpcPeeringConnections</a>) provide additional detail. A common reason for peering failure is that the two VPCs have overlapping CIDR blocks of IPv4 addresses. To resolve this, change the CIDR block for the VPC in your AWS account. For more information on VPC peering failures, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html\">https://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/invalid-peering-configurations.html</a> </p> </li> <li> <p>FLEET_VPC_PEERING_DELETED -- A VPC peering connection has been successfully deleted.</p> </li> </ul> <p> <b>Spot instance events:</b> </p> <ul> <li> <p> INSTANCE_INTERRUPTED -- A spot instance was interrupted by EC2 with a two-minute notification.</p> </li> </ul> <p> <b>Other fleet events:</b> </p> <ul> <li> <p>FLEET_SCALING_EVENT -- A change was made to the fleet's capacity settings (desired instances, minimum/maximum scaling limits). Event messaging includes the new capacity settings.</p> </li> <li> <p>FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED -- A change was made to the fleet's game session protection policy setting. Event messaging includes both the old and new policy setting. </p> </li> <li> <p>FLEET_DELETED -- A request to delete a fleet was initiated.</p> </li> <li> <p> GENERIC_EVENT -- An unspecified event has occurred.</p> </li> </ul>"
        },
        "Message": {
          "shape": "NonEmptyString",
          "documentation": "<p>Additional information related to the event.</p>"
        },
        "EventTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this event occurred. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "PreSignedLogUrl": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Location of stored logs with additional detail that is related to the event. This is useful for debugging issues. The URL is valid for 15 minutes. You can also access fleet creation logs through the Amazon GameLift console.</p>"
        }
      },
      "documentation": "<p>Log entry describing an event that involves Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.</p>"
    },
    "EventCode": {
      "type": "string",
      "enum": [
        "GENERIC_EVENT",
        "FLEET_CREATED",
        "FLEET_DELETED",
        "FLEET_SCALING_EVENT",
        "FLEET_STATE_DOWNLOADING",
        "FLEET_STATE_VALIDATING",
        "FLEET_STATE_BUILDING",
        "FLEET_STATE_ACTIVATING",
        "FLEET_STATE_ACTIVE",
        "FLEET_STATE_ERROR",
        "FLEET_INITIALIZATION_FAILED",
        "FLEET_BINARY_DOWNLOAD_FAILED",
        "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND",
        "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE",
        "FLEET_VALIDATION_TIMED_OUT",
        "FLEET_ACTIVATION_FAILED",
        "FLEET_ACTIVATION_FAILED_NO_INSTANCES",
        "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED",
        "SERVER_PROCESS_INVALID_PATH",
        "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT",
        "SERVER_PROCESS_PROCESS_READY_TIMEOUT",
        "SERVER_PROCESS_CRASHED",
        "SERVER_PROCESS_TERMINATED_UNHEALTHY",
        "SERVER_PROCESS_FORCE_TERMINATED",
        "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT",
        "GAME_SESSION_ACTIVATION_TIMEOUT",
        "FLEET_CREATION_EXTRACTING_BUILD",
        "FLEET_CREATION_RUNNING_INSTALLER",
        "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG",
        "FLEET_VPC_PEERING_SUCCEEDED",
        "FLEET_VPC_PEERING_FAILED",
        "FLEET_VPC_PEERING_DELETED",
        "INSTANCE_INTERRUPTED"
      ]
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event"
      }
    },
    "FleetAction": {
      "type": "string",
      "enum": [
        "AUTO_SCALING"
      ]
    },
    "FleetActionList": {
      "type": "list",
      "member": {
        "shape": "FleetAction"
      },
      "max": 1,
      "min": 1
    },
    "FleetArn": {
      "type": "string",
      "pattern": "^arn:.*:fleet\\/fleet-\\S+"
    },
    "FleetAttributes": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet.</p>"
        },
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift fleet ARN, the resource ID matches the <i>FleetId</i> value.</p>"
        },
        "FleetType": {
          "shape": "FleetType",
          "documentation": "<p>Indicates whether the fleet uses on-demand or spot instances. A spot instance in use may be interrupted with a two-minute notification.</p>"
        },
        "InstanceType": {
          "shape": "EC2InstanceType",
          "documentation": "<p>EC2 instance type indicating the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed descriptions.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Human-readable description of the fleet.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "TerminationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "Status": {
          "shape": "FleetStatus",
          "documentation": "<p>Current status of the fleet.</p> <p>Possible fleet statuses include the following:</p> <ul> <li> <p> <b>NEW</b> -- A new fleet has been defined and desired instances is set to 1. </p> </li> <li> <p> <b>DOWNLOADING/VALIDATING/BUILDING/ACTIVATING</b> -- Amazon GameLift is setting up the new fleet, creating new instances with the game build or Realtime script and starting server processes.</p> </li> <li> <p> <b>ACTIVE</b> -- Hosts can now accept game sessions.</p> </li> <li> <p> <b>ERROR</b> -- An error occurred when downloading, validating, building, or activating the fleet.</p> </li> <li> <p> <b>DELETING</b> -- Hosts are responding to a delete fleet request.</p> </li> <li> <p> <b>TERMINATED</b> -- The fleet no longer exists.</p> </li> </ul>"
        },
        "BuildId": {
          "shape": "BuildId",
          "documentation": "<p>A unique identifier for a build.</p>"
        },
        "BuildArn": {
          "shape": "BuildArn",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift build resource that is deployed on instances in this fleet. In a GameLift build ARN, the resource ID matches the <i>BuildId</i> value.</p>"
        },
        "ScriptId": {
          "shape": "ScriptId",
          "documentation": "<p>A unique identifier for a Realtime script.</p>"
        },
        "ScriptArn": {
          "shape": "ScriptArn",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift script resource that is deployed on instances in this fleet. In a GameLift script ARN, the resource ID matches the <i>ScriptId</i> value.</p>"
        },
        "ServerLaunchPath": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Path to a game server executable in the fleet's build, specified for fleets created before 2016-08-04 (or AWS SDK v. 0.12.16). Server launch paths for fleets created after this date are specified in the fleet's <a>RuntimeConfiguration</a>.</p>"
        },
        "ServerLaunchParameters": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Game server launch parameters specified for fleets created before 2016-08-04 (or AWS SDK v. 0.12.16). Server launch parameters for fleets created after this date are specified in the fleet's <a>RuntimeConfiguration</a>.</p>"
        },
        "LogPaths": {
          "shape": "StringList",
          "documentation": "<p>Location of default log files. When a server process is shut down, Amazon GameLift captures and stores any log files in this location. These logs are in addition to game session logs; see more on game session logs in the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-api-server-code\">Amazon GameLift Developer Guide</a>. If no default log path for a fleet is specified, Amazon GameLift automatically uploads logs that are stored on each instance at <code>C:\\game\\logs</code> (for Windows) or <code>/local/game/logs</code> (for Linux). Use the Amazon GameLift console to access stored logs. </p>"
        },
        "NewGameSessionProtectionPolicy": {
          "shape": "ProtectionPolicy",
          "documentation": "<p>The type of game session protection to set for all new instances started in the fleet.</p> <ul> <li> <p> <b>NoProtection</b> -- The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> -- If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Operating system of the fleet's computing resources. A fleet's operating system depends on the OS specified for the build that is deployed on this fleet.</p>"
        },
        "ResourceCreationLimitPolicy": {
          "shape": "ResourceCreationLimitPolicy",
          "documentation": "<p>Fleet policy to limit the number of game sessions an individual player can create over a span of time.</p>"
        },
        "MetricGroups": {
          "shape": "MetricGroupList",
          "documentation": "<p>Names of metric groups that this fleet is included in. In Amazon CloudWatch, you can view metrics for an individual fleet or aggregated metrics for fleets that are in a fleet metric group. A fleet can be included in only one metric group at a time.</p>"
        },
        "StoppedActions": {
          "shape": "FleetActionList",
          "documentation": "<p>List of fleet activity that have been suspended using <a>StopFleetActions</a>. This includes auto-scaling.</p>"
        },
        "InstanceRoleArn": {
          "shape": "NonEmptyString",
          "documentation": "<p>A unique identifier for an AWS IAM role that manages access to your AWS services. With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, including install scripts, server processes, and daemons (background processes). Create a role or look up a role's ARN from the <a href=\"https://console.aws.amazon.com/iam/\">IAM dashboard</a> in the AWS Management Console. Learn more about using on-box credentials for your game servers at <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html\"> Access external resources from a game server</a>.</p>"
        },
        "CertificateConfiguration": {
          "shape": "CertificateConfiguration",
          "documentation": "<p>Indicates whether a TLS/SSL certificate was generated for the fleet. </p>"
        }
      },
      "documentation": "<p>General properties describing a fleet.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "FleetAttributesList": {
      "type": "list",
      "member": {
        "shape": "FleetAttributes"
      }
    },
    "FleetCapacity": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet.</p>"
        },
        "InstanceType": {
          "shape": "EC2InstanceType",
          "documentation": "<p>Name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instance Types</a> for detailed descriptions.</p>"
        },
        "InstanceCounts": {
          "shape": "EC2InstanceCounts",
          "documentation": "<p>Current status of fleet capacity.</p>"
        }
      },
      "documentation": "<p>Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "FleetCapacityList": {
      "type": "list",
      "member": {
        "shape": "FleetCapacity"
      }
    },
    "FleetId": {
      "type": "string",
      "pattern": "^fleet-\\S+"
    },
    "FleetIdList": {
      "type": "list",
      "member": {
        "shape": "FleetId"
      },
      "min": 1
    },
    "FleetIdOrArn": {
      "type": "string",
      "pattern": "^fleet-\\S+|^arn:.*:fleet\\/fleet-\\S+"
    },
    "FleetIdOrArnList": {
      "type": "list",
      "member": {
        "shape": "FleetIdOrArn"
      },
      "min": 1
    },
    "FleetStatus": {
      "type": "string",
      "enum": [
        "NEW",
        "DOWNLOADING",
        "VALIDATING",
        "BUILDING",
        "ACTIVATING",
        "ACTIVE",
        "DELETING",
        "ERROR",
        "TERMINATED"
      ]
    },
    "FleetType": {
      "type": "string",
      "enum": [
        "ON_DEMAND",
        "SPOT"
      ]
    },
    "FleetUtilization": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet.</p>"
        },
        "ActiveServerProcessCount": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of server processes in an <code>ACTIVE</code> status currently running across all instances in the fleet</p>"
        },
        "ActiveGameSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of active game sessions currently being hosted on all instances in the fleet.</p>"
        },
        "CurrentPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of active player sessions currently being hosted on all instances in the fleet.</p>"
        },
        "MaximumPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of players allowed across all game sessions currently being hosted on all instances in the fleet.</p>"
        }
      },
      "documentation": "<p>Current status of fleet utilization, including the number of game and player sessions being hosted.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "FleetUtilizationList": {
      "type": "list",
      "member": {
        "shape": "FleetUtilization"
      }
    },
    "Float": {
      "type": "float"
    },
    "FreeText": {
      "type": "string"
    },
    "GameProperty": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "GamePropertyKey",
          "documentation": "<p>The game property identifier.</p>"
        },
        "Value": {
          "shape": "GamePropertyValue",
          "documentation": "<p>The game property value.</p>"
        }
      },
      "documentation": "<p>Set of key-value pairs that contain information about a game session. When included in a game session request, these properties communicate details to be used when setting up the new game session. For example, a game property might specify a game mode, level, or map. Game properties are passed to the game server process when initiating a new game session. For more information, see the <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create\"> Amazon GameLift Developer Guide</a>.</p>"
    },
    "GamePropertyKey": {
      "type": "string",
      "max": 32
    },
    "GamePropertyList": {
      "type": "list",
      "member": {
        "shape": "GameProperty"
      },
      "max": 16
    },
    "GamePropertyValue": {
      "type": "string",
      "max": 96
    },
    "GameServer": {
      "type": "structure",
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupName",
          "documentation": "<p>A unique identifier for the game server group where the game server is running. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "GameServerGroupArn": {
          "shape": "GameServerGroupArn",
          "documentation": "<p>The ARN identifier for the game server group where the game server is located.</p>"
        },
        "GameServerId": {
          "shape": "GameServerId",
          "documentation": "<p>A custom string that uniquely identifies the game server. Game server IDs are developer-defined and are unique across all game server groups in an AWS account.</p>"
        },
        "InstanceId": {
          "shape": "GameServerInstanceId",
          "documentation": "<p>The unique identifier for the instance where the game server is running. This ID is available in the instance metadata. EC2 instance IDs use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>"
        },
        "ConnectionInfo": {
          "shape": "GameServerConnectionInfo",
          "documentation": "<p>The port and IP address that must be used to establish a client connection to the game server.</p>"
        },
        "GameServerData": {
          "shape": "GameServerData",
          "documentation": "<p>A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information on game servers using <a>ListGameServers</a> or <a>ClaimGameServer</a>.</p>"
        },
        "ClaimStatus": {
          "shape": "GameServerClaimStatus",
          "documentation": "<p>Indicates when an available game server has been reserved for gameplay but has not yet started hosting a game. Once it is claimed, the game server remains in <code>CLAIMED</code> status for a maximum of one minute. During this time, game clients connect to the game server to start the game and trigger the game server to update its utilization status. After one minute, the game server claim status reverts to null.</p>"
        },
        "UtilizationStatus": {
          "shape": "GameServerUtilizationStatus",
          "documentation": "<p>Indicates whether the game server is currently available for new games or is busy. Possible statuses include:</p> <ul> <li> <p> <code>AVAILABLE</code> - The game server is available to be claimed. A game server that has been claimed remains in this status until it reports game hosting activity. </p> </li> <li> <p> <code>UTILIZED</code> - The game server is currently hosting a game session with players. </p> </li> </ul>"
        },
        "RegistrationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Timestamp that indicates when the game server was created with a <a>RegisterGameServer</a> request. The format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
        },
        "LastClaimTime": {
          "shape": "Timestamp",
          "documentation": "<p>Timestamp that indicates the last time the game server was claimed with a <a>ClaimGameServer</a> request. The format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>). This value is used to calculate when a claimed game server's status should revert to null.</p>"
        },
        "LastHealthCheckTime": {
          "shape": "Timestamp",
          "documentation": "<p>Timestamp that indicates the last time the game server was updated with health status using an <a>UpdateGameServer</a> request. The format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>). After game server registration, this property is only changed when a game server update specifies a health check value.</p>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p>Properties describing a game server that is running on an instance in a <a>GameServerGroup</a>. </p> <p>A game server is created by a successful call to <code>RegisterGameServer</code> and deleted by calling <code>DeregisterGameServer</code>. A game server is claimed to host a game session by calling <code>ClaimGameServer</code>. </p> <ul> <li> <p> <a>RegisterGameServer</a> </p> </li> <li> <p> <a>ListGameServers</a> </p> </li> <li> <p> <a>ClaimGameServer</a> </p> </li> <li> <p> <a>DescribeGameServer</a> </p> </li> <li> <p> <a>UpdateGameServer</a> </p> </li> <li> <p> <a>DeregisterGameServer</a> </p> </li> </ul>"
    },
    "GameServerClaimStatus": {
      "type": "string",
      "enum": [
        "CLAIMED"
      ]
    },
    "GameServerConnectionInfo": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "GameServerData": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "GameServerGroup": {
      "type": "structure",
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupName",
          "documentation": "<p>A developer-defined identifier for the game server group. The name is unique for each Region in each AWS account.</p>"
        },
        "GameServerGroupArn": {
          "shape": "GameServerGroupArn",
          "documentation": "<p>A generated unique ID for the game server group.</p>"
        },
        "RoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.</p>"
        },
        "InstanceDefinitions": {
          "shape": "InstanceDefinitions",
          "documentation": "<p>The set of EC2 instance types that GameLift FleetIQ can use when balancing and automatically scaling instances in the corresponding Auto Scaling group. </p>"
        },
        "BalancingStrategy": {
          "shape": "BalancingStrategy",
          "documentation": "<p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the game server group. Method options include the following:</p> <ul> <li> <p> <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot Instances are unavailable or not viable for game hosting, the game server group provides no hosting capacity until Spot Instances can again be used. Until then, no new instances are started, and the existing nonviable Spot Instances are terminated (after current gameplay ends) and are not replaced.</p> </li> <li> <p> <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in the game server group. If Spot Instances are unavailable, the game server group continues to provide hosting capacity by falling back to On-Demand Instances. Existing nonviable Spot Instances are terminated (after current gameplay ends) and are replaced with new On-Demand Instances.</p> </li> <li> <p> <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game server group. No Spot Instances are used, even when available, while this balancing strategy is in force.</p> </li> </ul>"
        },
        "GameServerProtectionPolicy": {
          "shape": "GameServerProtectionPolicy",
          "documentation": "<p>A flag that indicates whether instances in the game server group are protected from early termination. Unprotected instances that have active game servers running might be terminated during a scale-down event, causing players to be dropped from the game. Protected instances cannot be terminated while there are active game servers running except in the event of a forced game server group deletion (see ). An exception to this is with Spot Instances, which can be terminated by AWS regardless of protection status. </p>"
        },
        "AutoScalingGroupArn": {
          "shape": "AutoScalingGroupArn",
          "documentation": "<p>A generated unique ID for the EC2 Auto Scaling group that is associated with this game server group.</p>"
        },
        "Status": {
          "shape": "GameServerGroupStatus",
          "documentation": "<p>The current status of the game server group. Possible statuses include:</p> <ul> <li> <p> <code>NEW</code> - GameLift FleetIQ has validated the <code>CreateGameServerGroup()</code> request. </p> </li> <li> <p> <code>ACTIVATING</code> - GameLift FleetIQ is setting up a game server group, which includes creating an Auto Scaling group in your AWS account. </p> </li> <li> <p> <code>ACTIVE</code> - The game server group has been successfully created. </p> </li> <li> <p> <code>DELETE_SCHEDULED</code> - A request to delete the game server group has been received. </p> </li> <li> <p> <code>DELETING</code> - GameLift FleetIQ has received a valid <code>DeleteGameServerGroup()</code> request and is processing it. GameLift FleetIQ must first complete and release hosts before it deletes the Auto Scaling group and the game server group. </p> </li> <li> <p> <code>DELETED</code> - The game server group has been successfully deleted. </p> </li> <li> <p> <code>ERROR</code> - The asynchronous processes of activating or deleting a game server group has failed, resulting in an error state.</p> </li> </ul>"
        },
        "StatusReason": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Additional information about the current game server group status. This information might provide additional insight on groups that are in <code>ERROR</code> status.</p>"
        },
        "SuspendedActions": {
          "shape": "GameServerGroupActions",
          "documentation": "<p>A list of activities that are currently suspended for this game server group. If this property is empty, all activities are occurring.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>\"1469498468.057\"</code>).</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp that indicates when this game server group was last updated.</p>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p>Properties that describe a game server group resource. A game server group manages certain properties related to a corresponding EC2 Auto Scaling group. </p> <p>A game server group is created by a successful call to <code>CreateGameServerGroup</code> and deleted by calling <code>DeleteGameServerGroup</code>. Game server group activity can be temporarily suspended and resumed by calling <code>SuspendGameServerGroup</code> and <code>ResumeGameServerGroup</code>, respectively. </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "GameServerGroupAction": {
      "type": "string",
      "enum": [
        "REPLACE_INSTANCE_TYPES"
      ]
    },
    "GameServerGroupActions": {
      "type": "list",
      "member": {
        "shape": "GameServerGroupAction"
      },
      "max": 1,
      "min": 1
    },
    "GameServerGroupArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^arn:.*:gameservergroup\\/[a-zA-Z0-9-\\.]*"
    },
    "GameServerGroupAutoScalingPolicy": {
      "type": "structure",
      "required": [
        "TargetTrackingConfiguration"
      ],
      "members": {
        "EstimatedInstanceWarmup": {
          "shape": "PositiveInteger",
          "documentation": "<p>Length of time, in seconds, it takes for a new instance to start new game server processes and register with GameLift FleetIQ. Specifying a warm-up time can be useful, particularly with game servers that take a long time to start up, because it avoids prematurely starting new instances. </p>"
        },
        "TargetTrackingConfiguration": {
          "shape": "TargetTrackingConfiguration",
          "documentation": "<p>Settings for a target-based scaling policy applied to Auto Scaling group. These settings are used to create a target-based policy that tracks the GameLift FleetIQ metric <code>\"PercentUtilizedGameServers\"</code> and specifies a target value for the metric. As player usage changes, the policy triggers to adjust the game server group capacity so that the metric returns to the target value. </p>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p>Configuration settings for intelligent automatic scaling that uses target tracking. These settings are used to add an Auto Scaling policy when creating the corresponding Auto Scaling group with <a>CreateGameServerGroup</a>. After the Auto Scaling group is created, all updates to Auto Scaling policies, including changing this policy and adding or removing other policies, is done directly on the Auto Scaling group. </p>"
    },
    "GameServerGroupDeleteOption": {
      "type": "string",
      "enum": [
        "SAFE_DELETE",
        "FORCE_DELETE",
        "RETAIN"
      ]
    },
    "GameServerGroupInstanceType": {
      "type": "string",
      "enum": [
        "c4.large",
        "c4.xlarge",
        "c4.2xlarge",
        "c4.4xlarge",
        "c4.8xlarge",
        "c5.large",
        "c5.xlarge",
        "c5.2xlarge",
        "c5.4xlarge",
        "c5.9xlarge",
        "c5.12xlarge",
        "c5.18xlarge",
        "c5.24xlarge",
        "r4.large",
        "r4.xlarge",
        "r4.2xlarge",
        "r4.4xlarge",
        "r4.8xlarge",
        "r4.16xlarge",
        "r5.large",
        "r5.xlarge",
        "r5.2xlarge",
        "r5.4xlarge",
        "r5.8xlarge",
        "r5.12xlarge",
        "r5.16xlarge",
        "r5.24xlarge",
        "m4.large",
        "m4.xlarge",
        "m4.2xlarge",
        "m4.4xlarge",
        "m4.10xlarge",
        "m5.large",
        "m5.xlarge",
        "m5.2xlarge",
        "m5.4xlarge",
        "m5.8xlarge",
        "m5.12xlarge",
        "m5.16xlarge",
        "m5.24xlarge"
      ]
    },
    "GameServerGroupName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9-\\.]+"
    },
    "GameServerGroupNameOrArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9-\\.]+|^arn:.*:gameservergroup\\/[a-zA-Z0-9-\\.]+"
    },
    "GameServerGroupStatus": {
      "type": "string",
      "enum": [
        "NEW",
        "ACTIVATING",
        "ACTIVE",
        "DELETE_SCHEDULED",
        "DELETING",
        "DELETED",
        "ERROR"
      ]
    },
    "GameServerGroups": {
      "type": "list",
      "member": {
        "shape": "GameServerGroup"
      }
    },
    "GameServerHealthCheck": {
      "type": "string",
      "enum": [
        "HEALTHY"
      ]
    },
    "GameServerId": {
      "type": "string",
      "max": 128,
      "min": 3,
      "pattern": "[a-zA-Z0-9-\\.]+"
    },
    "GameServerInstance": {
      "type": "structure",
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupName",
          "documentation": "<p>A developer-defined identifier for the game server group that includes the game server instance. The name is unique for each Region in each AWS account.</p>"
        },
        "GameServerGroupArn": {
          "shape": "GameServerGroupArn",
          "documentation": "<p>A generated unique identifier for the game server group that includes the game server instance. </p>"
        },
        "InstanceId": {
          "shape": "GameServerInstanceId",
          "documentation": "<p>The unique identifier for the instance where the game server is running. This ID is available in the instance metadata. EC2 instance IDs use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>"
        },
        "InstanceStatus": {
          "shape": "GameServerInstanceStatus",
          "documentation": "<p> Current status of the game server instance. </p> <ul> <li> <p> <b>ACTIVE</b> -- The instance is viable for hosting game servers. </p> </li> <li> <p> <b>DRAINING</b> -- The instance is not viable for hosting game servers. Existing game servers are in the process of ending, and new game servers are not started on this instance unless no other resources are available. When the instance is put in DRAINING, a new instance is started up to replace it. Once the instance has no UTILIZED game servers, it will be terminated in favor of the new instance.</p> </li> <li> <p> <b>SPOT_TERMINATING</b> -- The instance is in the process of shutting down due to a Spot instance interruption. No new game servers are started on this instance.</p> </li> </ul>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p> Additional properties, including status, that describe an EC2 instance in a game server group. Instance configurations are set with game server group properties (see <code>DescribeGameServerGroup</code> and with the EC2 launch template that was used when creating the game server group. </p> <p>Retrieve game server instances for a game server group by calling <code>DescribeGameServerInstances</code>. </p> <ul> <li> <p> <a>CreateGameServerGroup</a> </p> </li> <li> <p> <a>ListGameServerGroups</a> </p> </li> <li> <p> <a>DescribeGameServerGroup</a> </p> </li> <li> <p> <a>UpdateGameServerGroup</a> </p> </li> <li> <p> <a>DeleteGameServerGroup</a> </p> </li> <li> <p> <a>ResumeGameServerGroup</a> </p> </li> <li> <p> <a>SuspendGameServerGroup</a> </p> </li> <li> <p> <a>DescribeGameServerInstances</a> </p> </li> </ul>"
    },
    "GameServerInstanceId": {
      "type": "string",
      "max": 19,
      "min": 19,
      "pattern": "^i-[0-9a-zA-Z]{17}$"
    },
    "GameServerInstanceIds": {
      "type": "list",
      "member": {
        "shape": "GameServerInstanceId"
      },
      "max": 20,
      "min": 1
    },
    "GameServerInstanceStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DRAINING",
        "SPOT_TERMINATING"
      ]
    },
    "GameServerInstances": {
      "type": "list",
      "member": {
        "shape": "GameServerInstance"
      }
    },
    "GameServerProtectionPolicy": {
      "type": "string",
      "enum": [
        "NO_PROTECTION",
        "FULL_PROTECTION"
      ]
    },
    "GameServerUtilizationStatus": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "UTILIZED"
      ]
    },
    "GameServers": {
      "type": "list",
      "member": {
        "shape": "GameServer"
      }
    },
    "GameSession": {
      "type": "structure",
      "members": {
        "GameSessionId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the game session. A game session ARN has the following format: <code>arn:aws:gamelift:&lt;region&gt;::gamesession/&lt;fleet ID&gt;/&lt;custom ID string or idempotency token&gt;</code>.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
        },
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that the game session is running on.</p>"
        },
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift fleet that this game session is running on. </p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "TerminationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "CurrentPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of players currently in the game session.</p>"
        },
        "MaximumPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
        },
        "Status": {
          "shape": "GameSessionStatus",
          "documentation": "<p>Current status of the game session. A game session must have an <code>ACTIVE</code> status to have player sessions.</p>"
        },
        "StatusReason": {
          "shape": "GameSessionStatusReason",
          "documentation": "<p>Provides additional information about game session status. <code>INTERRUPTED</code> indicates that the game session was hosted on a spot instance that was reclaimed, causing the active game session to be terminated.</p>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). You can search for active game sessions based on this custom data with <a>SearchGameSessions</a>.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>IP address of the instance that is running the game session. When connecting to a Amazon GameLift game server, a client needs to reference an IP address (or DNS name) and port number.</p>"
        },
        "DnsName": {
          "shape": "DnsName",
          "documentation": "<p>DNS identifier assigned to the instance that is running the game session. Values have the following format:</p> <ul> <li> <p>TLS-enabled fleets: <code>&lt;unique identifier&gt;.&lt;region identifier&gt;.amazongamelift.com</code>.</p> </li> <li> <p>Non-TLS-enabled fleets: <code>ec2-&lt;unique identifier&gt;.compute.amazonaws.com</code>. (See <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p> </li> </ul> <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>"
        },
        "Port": {
          "shape": "PortNumber",
          "documentation": "<p>Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.</p>"
        },
        "PlayerSessionCreationPolicy": {
          "shape": "PlayerSessionCreationPolicy",
          "documentation": "<p>Indicates whether or not the game session is accepting new players.</p>"
        },
        "CreatorId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player. This ID is used to enforce a resource protection policy (if one exists), that limits the number of game sessions a player can create.</p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        },
        "MatchmakerData": {
          "shape": "MatchmakerData",
          "documentation": "<p>Information about the matchmaking process that was used to create the game session. It is in JSON syntax, formatted as a string. In addition the matchmaking configuration used, it contains data on all players assigned to the match, including player attributes and team assignments. For more details on matchmaker data, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data\">Match Data</a>. Matchmaker data is useful when requesting match backfills, and is updated whenever new players are added during a successful backfill (see <a>StartMatchBackfill</a>). </p>"
        }
      },
      "documentation": "<p>Properties describing a game session.</p> <p>A game session in ACTIVE status can host players. When a game session ends, its status is set to <code>TERMINATED</code>. </p> <p>Once the session ends, the game session object is retained for 30 days. This means you can reuse idempotency token values after this time. Game session logs are retained for 14 days.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "GameSessionActivationTimeoutSeconds": {
      "type": "integer",
      "max": 600,
      "min": 1
    },
    "GameSessionConnectionInfo": {
      "type": "structure",
      "members": {
        "GameSessionArn": {
          "shape": "ArnStringModel",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a game session and uniquely identifies it.</p>"
        },
        "IpAddress": {
          "shape": "StringModel",
          "documentation": "<p>IP address of the instance that is running the game session. When connecting to a Amazon GameLift game server, a client needs to reference an IP address (or DNS name) and port number.</p>"
        },
        "DnsName": {
          "shape": "DnsName",
          "documentation": "<p>DNS identifier assigned to the instance that is running the game session. Values have the following format:</p> <ul> <li> <p>TLS-enabled fleets: <code>&lt;unique identifier&gt;.&lt;region identifier&gt;.amazongamelift.com</code>.</p> </li> <li> <p>Non-TLS-enabled fleets: <code>ec2-&lt;unique identifier&gt;.compute.amazonaws.com</code>. (See <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p> </li> </ul> <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>"
        },
        "Port": {
          "shape": "PositiveInteger",
          "documentation": "<p>Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number.</p>"
        },
        "MatchedPlayerSessions": {
          "shape": "MatchedPlayerSessionList",
          "documentation": "<p>A collection of player session IDs, one for each player ID that was included in the original matchmaking request. </p>"
        }
      },
      "documentation": "<p>Connection information for the new game session that is created with matchmaking. (with <a>StartMatchmaking</a>). Once a match is set, the FlexMatch engine places the match and creates a new game session for it. This information, including the game session endpoint and player sessions for each player in the original matchmaking request, is added to the <a>MatchmakingTicket</a>, which can be retrieved by calling <a>DescribeMatchmaking</a>.</p>"
    },
    "GameSessionData": {
      "type": "string",
      "max": 4096,
      "min": 1
    },
    "GameSessionDetail": {
      "type": "structure",
      "members": {
        "GameSession": {
          "shape": "GameSession",
          "documentation": "<p>Object that describes a game session.</p>"
        },
        "ProtectionPolicy": {
          "shape": "ProtectionPolicy",
          "documentation": "<p>Current status of protection for the game session.</p> <ul> <li> <p> <b>NoProtection</b> -- The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> -- If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A game session's properties plus the protection policy currently in force.</p>"
    },
    "GameSessionDetailList": {
      "type": "list",
      "member": {
        "shape": "GameSessionDetail"
      }
    },
    "GameSessionList": {
      "type": "list",
      "member": {
        "shape": "GameSession"
      }
    },
    "GameSessionPlacement": {
      "type": "structure",
      "members": {
        "PlacementId": {
          "shape": "IdStringModel",
          "documentation": "<p>A unique identifier for a game session placement.</p>"
        },
        "GameSessionQueueName": {
          "shape": "GameSessionQueueName",
          "documentation": "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>"
        },
        "Status": {
          "shape": "GameSessionPlacementState",
          "documentation": "<p>Current status of the game session placement request.</p> <ul> <li> <p> <b>PENDING</b> -- The placement request is currently in the queue waiting to be processed.</p> </li> <li> <p> <b>FULFILLED</b> -- A new game session and player sessions (if requested) have been successfully created. Values for <i>GameSessionArn</i> and <i>GameSessionRegion</i> are available. </p> </li> <li> <p> <b>CANCELLED</b> -- The placement request was canceled with a call to <a>StopGameSessionPlacement</a>.</p> </li> <li> <p> <b>TIMED_OUT</b> -- A new game session was not successfully created before the time limit expired. You can resubmit the placement request as needed.</p> </li> <li> <p> <b>FAILED</b> -- GameLift is not able to complete the process of placing the game session. Common reasons are the game session terminated before the placement process was completed, or an unexpected internal error.</p> </li> </ul>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        },
        "MaximumPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
        },
        "GameSessionName": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
        },
        "GameSessionId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the game session. This value is set once the new game session is placed (placement status is <code>FULFILLED</code>).</p>"
        },
        "GameSessionArn": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Identifier for the game session created by this placement request. This value is set once the new game session is placed (placement status is <code>FULFILLED</code>). This identifier is unique across all Regions. You can use this value as a <code>GameSessionId</code> value as needed.</p>"
        },
        "GameSessionRegion": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Name of the Region where the game session created by this placement request is running. This value is set once the new game session is placed (placement status is <code>FULFILLED</code>).</p>"
        },
        "PlayerLatencies": {
          "shape": "PlayerLatencyList",
          "documentation": "<p>Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS Regions.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this request was placed in the queue. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this request was completed, canceled, or timed out.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>IP address of the instance that is running the game session. When connecting to a Amazon GameLift game server, a client needs to reference an IP address (or DNS name) and port number. This value is set once the new game session is placed (placement status is <code>FULFILLED</code>). </p>"
        },
        "DnsName": {
          "shape": "DnsName",
          "documentation": "<p>DNS identifier assigned to the instance that is running the game session. Values have the following format:</p> <ul> <li> <p>TLS-enabled fleets: <code>&lt;unique identifier&gt;.&lt;region identifier&gt;.amazongamelift.com</code>.</p> </li> <li> <p>Non-TLS-enabled fleets: <code>ec2-&lt;unique identifier&gt;.compute.amazonaws.com</code>. (See <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p> </li> </ul> <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>"
        },
        "Port": {
          "shape": "PortNumber",
          "documentation": "<p>Port number for the game session. To connect to a Amazon GameLift game server, an app needs both the IP address and port number. This value is set once the new game session is placed (placement status is <code>FULFILLED</code>).</p>"
        },
        "PlacedPlayerSessions": {
          "shape": "PlacedPlayerSessionList",
          "documentation": "<p>A collection of information on player sessions created in response to the game session placement request. These player sessions are created only once a new game session is successfully placed (placement status is <code>FULFILLED</code>). This information includes the player ID (as provided in the placement request) and the corresponding player session ID. Retrieve full player sessions by calling <a>DescribePlayerSessions</a> with the player session ID.</p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        },
        "MatchmakerData": {
          "shape": "MatchmakerData",
          "documentation": "<p>Information on the matchmaking process for this game. Data is in JSON syntax, formatted as a string. It identifies the matchmaking configuration used to create the match, and contains data on all players assigned to the match, including player attributes and team assignments. For more details on matchmaker data, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data\">Match Data</a>.</p>"
        }
      },
      "documentation": "<p>Object that describes a <a>StartGameSessionPlacement</a> request. This object includes the full details of the original request plus the current status and start/end time stamps.</p> <p>Game session placement-related operations include:</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul>"
    },
    "GameSessionPlacementState": {
      "type": "string",
      "enum": [
        "PENDING",
        "FULFILLED",
        "CANCELLED",
        "TIMED_OUT",
        "FAILED"
      ]
    },
    "GameSessionQueue": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "GameSessionQueueName",
          "documentation": "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>"
        },
        "GameSessionQueueArn": {
          "shape": "GameSessionQueueArn",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift game session queue ARN, the resource ID matches the <i>Name</i> value.</p>"
        },
        "TimeoutInSeconds": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>"
        },
        "PlayerLatencyPolicies": {
          "shape": "PlayerLatencyPolicyList",
          "documentation": "<p>A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. </p>"
        },
        "Destinations": {
          "shape": "GameSessionQueueDestinationList",
          "documentation": "<p>A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order.</p>"
        }
      },
      "documentation": "<p>Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:</p> <ul> <li> <p>The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. </p> </li> <li> <p>The length of time that placement requests can wait in the queue before timing out. </p> </li> <li> <p>A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.</p> </li> </ul> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "GameSessionQueueArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^arn:.*:gamesessionqueue\\/[a-zA-Z0-9-]+"
    },
    "GameSessionQueueDestination": {
      "type": "structure",
      "members": {
        "DestinationArn": {
          "shape": "ArnStringModel",
          "documentation": "<p>The Amazon Resource Name (ARN) that is assigned to fleet or fleet alias. ARNs, which include a fleet ID or alias ID and a Region name, provide a unique identifier across all Regions. </p>"
        }
      },
      "documentation": "<p>Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination that is configured for a queue. </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "GameSessionQueueDestinationList": {
      "type": "list",
      "member": {
        "shape": "GameSessionQueueDestination"
      }
    },
    "GameSessionQueueList": {
      "type": "list",
      "member": {
        "shape": "GameSessionQueue"
      }
    },
    "GameSessionQueueName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9-]+"
    },
    "GameSessionQueueNameOrArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9-]+|^arn:.*:gamesessionqueue\\/[a-zA-Z0-9-]+"
    },
    "GameSessionQueueNameOrArnList": {
      "type": "list",
      "member": {
        "shape": "GameSessionQueueNameOrArn"
      }
    },
    "GameSessionStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "ACTIVATING",
        "TERMINATED",
        "TERMINATING",
        "ERROR"
      ]
    },
    "GameSessionStatusReason": {
      "type": "string",
      "enum": [
        "INTERRUPTED"
      ]
    },
    "GetGameSessionLogUrlInput": {
      "type": "structure",
      "required": [
        "GameSessionId"
      ],
      "members": {
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to get logs for. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "GetGameSessionLogUrlOutput": {
      "type": "structure",
      "members": {
        "PreSignedUrl": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Location of the requested game session logs, available for download. This URL is valid for 15 minutes, after which S3 will reject any download request using this URL. You can request a new URL any time within the 14-day period that the logs are retained.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "GetInstanceAccessInput": {
      "type": "structure",
      "required": [
        "FleetId",
        "InstanceId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet that contains the instance you want access to. You can use either the fleet ID or ARN value. The fleet can be in any of the following statuses: <code>ACTIVATING</code>, <code>ACTIVE</code>, or <code>ERROR</code>. Fleets with an <code>ERROR</code> status may be accessible for a short time before they are deleted.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>A unique identifier for an instance you want to get access to. You can access an instance in any status.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "GetInstanceAccessOutput": {
      "type": "structure",
      "members": {
        "InstanceAccess": {
          "shape": "InstanceAccess",
          "documentation": "<p>The connection information for a fleet instance, including IP address and access credentials.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "IamRoleArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^arn:.*:role\\/[\\w+=,.@-]+"
    },
    "IdStringModel": {
      "type": "string",
      "max": 48,
      "min": 1,
      "pattern": "[a-zA-Z0-9-]+"
    },
    "Instance": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that the instance is in.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>A unique identifier for an instance.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>IP address that is assigned to the instance.</p>"
        },
        "DnsName": {
          "shape": "DnsName",
          "documentation": "<p>DNS identifier assigned to the instance that is running the game session. Values have the following format:</p> <ul> <li> <p>TLS-enabled fleets: <code>&lt;unique identifier&gt;.&lt;region identifier&gt;.amazongamelift.com</code>.</p> </li> <li> <p>Non-TLS-enabled fleets: <code>ec2-&lt;unique identifier&gt;.compute.amazonaws.com</code>. (See <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p> </li> </ul> <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Operating system that is running on this instance. </p>"
        },
        "Type": {
          "shape": "EC2InstanceType",
          "documentation": "<p>EC2 instance type that defines the computing resources of this instance. </p>"
        },
        "Status": {
          "shape": "InstanceStatus",
          "documentation": "<p>Current status of the instance. Possible statuses include the following:</p> <ul> <li> <p> <b>PENDING</b> -- The instance is in the process of being created and launching server processes as defined in the fleet's run-time configuration. </p> </li> <li> <p> <b>ACTIVE</b> -- The instance has been successfully created and at least one server process has successfully launched and reported back to Amazon GameLift that it is ready to host a game session. The instance is now considered ready to host game sessions. </p> </li> <li> <p> <b>TERMINATING</b> -- The instance is in the process of shutting down. This may happen to reduce capacity during a scaling down event or to recycle resources in the event of a problem.</p> </li> </ul>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        }
      },
      "documentation": "<p>Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet may contain zero or more instances.</p>"
    },
    "InstanceAccess": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet containing the instance being accessed.</p>"
        },
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>A unique identifier for an instance being accessed.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>IP address that is assigned to the instance.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>Operating system that is running on the instance.</p>"
        },
        "Credentials": {
          "shape": "InstanceCredentials",
          "documentation": "<p>Credentials required to access the instance.</p>"
        }
      },
      "documentation": "<p>Information required to remotely connect to a fleet instance. Access is requested by calling <a>GetInstanceAccess</a>. </p>"
    },
    "InstanceCredentials": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "NonEmptyString",
          "documentation": "<p>User login string.</p>"
        },
        "Secret": {
          "shape": "NonEmptyString",
          "documentation": "<p>Secret string. For Windows instances, the secret is a password for use with Windows Remote Desktop. For Linux instances, it is a private key (which must be saved as a <code>.pem</code> file) for use with SSH.</p>"
        }
      },
      "documentation": "<p>Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>",
      "sensitive": true
    },
    "InstanceDefinition": {
      "type": "structure",
      "required": [
        "InstanceType"
      ],
      "members": {
        "InstanceType": {
          "shape": "GameServerGroupInstanceType",
          "documentation": "<p>An EC2 instance type designation.</p>"
        },
        "WeightedCapacity": {
          "shape": "WeightedCapacity",
          "documentation": "<p>Instance weighting that indicates how much this instance type contributes to the total capacity of a game server group. Instance weights are used by GameLift FleetIQ to calculate the instance type's cost per unit hour and better identify the most cost-effective options. For detailed information on weighting instance capacity, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\">Instance Weighting</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. Default value is \"1\".</p>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p>An allowed instance type for a <a>GameServerGroup</a>. All game server groups must have at least two instance types defined for it. GameLift FleetIQ periodically evaluates each defined instance type for viability. It then updates the Auto Scaling group with the list of viable instance types.</p>"
    },
    "InstanceDefinitions": {
      "type": "list",
      "member": {
        "shape": "InstanceDefinition"
      },
      "max": 20,
      "min": 2
    },
    "InstanceId": {
      "type": "string",
      "pattern": "[a-zA-Z0-9\\.-]+"
    },
    "InstanceList": {
      "type": "list",
      "member": {
        "shape": "Instance"
      }
    },
    "InstanceStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "ACTIVE",
        "TERMINATING"
      ]
    },
    "Integer": {
      "type": "integer"
    },
    "IpAddress": {
      "type": "string"
    },
    "IpPermission": {
      "type": "structure",
      "required": [
        "FromPort",
        "ToPort",
        "IpRange",
        "Protocol"
      ],
      "members": {
        "FromPort": {
          "shape": "PortNumber",
          "documentation": "<p>A starting value for a range of allowed port numbers.</p>"
        },
        "ToPort": {
          "shape": "PortNumber",
          "documentation": "<p>An ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than <code>FromPort</code>.</p>"
        },
        "IpRange": {
          "shape": "NonBlankString",
          "documentation": "<p>A range of allowed IP addresses. This value must be expressed in CIDR notation. Example: \"<code>000.000.000.000/[subnet mask]</code>\" or optionally the shortened version \"<code>0.0.0.0/[subnet mask]</code>\".</p>"
        },
        "Protocol": {
          "shape": "IpProtocol",
          "documentation": "<p>The network communication protocol used by the fleet.</p>"
        }
      },
      "documentation": "<p>A range of IP addresses and port settings that allow inbound traffic to connect to server processes on an Amazon GameLift hosting resource. New game sessions that are started on the fleet are assigned an IP address/port number combination, which must fall into the fleet's allowed ranges. For fleets created with a custom game server, the ranges reflect the server's game session assignments. For Realtime Servers fleets, Amazon GameLift automatically opens two port ranges, one for TCP messaging and one for UDP for use by the Realtime servers.</p>"
    },
    "IpPermissionsList": {
      "type": "list",
      "member": {
        "shape": "IpPermission"
      },
      "max": 50
    },
    "IpProtocol": {
      "type": "string",
      "enum": [
        "TCP",
        "UDP"
      ]
    },
    "LatencyMap": {
      "type": "map",
      "key": {
        "shape": "NonEmptyString"
      },
      "value": {
        "shape": "PositiveInteger"
      }
    },
    "LaunchTemplateId": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]+"
    },
    "LaunchTemplateName": {
      "type": "string",
      "max": 128,
      "min": 3,
      "pattern": "[a-zA-Z0-9\\(\\)\\.\\-/_]+"
    },
    "LaunchTemplateSpecification": {
      "type": "structure",
      "members": {
        "LaunchTemplateId": {
          "shape": "LaunchTemplateId",
          "documentation": "<p>A unique identifier for an existing EC2 launch template.</p>"
        },
        "LaunchTemplateName": {
          "shape": "LaunchTemplateName",
          "documentation": "<p>A readable identifier for an existing EC2 launch template. </p>"
        },
        "Version": {
          "shape": "LaunchTemplateVersion",
          "documentation": "<p>The version of the EC2 launch template to use. If no version is specified, the default version will be used. With Amazon EC2, you can specify a default version for a launch template. If none is set, the default is the first version created.</p>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p>An EC2 launch template that contains configuration settings and game server code to be deployed to all instances in a game server group. The launch template is specified when creating a new game server group with <a>CreateGameServerGroup</a>. </p>"
    },
    "LaunchTemplateVersion": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]+"
    },
    "ListAliasesInput": {
      "type": "structure",
      "members": {
        "RoutingStrategyType": {
          "shape": "RoutingStrategyType",
          "documentation": "<p>The routing type to filter results on. Use this parameter to retrieve only aliases with a certain routing type. To retrieve all aliases, leave this parameter empty.</p> <p>Possible routing types include the following:</p> <ul> <li> <p> <b>SIMPLE</b> -- The alias resolves to one specific fleet. Use this type when routing to active fleets.</p> </li> <li> <p> <b>TERMINAL</b> -- The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p> </li> </ul>"
        },
        "Name": {
          "shape": "NonEmptyString",
          "documentation": "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "ListAliasesOutput": {
      "type": "structure",
      "members": {
        "Aliases": {
          "shape": "AliasList",
          "documentation": "<p>A collection of alias resources that match the request parameters.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "ListBuildsInput": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "BuildStatus",
          "documentation": "<p>Build status to filter results by. To retrieve all builds, leave this parameter empty.</p> <p>Possible build statuses include the following:</p> <ul> <li> <p> <b>INITIALIZED</b> -- A new build has been defined, but no files have been uploaded. You cannot create fleets for builds that are in this status. When a build is successfully created, the build status is set to this value. </p> </li> <li> <p> <b>READY</b> -- The game build has been successfully uploaded. You can now create new fleets for this build.</p> </li> <li> <p> <b>FAILED</b> -- The game build upload failed. You cannot create new fleets for this build. </p> </li> </ul>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "ListBuildsOutput": {
      "type": "structure",
      "members": {
        "Builds": {
          "shape": "BuildList",
          "documentation": "<p>A collection of build resources that match the request.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "ListFleetsInput": {
      "type": "structure",
      "members": {
        "BuildId": {
          "shape": "BuildIdOrArn",
          "documentation": "<p>A unique identifier for a build to return fleets for. Use this parameter to return only fleets using a specified build. Use either the build ID or ARN value. To retrieve all fleets, do not include either a BuildId and ScriptID parameter.</p>"
        },
        "ScriptId": {
          "shape": "ScriptIdOrArn",
          "documentation": "<p>A unique identifier for a Realtime script to return fleets for. Use this parameter to return only fleets using a specified script. Use either the script ID or ARN value. To retrieve all fleets, leave this parameter empty.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "ListFleetsOutput": {
      "type": "structure",
      "members": {
        "FleetIds": {
          "shape": "FleetIdList",
          "documentation": "<p>Set of fleet IDs matching the list request. You can retrieve additional information about all returned fleets by passing this result set to a call to <a>DescribeFleetAttributes</a>, <a>DescribeFleetCapacity</a>, or <a>DescribeFleetUtilization</a>.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "ListGameServerGroupsInput": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential segments.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      }
    },
    "ListGameServerGroupsOutput": {
      "type": "structure",
      "members": {
        "GameServerGroups": {
          "shape": "GameServerGroups",
          "documentation": "<p>A collection of game server group objects that match the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      }
    },
    "ListGameServersInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>An identifier for the game server group to retrieve a list of game servers from. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>Indicates how to sort the returned data based on game server registration timestamp. Use ASCENDING to retrieve oldest game servers first, or use DESCENDING to retrieve newest game servers first. If this parameter is left empty, game servers are returned in no particular order.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential segments.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates the start of the next sequential segment of results. Use the token returned with the previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      }
    },
    "ListGameServersOutput": {
      "type": "structure",
      "members": {
        "GameServers": {
          "shape": "GameServers",
          "documentation": "<p>A collection of game server objects that match the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      }
    },
    "ListScriptsInput": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      }
    },
    "ListScriptsOutput": {
      "type": "structure",
      "members": {
        "Scripts": {
          "shape": "ScriptList",
          "documentation": "<p>A set of properties describing the requested script.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyString",
          "documentation": "<p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to and uniquely identifies the GameLift resource that you want to retrieve tags for. GameLift resource ARNs are included in the data object for the resource, which can be retrieved by calling a List or Describe operation for the resource type. </p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p> The collection of tags that have been assigned to the specified resource. </p>"
        }
      }
    },
    "MatchedPlayerSession": {
      "type": "structure",
      "members": {
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player </p>"
        },
        "PlayerSessionId": {
          "shape": "PlayerSessionId",
          "documentation": "<p>A unique identifier for a player session</p>"
        }
      },
      "documentation": "<p>Represents a new player session that is created as a result of a successful FlexMatch match. A successful match automatically creates new player sessions for every player ID in the original matchmaking request. </p> <p>When players connect to the match's game session, they must include both player ID and player session ID in order to claim their assigned player slot.</p>"
    },
    "MatchedPlayerSessionList": {
      "type": "list",
      "member": {
        "shape": "MatchedPlayerSession"
      }
    },
    "MatchmakerData": {
      "type": "string",
      "max": 390000,
      "min": 1
    },
    "MatchmakingAcceptanceTimeoutInteger": {
      "type": "integer",
      "max": 600,
      "min": 1
    },
    "MatchmakingConfiguration": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking configuration. This name is used to identify the configuration associated with a matchmaking request or ticket.</p>"
        },
        "ConfigurationArn": {
          "shape": "MatchmakingConfigurationArn",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift matchmaking configuration resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift configuration ARN, the resource ID matches the <i>Name</i> value.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with matchmaking configuration.</p>"
        },
        "GameSessionQueueArns": {
          "shape": "QueueArnsList",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. GameLift uses the listed queues when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any Region.</p>"
        },
        "RequestTimeoutSeconds": {
          "shape": "MatchmakingRequestTimeoutInteger",
          "documentation": "<p>The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that fail due to timing out can be resubmitted as needed.</p>"
        },
        "AcceptanceTimeoutSeconds": {
          "shape": "MatchmakingAcceptanceTimeoutInteger",
          "documentation": "<p>The length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.</p>"
        },
        "AcceptanceRequired": {
          "shape": "BooleanModel",
          "documentation": "<p>A flag that indicates whether a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.</p>"
        },
        "RuleSetName": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking rule set to use with this configuration. A matchmaking configuration can only use rule sets that are defined in the same Region.</p>"
        },
        "RuleSetArn": {
          "shape": "MatchmakingRuleSetArn",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift matchmaking rule set resource that this configuration uses.</p>"
        },
        "NotificationTarget": {
          "shape": "SnsArnStringModel",
          "documentation": "<p>An SNS topic ARN that is set up to receive matchmaking notifications.</p>"
        },
        "AdditionalPlayerCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The number of player slots in a match to keep open for future players. For example, assume that the configuration's rule set specifies a match for a single 12-person team. If the additional player count is set to 2, only 10 players are initially selected for the match.</p>"
        },
        "CustomEventData": {
          "shape": "CustomEventData",
          "documentation": "<p>Information to attach to all events related to the matchmaking configuration. </p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp indicating when this data object was created. The format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>A set of custom properties for a game session, formatted as key-value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object that is created for a successful match. </p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object that is created for a successful match. </p>"
        },
        "BackfillMode": {
          "shape": "BackfillMode",
          "documentation": "<p>The method used to backfill game sessions created with this matchmaking configuration. MANUAL indicates that the game makes backfill requests or does not use the match backfill feature. AUTOMATIC indicates that GameLift creates <a>StartMatchBackfill</a> requests whenever a game session has one or more open slots. Learn more about manual and automatic backfill in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html\">Backfill Existing Games with FlexMatch</a>.</p>"
        }
      },
      "documentation": "<p>Guidelines for use with FlexMatch to match players into games. All matchmaking requests must specify a matchmaking configuration.</p>"
    },
    "MatchmakingConfigurationArn": {
      "type": "string",
      "documentation": "Data type used for Matchmaking Configuration ARN.",
      "pattern": "^arn:.*:matchmakingconfiguration\\/[a-zA-Z0-9-\\.]*"
    },
    "MatchmakingConfigurationList": {
      "type": "list",
      "member": {
        "shape": "MatchmakingConfiguration"
      }
    },
    "MatchmakingConfigurationName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9-\\.]*|^arn:.*:matchmakingconfiguration\\/[a-zA-Z0-9-\\.]*"
    },
    "MatchmakingConfigurationNameList": {
      "type": "list",
      "member": {
        "shape": "MatchmakingConfigurationName"
      }
    },
    "MatchmakingConfigurationStatus": {
      "type": "string",
      "enum": [
        "CANCELLED",
        "COMPLETED",
        "FAILED",
        "PLACING",
        "QUEUED",
        "REQUIRES_ACCEPTANCE",
        "SEARCHING",
        "TIMED_OUT"
      ]
    },
    "MatchmakingIdList": {
      "type": "list",
      "member": {
        "shape": "MatchmakingIdStringModel"
      }
    },
    "MatchmakingIdStringModel": {
      "type": "string",
      "max": 128,
      "pattern": "[a-zA-Z0-9-\\.]*"
    },
    "MatchmakingRequestTimeoutInteger": {
      "type": "integer",
      "max": 43200,
      "min": 1
    },
    "MatchmakingRuleSet": {
      "type": "structure",
      "required": [
        "RuleSetBody"
      ],
      "members": {
        "RuleSetName": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking rule set</p>"
        },
        "RuleSetArn": {
          "shape": "MatchmakingRuleSetArn",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift matchmaking rule set resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift rule set ARN, the resource ID matches the <i>RuleSetName</i> value.</p>"
        },
        "RuleSetBody": {
          "shape": "RuleSetBody",
          "documentation": "<p>A collection of matchmaking rules, formatted as a JSON string. Comments are not allowed in JSON, but most elements support a description field.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp indicating when this data object was created. The format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        }
      },
      "documentation": "<p>Set of rule statements, used with FlexMatch, that determine how to build your player matches. Each rule set describes a type of group to be created and defines the parameters for acceptable player matches. Rule sets are used in <a>MatchmakingConfiguration</a> objects.</p> <p>A rule set may define the following elements for a match. For detailed information and examples showing how to construct a rule set, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html\">Build a FlexMatch Rule Set</a>. </p> <ul> <li> <p>Teams -- Required. A rule set must define one or multiple teams for the match and set minimum and maximum team sizes. For example, a rule set might describe a 4x4 match that requires all eight slots to be filled. </p> </li> <li> <p>Player attributes -- Optional. These attributes specify a set of player characteristics to evaluate when looking for a match. Matchmaking requests that use a rule set with player attributes must provide the corresponding attribute values. For example, an attribute might specify a player's skill or level.</p> </li> <li> <p>Rules -- Optional. Rules define how to evaluate potential players for a match based on player attributes. A rule might specify minimum requirements for individual players, teams, or entire matches. For example, a rule might require each player to meet a certain skill level, each team to have at least one player in a certain role, or the match to have a minimum average skill level. or may describe an entire group--such as all teams must be evenly matched or have at least one player in a certain role. </p> </li> <li> <p>Expansions -- Optional. Expansions allow you to relax the rules after a period of time when no acceptable matches are found. This feature lets you balance getting players into games in a reasonable amount of time instead of making them wait indefinitely for the best possible match. For example, you might use an expansion to increase the maximum skill variance between players after 30 seconds.</p> </li> </ul>"
    },
    "MatchmakingRuleSetArn": {
      "type": "string",
      "documentation": "Data type used for Matchmaking RuleSet ARN.",
      "pattern": "^arn:.*:matchmakingruleset\\/[a-zA-Z0-9-\\.]*"
    },
    "MatchmakingRuleSetList": {
      "type": "list",
      "member": {
        "shape": "MatchmakingRuleSet"
      }
    },
    "MatchmakingRuleSetName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[a-zA-Z0-9-\\.]*|^arn:.*:matchmakingruleset\\/[a-zA-Z0-9-\\.]*"
    },
    "MatchmakingRuleSetNameList": {
      "type": "list",
      "member": {
        "shape": "MatchmakingRuleSetName"
      },
      "max": 10,
      "min": 1
    },
    "MatchmakingTicket": {
      "type": "structure",
      "members": {
        "TicketId": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking ticket.</p>"
        },
        "ConfigurationName": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>Name of the <a>MatchmakingConfiguration</a> that is used with this ticket. Matchmaking configurations determine how players are grouped into a match and how a new game session is created for the match.</p>"
        },
        "ConfigurationArn": {
          "shape": "MatchmakingConfigurationArn",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift matchmaking configuration resource that is used with this ticket.</p>"
        },
        "Status": {
          "shape": "MatchmakingConfigurationStatus",
          "documentation": "<p>Current status of the matchmaking request.</p> <ul> <li> <p> <b>QUEUED</b> -- The matchmaking request has been received and is currently waiting to be processed.</p> </li> <li> <p> <b>SEARCHING</b> -- The matchmaking request is currently being processed. </p> </li> <li> <p> <b>REQUIRES_ACCEPTANCE</b> -- A match has been proposed and the players must accept the match (see <a>AcceptMatch</a>). This status is used only with requests that use a matchmaking configuration with a player acceptance requirement.</p> </li> <li> <p> <b>PLACING</b> -- The FlexMatch engine has matched players and is in the process of placing a new game session for the match.</p> </li> <li> <p> <b>COMPLETED</b> -- Players have been matched and a game session is ready to host the players. A ticket in this state contains the necessary connection information for players.</p> </li> <li> <p> <b>FAILED</b> -- The matchmaking request was not completed.</p> </li> <li> <p> <b>CANCELLED</b> -- The matchmaking request was canceled. This may be the result of a call to <a>StopMatchmaking</a> or a proposed match that one or more players failed to accept.</p> </li> <li> <p> <b>TIMED_OUT</b> -- The matchmaking request was not successful within the duration specified in the matchmaking configuration. </p> </li> </ul> <note> <p>Matchmaking requests that fail to successfully complete (statuses FAILED, CANCELLED, TIMED_OUT) can be resubmitted as new requests with new ticket IDs.</p> </note>"
        },
        "StatusReason": {
          "shape": "StringModel",
          "documentation": "<p>Code to explain the current status. For example, a status reason may indicate when a ticket has returned to <code>SEARCHING</code> status after a proposed match fails to receive player acceptances.</p>"
        },
        "StatusMessage": {
          "shape": "StringModel",
          "documentation": "<p>Additional information about the current status.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this matchmaking request was received. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this matchmaking request stopped being processed due to success, failure, or cancellation. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "Players": {
          "shape": "PlayerList",
          "documentation": "<p>A set of <code>Player</code> objects, each representing a player to find matches for. Players are identified by a unique player ID and may include latency data for use during matchmaking. If the ticket is in status <code>COMPLETED</code>, the <code>Player</code> objects include the team the players were assigned to in the resulting match.</p>"
        },
        "GameSessionConnectionInfo": {
          "shape": "GameSessionConnectionInfo",
          "documentation": "<p>Identifier and connection information of the game session created for the match. This information is added to the ticket only after the matchmaking request has been successfully completed.</p>"
        },
        "EstimatedWaitTime": {
          "shape": "WholeNumber",
          "documentation": "<p>Average amount of time (in seconds) that players are currently waiting for a match. If there is not enough recent data, this property may be empty.</p>"
        }
      },
      "documentation": "<p>Ticket generated to track the progress of a matchmaking request. Each ticket is uniquely identified by a ticket ID, supplied by the requester, when creating a matchmaking request with <a>StartMatchmaking</a>. Tickets can be retrieved by calling <a>DescribeMatchmaking</a> with the ticket ID.</p>"
    },
    "MatchmakingTicketList": {
      "type": "list",
      "member": {
        "shape": "MatchmakingTicket"
      }
    },
    "MaxConcurrentGameSessionActivations": {
      "type": "integer",
      "max": 2147483647,
      "min": 1
    },
    "MetricGroup": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "MetricGroupList": {
      "type": "list",
      "member": {
        "shape": "MetricGroup"
      },
      "max": 1
    },
    "MetricName": {
      "type": "string",
      "enum": [
        "ActivatingGameSessions",
        "ActiveGameSessions",
        "ActiveInstances",
        "AvailableGameSessions",
        "AvailablePlayerSessions",
        "CurrentPlayerSessions",
        "IdleInstances",
        "PercentAvailableGameSessions",
        "PercentIdleInstances",
        "QueueDepth",
        "WaitTime"
      ]
    },
    "NonBlankAndLengthConstraintString": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "NonBlankString": {
      "type": "string",
      "pattern": "[^\\s]+"
    },
    "NonEmptyString": {
      "type": "string",
      "min": 1
    },
    "NonNegativeDouble": {
      "type": "double",
      "min": 0
    },
    "NonZeroAndMaxString": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "OperatingSystem": {
      "type": "string",
      "enum": [
        "WINDOWS_2012",
        "AMAZON_LINUX",
        "AMAZON_LINUX_2"
      ]
    },
    "PlacedPlayerSession": {
      "type": "structure",
      "members": {
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player that is associated with this player session.</p>"
        },
        "PlayerSessionId": {
          "shape": "PlayerSessionId",
          "documentation": "<p>A unique identifier for a player session.</p>"
        }
      },
      "documentation": "<p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "PlacedPlayerSessionList": {
      "type": "list",
      "member": {
        "shape": "PlacedPlayerSession"
      }
    },
    "Player": {
      "type": "structure",
      "members": {
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player</p>"
        },
        "PlayerAttributes": {
          "shape": "PlayerAttributeMap",
          "documentation": "<p>A collection of key:value pairs containing player information for use in matchmaking. Player attribute keys must match the <i>playerAttributes</i> used in a matchmaking rule set. Example: <code>\"PlayerAttributes\": {\"skill\": {\"N\": \"23\"}, \"gameMode\": {\"S\": \"deathmatch\"}}</code>.</p>"
        },
        "Team": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Name of the team that the player is assigned to in a match. Team names are defined in a matchmaking rule set.</p>"
        },
        "LatencyInMs": {
          "shape": "LatencyMap",
          "documentation": "<p>Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS Regions. If this property is present, FlexMatch considers placing the match only in Regions for which latency is reported. </p> <p>If a matchmaker has a rule that evaluates player latency, players must report latency in order to be matched. If no latency is reported in this scenario, FlexMatch assumes that no Regions are available to the player and the ticket is not matchable. </p>"
        }
      },
      "documentation": "<p>Represents a player in matchmaking. When starting a matchmaking request, a player has a player ID, attributes, and may have latency data. Team information is added after a match has been successfully completed.</p>"
    },
    "PlayerAttributeMap": {
      "type": "map",
      "key": {
        "shape": "NonZeroAndMaxString"
      },
      "value": {
        "shape": "AttributeValue"
      }
    },
    "PlayerData": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "PlayerDataMap": {
      "type": "map",
      "key": {
        "shape": "NonZeroAndMaxString"
      },
      "value": {
        "shape": "PlayerData"
      }
    },
    "PlayerIdList": {
      "type": "list",
      "member": {
        "shape": "NonZeroAndMaxString"
      },
      "max": 25,
      "min": 1
    },
    "PlayerLatency": {
      "type": "structure",
      "members": {
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player associated with the latency data.</p>"
        },
        "RegionIdentifier": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Name of the Region that is associated with the latency value.</p>"
        },
        "LatencyInMilliseconds": {
          "shape": "Float",
          "documentation": "<p>Amount of time that represents the time lag experienced by the player when connected to the specified Region.</p>"
        }
      },
      "documentation": "<p>Regional latency information for a player, used when requesting a new game session with <a>StartGameSessionPlacement</a>. This value indicates the amount of time lag that exists when the player is connected to a fleet in the specified Region. The relative difference between a player's latency values for multiple Regions are used to determine which fleets are best suited to place a new game session for the player. </p>"
    },
    "PlayerLatencyList": {
      "type": "list",
      "member": {
        "shape": "PlayerLatency"
      }
    },
    "PlayerLatencyPolicy": {
      "type": "structure",
      "members": {
        "MaximumIndividualPlayerLatencyMilliseconds": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum latency value that is allowed for any player, in milliseconds. All policies must have a value set for this property.</p>"
        },
        "PolicyDurationSeconds": {
          "shape": "WholeNumber",
          "documentation": "<p>The length of time, in seconds, that the policy is enforced while placing a new game session. A null value for this property means that the policy is enforced until the queue times out.</p>"
        }
      },
      "documentation": "<p>Queue setting that determines the highest latency allowed for individual players when placing a game session. When a latency policy is in force, a game session cannot be placed with any fleet in a Region where a player reports latency higher than the cap. Latency policies are only enforced when the placement request contains player latency information.</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>"
    },
    "PlayerLatencyPolicyList": {
      "type": "list",
      "member": {
        "shape": "PlayerLatencyPolicy"
      }
    },
    "PlayerList": {
      "type": "list",
      "member": {
        "shape": "Player"
      }
    },
    "PlayerSession": {
      "type": "structure",
      "members": {
        "PlayerSessionId": {
          "shape": "PlayerSessionId",
          "documentation": "<p>A unique identifier for a player session.</p>"
        },
        "PlayerId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a player that is associated with this player session.</p>"
        },
        "GameSessionId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the game session that the player session is connected to.</p>"
        },
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that the player's game session is running on.</p>"
        },
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift fleet that the player's game session is running on. </p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "TerminationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "Status": {
          "shape": "PlayerSessionStatus",
          "documentation": "<p>Current status of the player session.</p> <p>Possible player session statuses include the following:</p> <ul> <li> <p> <b>RESERVED</b> -- The player session request has been received, but the player has not yet connected to the server process and/or been validated. </p> </li> <li> <p> <b>ACTIVE</b> -- The player has been validated by the server process and is currently connected.</p> </li> <li> <p> <b>COMPLETED</b> -- The player connection has been dropped.</p> </li> <li> <p> <b>TIMEDOUT</b> -- A player session request was received, but the player did not connect and/or was not validated within the timeout limit (60 seconds).</p> </li> </ul>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>IP address of the instance that is running the game session. When connecting to a Amazon GameLift game server, a client needs to reference an IP address (or DNS name) and port number.</p>"
        },
        "DnsName": {
          "shape": "DnsName",
          "documentation": "<p>DNS identifier assigned to the instance that is running the game session. Values have the following format:</p> <ul> <li> <p>TLS-enabled fleets: <code>&lt;unique identifier&gt;.&lt;region identifier&gt;.amazongamelift.com</code>.</p> </li> <li> <p>Non-TLS-enabled fleets: <code>ec2-&lt;unique identifier&gt;.compute.amazonaws.com</code>. (See <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses\">Amazon EC2 Instance IP Addressing</a>.)</p> </li> </ul> <p>When connecting to a game session that is running on a TLS-enabled fleet, you must use the DNS name, not the IP address.</p>"
        },
        "Port": {
          "shape": "PortNumber",
          "documentation": "<p>Port number for the game session. To connect to a Amazon GameLift server process, an app needs both the IP address and port number.</p>"
        },
        "PlayerData": {
          "shape": "PlayerData",
          "documentation": "<p>Developer-defined information related to a player. Amazon GameLift does not use this data, so it can be formatted as needed for use in the game. </p>"
        }
      },
      "documentation": "<p>Properties describing a player session. Player session objects are created either by creating a player session for a specific game session, or as part of a game session placement. A player session represents either a player reservation for a game session (status <code>RESERVED</code>) or actual player activity in a game session (status <code>ACTIVE</code>). A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.</p> <p>When a player disconnects, the player session status changes to <code>COMPLETED</code>. Once the session ends, the player session object is retained for 30 days and then removed.</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>"
    },
    "PlayerSessionCreationPolicy": {
      "type": "string",
      "enum": [
        "ACCEPT_ALL",
        "DENY_ALL"
      ]
    },
    "PlayerSessionId": {
      "type": "string",
      "pattern": "^psess-\\S+"
    },
    "PlayerSessionList": {
      "type": "list",
      "member": {
        "shape": "PlayerSession"
      }
    },
    "PlayerSessionStatus": {
      "type": "string",
      "enum": [
        "RESERVED",
        "ACTIVE",
        "COMPLETED",
        "TIMEDOUT"
      ]
    },
    "PolicyType": {
      "type": "string",
      "enum": [
        "RuleBased",
        "TargetBased"
      ]
    },
    "PortNumber": {
      "type": "integer",
      "max": 60000,
      "min": 1
    },
    "PositiveInteger": {
      "type": "integer",
      "min": 1
    },
    "PositiveLong": {
      "type": "long",
      "min": 1
    },
    "ProtectionPolicy": {
      "type": "string",
      "enum": [
        "NoProtection",
        "FullProtection"
      ]
    },
    "PutScalingPolicyInput": {
      "type": "structure",
      "required": [
        "Name",
        "FleetId",
        "MetricName"
      ],
      "members": {
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>"
        },
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet cannot be in any of the following statuses: ERROR or DELETING.</p>"
        },
        "ScalingAdjustment": {
          "shape": "Integer",
          "documentation": "<p>Amount of adjustment to make, based on the scaling adjustment type.</p>"
        },
        "ScalingAdjustmentType": {
          "shape": "ScalingAdjustmentType",
          "documentation": "<p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p> <ul> <li> <p> <b>ChangeInCapacity</b> -- add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.</p> </li> <li> <p> <b>ExactCapacity</b> -- set the instance count to the scaling adjustment value.</p> </li> <li> <p> <b>PercentChangeInCapacity</b> -- increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down; for example, a value of \"-10\" scales the fleet down by 10%.</p> </li> </ul>"
        },
        "Threshold": {
          "shape": "Double",
          "documentation": "<p>Metric value used to trigger a scaling event.</p>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperatorType",
          "documentation": "<p>Comparison operator to use when measuring the metric against the threshold value.</p>"
        },
        "EvaluationPeriods": {
          "shape": "PositiveInteger",
          "documentation": "<p>Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For detailed descriptions of fleet metrics, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html\">Monitor Amazon GameLift with Amazon CloudWatch</a>. </p> <ul> <li> <p> <b>ActivatingGameSessions</b> -- Game sessions in the process of being created.</p> </li> <li> <p> <b>ActiveGameSessions</b> -- Game sessions that are currently running.</p> </li> <li> <p> <b>ActiveInstances</b> -- Fleet instances that are currently running at least one game session.</p> </li> <li> <p> <b>AvailableGameSessions</b> -- Additional game sessions that fleet could host simultaneously, given current capacity.</p> </li> <li> <p> <b>AvailablePlayerSessions</b> -- Empty player slots in currently active game sessions. This includes game sessions that are not currently accepting players. Reserved player slots are not included.</p> </li> <li> <p> <b>CurrentPlayerSessions</b> -- Player slots in active game sessions that are being used by a player or are reserved for a player. </p> </li> <li> <p> <b>IdleInstances</b> -- Active instances that are currently hosting zero game sessions. </p> </li> <li> <p> <b>PercentAvailableGameSessions</b> -- Unused percentage of the total number of game sessions that a fleet could host simultaneously, given current capacity. Use this metric for a target-based scaling policy.</p> </li> <li> <p> <b>PercentIdleInstances</b> -- Percentage of the total number of active instances that are hosting zero game sessions.</p> </li> <li> <p> <b>QueueDepth</b> -- Pending game session placement requests, in any queue, where the current fleet is the top-priority destination.</p> </li> <li> <p> <b>WaitTime</b> -- Current wait time for pending game session placement requests, in any queue, where the current fleet is the top-priority destination. </p> </li> </ul>"
        },
        "PolicyType": {
          "shape": "PolicyType",
          "documentation": "<p>The type of scaling policy to create. For a target-based policy, set the parameter <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a <i>TargetConfiguration</i>. For a rule-based policy set the following parameters: <i>MetricName</i>, <i>ComparisonOperator</i>, <i>Threshold</i>, <i>EvaluationPeriods</i>, <i>ScalingAdjustmentType</i>, and <i>ScalingAdjustment</i>.</p>"
        },
        "TargetConfiguration": {
          "shape": "TargetConfiguration",
          "documentation": "<p>The settings for a target-based scaling policy.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "PutScalingPolicyOutput": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a scaling policy. Policy names do not need to be unique.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "QueueArnsList": {
      "type": "list",
      "member": {
        "shape": "ArnStringModel"
      }
    },
    "RegisterGameServerInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "GameServerId",
        "InstanceId"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group where the game server is running. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "GameServerId": {
          "shape": "GameServerId",
          "documentation": "<p>A custom string that uniquely identifies the game server to register. Game server IDs are developer-defined and must be unique across all game server groups in your AWS account.</p>"
        },
        "InstanceId": {
          "shape": "GameServerInstanceId",
          "documentation": "<p>The unique identifier for the instance where the game server is running. This ID is available in the instance metadata. EC2 instance IDs use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>"
        },
        "ConnectionInfo": {
          "shape": "GameServerConnectionInfo",
          "documentation": "<p>Information that is needed to make inbound client connections to the game server. This might include the IP address and port, DNS name, and other information.</p>"
        },
        "GameServerData": {
          "shape": "GameServerData",
          "documentation": "<p>A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information on game servers using <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>"
        }
      }
    },
    "RegisterGameServerOutput": {
      "type": "structure",
      "members": {
        "GameServer": {
          "shape": "GameServer",
          "documentation": "<p>Object that describes the newly registered game server.</p>"
        }
      }
    },
    "RequestUploadCredentialsInput": {
      "type": "structure",
      "required": [
        "BuildId"
      ],
      "members": {
        "BuildId": {
          "shape": "BuildIdOrArn",
          "documentation": "<p>A unique identifier for a build to get credentials for. You can use either the build ID or ARN value. </p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "RequestUploadCredentialsOutput": {
      "type": "structure",
      "members": {
        "UploadCredentials": {
          "shape": "AwsCredentials",
          "documentation": "<p>AWS credentials required when uploading a game build to the storage location. These credentials have a limited lifespan and are valid only for the build they were issued for.</p>"
        },
        "StorageLocation": {
          "shape": "S3Location",
          "documentation": "<p>Amazon S3 path and key, identifying where the game build files are stored.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "ResolveAliasInput": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>The unique identifier of the alias that you want to retrieve a fleet ID for. You can use either the alias ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "ResolveAliasOutput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>The fleet identifier that the alias is pointing to.</p>"
        },
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift fleet resource that this alias points to. </p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "ResourceCreationLimitPolicy": {
      "type": "structure",
      "members": {
        "NewGameSessionsPerCreator": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of game sessions that an individual can create during the policy period. </p>"
        },
        "PolicyPeriodInMinutes": {
          "shape": "WholeNumber",
          "documentation": "<p>The time span used in evaluating the resource creation limit policy. </p>"
        }
      },
      "documentation": "<p>A policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: \"An individual player can create a maximum number of new game sessions within a specified time period\".</p> <p>The policy is evaluated when a player tries to create a new game session. For example: Assume you have a policy of 10 new game sessions and a time period of 60 minutes. On receiving a <code>CreateGameSession</code> request, Amazon GameLift checks that the player (identified by <code>CreatorId</code>) has created fewer than 10 game sessions in the past 60 minutes.</p>"
    },
    "ResumeGameServerGroupInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "ResumeActions"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "ResumeActions": {
          "shape": "GameServerGroupActions",
          "documentation": "<p>The activity to resume for this game server group.</p>"
        }
      }
    },
    "ResumeGameServerGroupOutput": {
      "type": "structure",
      "members": {
        "GameServerGroup": {
          "shape": "GameServerGroup",
          "documentation": "<p>An object that describes the game server group resource, with the <code>SuspendedActions</code> property updated to reflect the resumed activity.</p>"
        }
      }
    },
    "RoutingStrategy": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "RoutingStrategyType",
          "documentation": "<p>The type of routing strategy for the alias.</p> <p>Possible routing types include the following:</p> <ul> <li> <p> <b>SIMPLE</b> - The alias resolves to one specific fleet. Use this type when routing to active fleets.</p> </li> <li> <p> <b>TERMINAL</b> - The alias does not resolve to a fleet but instead can be used to display a message to the user. A terminal alias throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p> </li> </ul>"
        },
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>The unique identifier for a fleet that the alias points to. This value is the fleet ID, not the fleet ARN.</p>"
        },
        "Message": {
          "shape": "FreeText",
          "documentation": "<p>The message text to be used with a terminal routing strategy.</p>"
        }
      },
      "documentation": "<p>The routing configuration for a fleet alias.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>"
    },
    "RoutingStrategyType": {
      "type": "string",
      "enum": [
        "SIMPLE",
        "TERMINAL"
      ]
    },
    "RuleSetBody": {
      "type": "string",
      "max": 65535,
      "min": 1
    },
    "RuleSetLimit": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "RuntimeConfiguration": {
      "type": "structure",
      "members": {
        "ServerProcesses": {
          "shape": "ServerProcessList",
          "documentation": "<p>A collection of server process configurations that describe which server processes to run on each instance in a fleet.</p>"
        },
        "MaxConcurrentGameSessionActivations": {
          "shape": "MaxConcurrentGameSessionActivations",
          "documentation": "<p>The maximum number of game sessions with status <code>ACTIVATING</code> to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.</p>"
        },
        "GameSessionActivationTimeoutSeconds": {
          "shape": "GameSessionActivationTimeoutSeconds",
          "documentation": "<p>The maximum amount of time (in seconds) that a game session can remain in status <code>ACTIVATING</code>. If the game session is not active before the timeout, activation is terminated and the game session status is changed to <code>TERMINATED</code>.</p>"
        }
      },
      "documentation": "<p>A collection of server process configurations that describe what processes to run on each instance in a fleet. Server processes run either a custom game build executable or a Realtime Servers script. Each instance in the fleet starts the specified server processes and continues to start new processes as existing processes end. Each instance regularly checks for an updated runtime configuration. </p> <p>The runtime configuration enables the instances in a fleet to run multiple processes simultaneously. Learn more about <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html\"> Running Multiple Processes on a Fleet </a>.</p> <p>A Amazon GameLift instance is limited to 50 processes running simultaneously. To calculate the total number of processes in a runtime configuration, add the values of the <code>ConcurrentExecutions</code> parameter for each <a>ServerProcess</a> object.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>StartFleetActions</a> or <a>StopFleetActions</a> </p> </li> </ul>"
    },
    "S3Location": {
      "type": "structure",
      "members": {
        "Bucket": {
          "shape": "NonEmptyString",
          "documentation": "<p>An S3 bucket identifier. This is the name of the S3 bucket.</p> <note> <p>GameLift currently does not support uploading from S3 buckets with names that contain a dot (.).</p> </note>"
        },
        "Key": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the zip file that contains the build files or script files. </p>"
        },
        "RoleArn": {
          "shape": "NonEmptyString",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that allows Amazon GameLift to access the S3 bucket.</p>"
        },
        "ObjectVersion": {
          "shape": "NonEmptyString",
          "documentation": "<p>The version of the file, if object versioning is turned on for the bucket. Amazon GameLift uses this information when retrieving files from an S3 bucket that you own. Use this parameter to specify a specific version of the file. If not set, the latest version of the file is retrieved. </p>"
        }
      },
      "documentation": "<p>The location in S3 where build or script files are stored for access by Amazon GameLift. This location is specified in <a>CreateBuild</a>, <a>CreateScript</a>, and <a>UpdateScript</a> requests. </p>"
    },
    "ScalingAdjustmentType": {
      "type": "string",
      "enum": [
        "ChangeInCapacity",
        "ExactCapacity",
        "PercentChangeInCapacity"
      ]
    },
    "ScalingPolicy": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that is associated with this scaling policy.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a scaling policy. Policy names do not need to be unique.</p>"
        },
        "Status": {
          "shape": "ScalingStatusType",
          "documentation": "<p>Current status of the scaling policy. The scaling policy can be in force only when in an <code>ACTIVE</code> status. Scaling policies can be suspended for individual fleets (see <a>StopFleetActions</a>; if suspended for a fleet, the policy status does not change. View a fleet's stopped actions by calling <a>DescribeFleetCapacity</a>.</p> <ul> <li> <p> <b>ACTIVE</b> -- The scaling policy can be used for auto-scaling a fleet.</p> </li> <li> <p> <b>UPDATE_REQUESTED</b> -- A request to update the scaling policy has been received.</p> </li> <li> <p> <b>UPDATING</b> -- A change is being made to the scaling policy.</p> </li> <li> <p> <b>DELETE_REQUESTED</b> -- A request to delete the scaling policy has been received.</p> </li> <li> <p> <b>DELETING</b> -- The scaling policy is being deleted.</p> </li> <li> <p> <b>DELETED</b> -- The scaling policy has been deleted.</p> </li> <li> <p> <b>ERROR</b> -- An error occurred in creating the policy. It should be removed and recreated.</p> </li> </ul>"
        },
        "ScalingAdjustment": {
          "shape": "Integer",
          "documentation": "<p>Amount of adjustment to make, based on the scaling adjustment type.</p>"
        },
        "ScalingAdjustmentType": {
          "shape": "ScalingAdjustmentType",
          "documentation": "<p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p> <ul> <li> <p> <b>ChangeInCapacity</b> -- add (or subtract) the scaling adjustment value from the current instance count. Positive values scale up while negative values scale down.</p> </li> <li> <p> <b>ExactCapacity</b> -- set the instance count to the scaling adjustment value.</p> </li> <li> <p> <b>PercentChangeInCapacity</b> -- increase or reduce the current instance count by the scaling adjustment, read as a percentage. Positive values scale up while negative values scale down.</p> </li> </ul>"
        },
        "ComparisonOperator": {
          "shape": "ComparisonOperatorType",
          "documentation": "<p>Comparison operator to use when measuring a metric against the threshold value.</p>"
        },
        "Threshold": {
          "shape": "Double",
          "documentation": "<p>Metric value used to trigger a scaling event.</p>"
        },
        "EvaluationPeriods": {
          "shape": "PositiveInteger",
          "documentation": "<p>Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.</p>"
        },
        "MetricName": {
          "shape": "MetricName",
          "documentation": "<p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For detailed descriptions of fleet metrics, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html\">Monitor Amazon GameLift with Amazon CloudWatch</a>. </p> <ul> <li> <p> <b>ActivatingGameSessions</b> -- Game sessions in the process of being created.</p> </li> <li> <p> <b>ActiveGameSessions</b> -- Game sessions that are currently running.</p> </li> <li> <p> <b>ActiveInstances</b> -- Fleet instances that are currently running at least one game session.</p> </li> <li> <p> <b>AvailableGameSessions</b> -- Additional game sessions that fleet could host simultaneously, given current capacity.</p> </li> <li> <p> <b>AvailablePlayerSessions</b> -- Empty player slots in currently active game sessions. This includes game sessions that are not currently accepting players. Reserved player slots are not included.</p> </li> <li> <p> <b>CurrentPlayerSessions</b> -- Player slots in active game sessions that are being used by a player or are reserved for a player. </p> </li> <li> <p> <b>IdleInstances</b> -- Active instances that are currently hosting zero game sessions. </p> </li> <li> <p> <b>PercentAvailableGameSessions</b> -- Unused percentage of the total number of game sessions that a fleet could host simultaneously, given current capacity. Use this metric for a target-based scaling policy.</p> </li> <li> <p> <b>PercentIdleInstances</b> -- Percentage of the total number of active instances that are hosting zero game sessions.</p> </li> <li> <p> <b>QueueDepth</b> -- Pending game session placement requests, in any queue, where the current fleet is the top-priority destination.</p> </li> <li> <p> <b>WaitTime</b> -- Current wait time for pending game session placement requests, in any queue, where the current fleet is the top-priority destination. </p> </li> </ul>"
        },
        "PolicyType": {
          "shape": "PolicyType",
          "documentation": "<p>The type of scaling policy to create. For a target-based policy, set the parameter <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a <i>TargetConfiguration</i>. For a rule-based policy set the following parameters: <i>MetricName</i>, <i>ComparisonOperator</i>, <i>Threshold</i>, <i>EvaluationPeriods</i>, <i>ScalingAdjustmentType</i>, and <i>ScalingAdjustment</i>.</p>"
        },
        "TargetConfiguration": {
          "shape": "TargetConfiguration",
          "documentation": "<p>The settings for a target-based scaling policy.</p>"
        }
      },
      "documentation": "<p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>"
    },
    "ScalingPolicyList": {
      "type": "list",
      "member": {
        "shape": "ScalingPolicy"
      }
    },
    "ScalingStatusType": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "UPDATE_REQUESTED",
        "UPDATING",
        "DELETE_REQUESTED",
        "DELETING",
        "DELETED",
        "ERROR"
      ]
    },
    "Script": {
      "type": "structure",
      "members": {
        "ScriptId": {
          "shape": "ScriptId",
          "documentation": "<p>A unique identifier for a Realtime script</p>"
        },
        "ScriptArn": {
          "shape": "ScriptArn",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift script resource and uniquely identifies it. ARNs are unique across all Regions. In a GameLift script ARN, the resource ID matches the <i>ScriptId</i> value.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>"
        },
        "Version": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>The version that is associated with a build or script. Version strings do not need to be unique.</p>"
        },
        "SizeOnDisk": {
          "shape": "PositiveLong",
          "documentation": "<p>The file size of the uploaded Realtime script, expressed in bytes. When files are uploaded from an S3 location, this value remains at \"0\".</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>A time stamp indicating when this data object was created. The format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "StorageLocation": {
          "shape": "S3Location"
        }
      },
      "documentation": "<p>Properties describing a Realtime script.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>"
    },
    "ScriptArn": {
      "type": "string",
      "pattern": "^arn:.*:script\\/script-\\S+"
    },
    "ScriptId": {
      "type": "string",
      "pattern": "^script-\\S+"
    },
    "ScriptIdOrArn": {
      "type": "string",
      "pattern": "^script-\\S+|^arn:.*:script\\/script-\\S+"
    },
    "ScriptList": {
      "type": "list",
      "member": {
        "shape": "Script"
      }
    },
    "SearchGameSessionsInput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to search for active game sessions. You can use either the fleet ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.</p>"
        },
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>A unique identifier for an alias associated with the fleet to search for active game sessions. You can use either the alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but not both.</p>"
        },
        "FilterExpression": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>String containing the search criteria for the session search. If no filter expression is included, the request returns results for all game sessions in the fleet that are in <code>ACTIVE</code> status.</p> <p>A filter expression can contain one or multiple conditions. Each condition consists of the following:</p> <ul> <li> <p> <b>Operand</b> -- Name of a game session attribute. Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>, <code>gameSessionProperties</code>, <code>maximumSessions</code>, <code>creationTimeMillis</code>, <code>playerSessionCount</code>, <code>hasAvailablePlayerSessions</code>.</p> </li> <li> <p> <b>Comparator</b> -- Valid comparators are: <code>=</code>, <code>&lt;&gt;</code>, <code>&lt;</code>, <code>&gt;</code>, <code>&lt;=</code>, <code>&gt;=</code>. </p> </li> <li> <p> <b>Value</b> -- Value to be searched for. Values may be numbers, boolean values (true/false) or strings depending on the operand. String values are case sensitive and must be enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be used with the comparators <code>=</code> and <code>&lt;&gt;</code>. For example, the following filter expression searches on <code>gameSessionName</code>: \"<code>FilterExpression\": \"gameSessionName = 'Matt\\\\'s Awesome Game 1'\"</code>. </p> </li> </ul> <p>To chain multiple conditions in a single expression, use the logical keywords <code>AND</code>, <code>OR</code>, and <code>NOT</code> and parentheses as needed. For example: <code>x AND y AND NOT z</code>, <code>NOT (x OR y)</code>.</p> <p>Session search evaluates conditions from left to right using the following precedence rules:</p> <ol> <li> <p> <code>=</code>, <code>&lt;&gt;</code>, <code>&lt;</code>, <code>&gt;</code>, <code>&lt;=</code>, <code>&gt;=</code> </p> </li> <li> <p>Parentheses</p> </li> <li> <p>NOT</p> </li> <li> <p>AND</p> </li> <li> <p>OR</p> </li> </ol> <p>For example, this filter expression retrieves game sessions hosting at least ten players that have an open player slot: <code>\"maximumSessions&gt;=10 AND hasAvailablePlayerSessions=true\"</code>. </p>"
        },
        "SortExpression": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Instructions on how to sort the search results. If no sort expression is included, the request returns results in random order. A sort expression consists of the following elements:</p> <ul> <li> <p> <b>Operand</b> -- Name of a game session attribute. Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>, <code>gameSessionProperties</code>, <code>maximumSessions</code>, <code>creationTimeMillis</code>, <code>playerSessionCount</code>, <code>hasAvailablePlayerSessions</code>.</p> </li> <li> <p> <b>Order</b> -- Valid sort orders are <code>ASC</code> (ascending) and <code>DESC</code> (descending).</p> </li> </ul> <p>For example, this sort expression returns the oldest active sessions first: <code>\"SortExpression\": \"creationTimeMillis ASC\"</code>. Results with a null value for the sort operand are returned at the end of the list.</p>"
        },
        "Limit": {
          "shape": "PositiveInteger",
          "documentation": "<p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20. </p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "SearchGameSessionsOutput": {
      "type": "structure",
      "members": {
        "GameSessions": {
          "shape": "GameSessionList",
          "documentation": "<p>A collection of objects containing game session properties for each session matching the request.</p>"
        },
        "NextToken": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "ServerProcess": {
      "type": "structure",
      "required": [
        "LaunchPath",
        "ConcurrentExecutions"
      ],
      "members": {
        "LaunchPath": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>The location of the server executable in a custom game build or the name of the Realtime script file that contains the <code>Init()</code> function. Game builds and Realtime scripts are installed on instances at the root: </p> <ul> <li> <p>Windows (for custom game builds only): <code>C:\\game</code>. Example: \"<code>C:\\game\\MyGame\\server.exe</code>\" </p> </li> <li> <p>Linux: <code>/local/game</code>. Examples: \"<code>/local/game/MyGame/server.exe</code>\" or \"<code>/local/game/MyRealtimeScript.js</code>\"</p> </li> </ul>"
        },
        "Parameters": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>An optional list of parameters to pass to the server executable or Realtime script on launch.</p>"
        },
        "ConcurrentExecutions": {
          "shape": "PositiveInteger",
          "documentation": "<p>The number of server processes that use this configuration to run concurrently on an instance.</p>"
        }
      },
      "documentation": "<p>A set of instructions for launching server processes on each instance in a fleet. Server processes run either a custom game build executable or a Realtime Servers script. Each instruction set identifies the location of the custom game build executable or Realtime launch script, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's <code> <a>RuntimeConfiguration</a> </code>.</p>"
    },
    "ServerProcessList": {
      "type": "list",
      "member": {
        "shape": "ServerProcess"
      },
      "max": 50,
      "min": 1
    },
    "SnsArnStringModel": {
      "type": "string",
      "max": 300,
      "min": 0,
      "pattern": "[a-zA-Z0-9:_/-]*"
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "StartFleetActionsInput": {
      "type": "structure",
      "required": [
        "FleetId",
        "Actions"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to start actions on. You can use either the fleet ID or ARN value.</p>"
        },
        "Actions": {
          "shape": "FleetActionList",
          "documentation": "<p>List of actions to restart on the fleet.</p>"
        }
      }
    },
    "StartFleetActionsOutput": {
      "type": "structure",
      "members": {}
    },
    "StartGameSessionPlacementInput": {
      "type": "structure",
      "required": [
        "PlacementId",
        "GameSessionQueueName",
        "MaximumPlayerSessionCount"
      ],
      "members": {
        "PlacementId": {
          "shape": "IdStringModel",
          "documentation": "<p>A unique identifier to assign to the new game session placement. This value is developer-defined. The value must be unique across all Regions and cannot be reused unless you are resubmitting a canceled or timed-out placement request.</p>"
        },
        "GameSessionQueueName": {
          "shape": "GameSessionQueueNameOrArn",
          "documentation": "<p>Name of the queue to use to place the new game session. You can use either the queue name or ARN value. </p>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>Set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        },
        "MaximumPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
        },
        "GameSessionName": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
        },
        "PlayerLatencies": {
          "shape": "PlayerLatencyList",
          "documentation": "<p>Set of values, expressed in milliseconds, indicating the amount of latency that a player experiences when connected to AWS Regions. This information is used to try to place the new game session where it can offer the best possible gameplay experience for the players. </p>"
        },
        "DesiredPlayerSessions": {
          "shape": "DesiredPlayerSessionList",
          "documentation": "<p>Set of information on each player to create a player session for.</p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>Set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>).</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "StartGameSessionPlacementOutput": {
      "type": "structure",
      "members": {
        "GameSessionPlacement": {
          "shape": "GameSessionPlacement",
          "documentation": "<p>Object that describes the newly created game session placement. This object includes all the information provided in the request, as well as start/end time stamps and placement status. </p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "StartMatchBackfillInput": {
      "type": "structure",
      "required": [
        "ConfigurationName",
        "GameSessionArn",
        "Players"
      ],
      "members": {
        "TicketId": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of a UUID. Use this identifier to track the match backfill ticket status and retrieve match results.</p>"
        },
        "ConfigurationName": {
          "shape": "MatchmakingConfigurationName",
          "documentation": "<p>Name of the matchmaker to use for this request. You can use either the configuration name or ARN value. The ARN of the matchmaker that was used with the original game session is listed in the <a>GameSession</a> object, <code>MatchmakerData</code> property.</p>"
        },
        "GameSessionArn": {
          "shape": "ArnStringModel",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a game session and uniquely identifies it. This is the same as the game session ID.</p>"
        },
        "Players": {
          "shape": "PlayerList",
          "documentation": "<p>Match information on all players that are currently assigned to the game session. This information is used by the matchmaker to find new players and add them to the existing game.</p> <ul> <li> <p>PlayerID, PlayerAttributes, Team -\\\\- This information is maintained in the <a>GameSession</a> object, <code>MatchmakerData</code> property, for all players who are currently assigned to the game session. The matchmaker data is in JSON syntax, formatted as a string. For more details, see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-server.html#match-server-data\"> Match Data</a>. </p> </li> <li> <p>LatencyInMs -\\\\- If the matchmaker uses player latency, include a latency value, in milliseconds, for the Region that the game session is currently in. Do not include latency values for any other Region.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "StartMatchBackfillOutput": {
      "type": "structure",
      "members": {
        "MatchmakingTicket": {
          "shape": "MatchmakingTicket",
          "documentation": "<p>Ticket representing the backfill matchmaking request. This object includes the information in the request, ticket status, and match results as generated during the matchmaking process.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "StartMatchmakingInput": {
      "type": "structure",
      "required": [
        "ConfigurationName",
        "Players"
      ],
      "members": {
        "TicketId": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of a UUID. Use this identifier to track the matchmaking ticket status and retrieve match results.</p>"
        },
        "ConfigurationName": {
          "shape": "MatchmakingConfigurationName",
          "documentation": "<p>Name of the matchmaking configuration to use for this request. Matchmaking configurations must exist in the same Region as this request. You can use either the configuration name or ARN value.</p>"
        },
        "Players": {
          "shape": "PlayerList",
          "documentation": "<p>Information on each player to be matched. This information must include a player ID, and may contain player attributes and latency data to be used in the matchmaking process. After a successful match, <code>Player</code> objects contain the name of the team the player is assigned to.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "StartMatchmakingOutput": {
      "type": "structure",
      "members": {
        "MatchmakingTicket": {
          "shape": "MatchmakingTicket",
          "documentation": "<p>Ticket representing the matchmaking request. This object include the information included in the request, ticket status, and match results as generated during the matchmaking process.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "StopFleetActionsInput": {
      "type": "structure",
      "required": [
        "FleetId",
        "Actions"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to stop actions on. You can use either the fleet ID or ARN value.</p>"
        },
        "Actions": {
          "shape": "FleetActionList",
          "documentation": "<p>List of actions to suspend on the fleet. </p>"
        }
      }
    },
    "StopFleetActionsOutput": {
      "type": "structure",
      "members": {}
    },
    "StopGameSessionPlacementInput": {
      "type": "structure",
      "required": [
        "PlacementId"
      ],
      "members": {
        "PlacementId": {
          "shape": "IdStringModel",
          "documentation": "<p>A unique identifier for a game session placement to cancel.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "StopGameSessionPlacementOutput": {
      "type": "structure",
      "members": {
        "GameSessionPlacement": {
          "shape": "GameSessionPlacement",
          "documentation": "<p>Object that describes the canceled game session placement, with <code>CANCELLED</code> status and an end time stamp. </p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "StopMatchmakingInput": {
      "type": "structure",
      "required": [
        "TicketId"
      ],
      "members": {
        "TicketId": {
          "shape": "MatchmakingIdStringModel",
          "documentation": "<p>A unique identifier for a matchmaking ticket.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "StopMatchmakingOutput": {
      "type": "structure",
      "members": {}
    },
    "StringDoubleMap": {
      "type": "map",
      "key": {
        "shape": "NonZeroAndMaxString"
      },
      "value": {
        "shape": "DoubleObject"
      }
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "NonZeroAndMaxString"
      }
    },
    "StringModel": {
      "type": "string"
    },
    "SuspendGameServerGroupInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "SuspendActions"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "SuspendActions": {
          "shape": "GameServerGroupActions",
          "documentation": "<p>The activity to suspend for this game server group.</p>"
        }
      }
    },
    "SuspendGameServerGroupOutput": {
      "type": "structure",
      "members": {
        "GameServerGroup": {
          "shape": "GameServerGroup",
          "documentation": "<p>An object that describes the game server group resource, with the <code>SuspendedActions</code> property updated to reflect the suspended activity.</p>"
        }
      }
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
          "documentation": "<p> The key for a developer-defined key:value pair for tagging an AWS resource. </p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p> The value for a developer-defined key:value pair for tagging an AWS resource. </p>"
        }
      },
      "documentation": "<p> A label that can be assigned to a GameLift resource. </p> <p> <b>Learn more</b> </p> <p> <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> in the <i>AWS General Reference</i> </p> <p> <a href=\"http://aws.amazon.com/answers/account-management/aws-tagging-strategies/\"> AWS Tagging Strategies</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>TagResource</a> </p> </li> <li> <p> <a>UntagResource</a> </p> </li> <li> <p> <a>ListTagsForResource</a> </p> </li> </ul>"
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
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to and uniquely identifies the GameLift resource that you want to assign tags to. GameLift resource ARNs are included in the data object for the resource, which can be retrieved by calling a List or Describe operation for the resource type. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of one or more tags to assign to the specified GameLift resource. Tags are developer-defined and structured as key-value pairs. The maximum tag limit may be lower than stated. See <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\"> Tagging AWS Resources</a> for actual tagging limits.</p>"
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
    "TargetConfiguration": {
      "type": "structure",
      "required": [
        "TargetValue"
      ],
      "members": {
        "TargetValue": {
          "shape": "Double",
          "documentation": "<p>Desired value to use with a target-based scaling policy. The value must be relevant for whatever metric the scaling policy is using. For example, in a policy using the metric PercentAvailableGameSessions, the target value should be the preferred size of the fleet's buffer (the percent of capacity that should be idle and ready for new game sessions).</p>"
        }
      },
      "documentation": "<p>Settings for a target-based scaling policy (see <a>ScalingPolicy</a>. A target-based policy tracks a particular fleet metric specifies a target value for the metric. As player usage changes, the policy triggers Amazon GameLift to adjust capacity so that the metric returns to the target value. The target configuration specifies settings as needed for the target based policy, including the target value. </p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>"
    },
    "TargetTrackingConfiguration": {
      "type": "structure",
      "required": [
        "TargetValue"
      ],
      "members": {
        "TargetValue": {
          "shape": "NonNegativeDouble",
          "documentation": "<p>Desired value to use with a game server group target-based scaling policy. </p>"
        }
      },
      "documentation": "<p> <b>This data type is used with the Amazon GameLift FleetIQ and game server groups.</b> </p> <p>Settings for a target-based scaling policy as part of a <a>GameServerGroupAutoScalingPolicy</a>. These settings are used to create a target-based policy that tracks the GameLift FleetIQ metric <code>\"PercentUtilizedGameServers\"</code> and specifies a target value for the metric. As player usage changes, the policy triggers to adjust the game server group capacity so that the metric returns to the target value. </p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) that is assigned to and uniquely identifies the GameLift resource that you want to remove tags from. GameLift resource ARNs are included in the data object for the resource, which can be retrieved by calling a List or Describe operation for the resource type. </p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of one or more tag keys to remove from the specified GameLift resource. An AWS resource can have only one tag with a specific tag key, so specifying the tag key identifies which tag to remove. </p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAliasInput": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "AliasIdOrArn",
          "documentation": "<p>A unique identifier for the alias that you want to update. You can use either the alias ID or ARN value.</p>"
        },
        "Name": {
          "shape": "NonBlankAndLengthConstraintString",
          "documentation": "<p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A human-readable description of the alias.</p>"
        },
        "RoutingStrategy": {
          "shape": "RoutingStrategy",
          "documentation": "<p>The routing configuration, including routing type and fleet target, for the alias.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateAliasOutput": {
      "type": "structure",
      "members": {
        "Alias": {
          "shape": "Alias",
          "documentation": "<p>The updated alias resource.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateBuildInput": {
      "type": "structure",
      "required": [
        "BuildId"
      ],
      "members": {
        "BuildId": {
          "shape": "BuildIdOrArn",
          "documentation": "<p>A unique identifier for a build to update. You can use either the build ID or ARN value. </p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a build. Build names do not need to be unique. </p>"
        },
        "Version": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateBuildOutput": {
      "type": "structure",
      "members": {
        "Build": {
          "shape": "Build",
          "documentation": "<p>The updated build resource.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateFleetAttributesInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to update attribute metadata for. You can use either the fleet ID or ARN value.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Human-readable description of a fleet.</p>"
        },
        "NewGameSessionProtectionPolicy": {
          "shape": "ProtectionPolicy",
          "documentation": "<p>Game session protection policy to apply to all new instances created in this fleet. Instances that already exist are not affected. You can set protection for individual instances using <a>UpdateGameSession</a>.</p> <ul> <li> <p> <b>NoProtection</b> -- The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> -- If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>"
        },
        "ResourceCreationLimitPolicy": {
          "shape": "ResourceCreationLimitPolicy",
          "documentation": "<p>Policy that limits the number of game sessions an individual player can create over a span of time. </p>"
        },
        "MetricGroups": {
          "shape": "MetricGroupList",
          "documentation": "<p>Names of metric groups to include this fleet in. Amazon CloudWatch uses a fleet metric group is to aggregate metrics from multiple fleets. Use an existing metric group name to add this fleet to the group. Or use a new name to create a new metric group. A fleet can only be included in one metric group at a time.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateFleetAttributesOutput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that was updated. Use either the fleet ID or ARN value.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateFleetCapacityInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to update capacity for. You can use either the fleet ID or ARN value.</p>"
        },
        "DesiredInstances": {
          "shape": "WholeNumber",
          "documentation": "<p>Number of EC2 instances you want this fleet to host.</p>"
        },
        "MinSize": {
          "shape": "WholeNumber",
          "documentation": "<p>The minimum value allowed for the fleet's instance count. Default if not set is 0.</p>"
        },
        "MaxSize": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum value allowed for the fleet's instance count. Default if not set is 1.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateFleetCapacityOutput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that was updated.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateFleetPortSettingsInput": {
      "type": "structure",
      "required": [
        "FleetId"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to update port settings for. You can use either the fleet ID or ARN value.</p>"
        },
        "InboundPermissionAuthorizations": {
          "shape": "IpPermissionsList",
          "documentation": "<p>A collection of port settings to be added to the fleet resource.</p>"
        },
        "InboundPermissionRevocations": {
          "shape": "IpPermissionsList",
          "documentation": "<p>A collection of port settings to be removed from the fleet resource.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateFleetPortSettingsOutput": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet that was updated.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateGameServerGroupInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "RoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html\">ARN</a>) for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.</p>"
        },
        "InstanceDefinitions": {
          "shape": "InstanceDefinitions",
          "documentation": "<p>An updated list of EC2 instance types to use in the Auto Scaling group. The instance definitions must specify at least two different instance types that are supported by GameLift FleetIQ. This updated list replaces the entire current list of instance definitions for the game server group. For more information on instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">EC2 Instance Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally specify capacity weighting for each instance type. If no weight value is specified for an instance type, it is set to the default value \"1\". For more information about capacity weighting, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html\"> Instance Weighting for Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>"
        },
        "GameServerProtectionPolicy": {
          "shape": "GameServerProtectionPolicy",
          "documentation": "<p>A flag that indicates whether instances in the game server group are protected from early termination. Unprotected instances that have active game servers running might be terminated during a scale-down event, causing players to be dropped from the game. Protected instances cannot be terminated while there are active game servers running except in the event of a forced game server group deletion (see ). An exception to this is with Spot Instances, which can be terminated by AWS regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>"
        },
        "BalancingStrategy": {
          "shape": "BalancingStrategy",
          "documentation": "<p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the game server group. Method options include the following:</p> <ul> <li> <p> <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot Instances are unavailable or not viable for game hosting, the game server group provides no hosting capacity until Spot Instances can again be used. Until then, no new instances are started, and the existing nonviable Spot Instances are terminated (after current gameplay ends) and are not replaced.</p> </li> <li> <p> <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in the game server group. If Spot Instances are unavailable, the game server group continues to provide hosting capacity by falling back to On-Demand Instances. Existing nonviable Spot Instances are terminated (after current gameplay ends) and are replaced with new On-Demand Instances.</p> </li> <li> <p> <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game server group. No Spot Instances are used, even when available, while this balancing strategy is in force.</p> </li> </ul>"
        }
      }
    },
    "UpdateGameServerGroupOutput": {
      "type": "structure",
      "members": {
        "GameServerGroup": {
          "shape": "GameServerGroup",
          "documentation": "<p>An object that describes the game server group resource with updated properties. </p>"
        }
      }
    },
    "UpdateGameServerInput": {
      "type": "structure",
      "required": [
        "GameServerGroupName",
        "GameServerId"
      ],
      "members": {
        "GameServerGroupName": {
          "shape": "GameServerGroupNameOrArn",
          "documentation": "<p>A unique identifier for the game server group where the game server is running. Use either the <a>GameServerGroup</a> name or ARN value.</p>"
        },
        "GameServerId": {
          "shape": "GameServerId",
          "documentation": "<p>A custom string that uniquely identifies the game server to update.</p>"
        },
        "GameServerData": {
          "shape": "GameServerData",
          "documentation": "<p>A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information on game servers using <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>"
        },
        "UtilizationStatus": {
          "shape": "GameServerUtilizationStatus",
          "documentation": "<p>Indicates whether the game server is available or is currently hosting gameplay.</p>"
        },
        "HealthCheck": {
          "shape": "GameServerHealthCheck",
          "documentation": "<p>Indicates health status of the game server. A request that includes this parameter updates the game server's <i>LastHealthCheckTime</i> timestamp. </p>"
        }
      }
    },
    "UpdateGameServerOutput": {
      "type": "structure",
      "members": {
        "GameServer": {
          "shape": "GameServer",
          "documentation": "<p>Object that describes the newly updated game server.</p>"
        }
      }
    },
    "UpdateGameSessionInput": {
      "type": "structure",
      "required": [
        "GameSessionId"
      ],
      "members": {
        "GameSessionId": {
          "shape": "ArnStringModel",
          "documentation": "<p>A unique identifier for the game session to update. </p>"
        },
        "MaximumPlayerSessionCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum number of players that can be connected simultaneously to the game session.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>"
        },
        "PlayerSessionCreationPolicy": {
          "shape": "PlayerSessionCreationPolicy",
          "documentation": "<p>Policy determining whether or not the game session accepts new players.</p>"
        },
        "ProtectionPolicy": {
          "shape": "ProtectionPolicy",
          "documentation": "<p>Game session protection policy to apply to this game session only.</p> <ul> <li> <p> <b>NoProtection</b> -- The game session can be terminated during a scale-down event.</p> </li> <li> <p> <b>FullProtection</b> -- If the game session is in an <code>ACTIVE</code> status, it cannot be terminated during a scale-down event.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateGameSessionOutput": {
      "type": "structure",
      "members": {
        "GameSession": {
          "shape": "GameSession",
          "documentation": "<p>The updated game session metadata.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateGameSessionQueueInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "GameSessionQueueNameOrArn",
          "documentation": "<p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>"
        },
        "TimeoutInSeconds": {
          "shape": "WholeNumber",
          "documentation": "<p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>"
        },
        "PlayerLatencyPolicies": {
          "shape": "PlayerLatencyPolicyList",
          "documentation": "<p>A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.</p>"
        },
        "Destinations": {
          "shape": "GameSessionQueueDestinationList",
          "documentation": "<p>A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateGameSessionQueueOutput": {
      "type": "structure",
      "members": {
        "GameSessionQueue": {
          "shape": "GameSessionQueue",
          "documentation": "<p>An object that describes the newly updated game session queue.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateMatchmakingConfigurationInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "MatchmakingConfigurationName",
          "documentation": "<p>A unique identifier for a matchmaking configuration to update. You can use either the configuration name or ARN value. </p>"
        },
        "Description": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with matchmaking configuration.</p>"
        },
        "GameSessionQueueArns": {
          "shape": "QueueArnsList",
          "documentation": "<p>Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. These queues are used when placing game sessions for matches that are created with this matchmaking configuration. Queues can be located in any Region.</p>"
        },
        "RequestTimeoutSeconds": {
          "shape": "MatchmakingRequestTimeoutInteger",
          "documentation": "<p>The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out. Requests that fail due to timing out can be resubmitted as needed.</p>"
        },
        "AcceptanceTimeoutSeconds": {
          "shape": "MatchmakingAcceptanceTimeoutInteger",
          "documentation": "<p>The length of time (in seconds) to wait for players to accept a proposed match. If any player rejects the match or fails to accept before the timeout, the ticket continues to look for an acceptable match.</p>"
        },
        "AcceptanceRequired": {
          "shape": "BooleanModel",
          "documentation": "<p>A flag that indicates whether a match that was created with this configuration must be accepted by the matched players. To require acceptance, set to TRUE.</p>"
        },
        "RuleSetName": {
          "shape": "MatchmakingRuleSetName",
          "documentation": "<p>A unique identifier for a matchmaking rule set to use with this configuration. You can use either the rule set name or ARN value. A matchmaking configuration can only use rule sets that are defined in the same Region.</p>"
        },
        "NotificationTarget": {
          "shape": "SnsArnStringModel",
          "documentation": "<p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html\"> Setting up Notifications for Matchmaking</a> for more information.</p>"
        },
        "AdditionalPlayerCount": {
          "shape": "WholeNumber",
          "documentation": "<p>The number of player slots in a match to keep open for future players. For example, assume that the configuration's rule set specifies a match for a single 12-person team. If the additional player count is set to 2, only 10 players are initially selected for the match.</p>"
        },
        "CustomEventData": {
          "shape": "CustomEventData",
          "documentation": "<p>Information to add to all events related to the matchmaking configuration. </p>"
        },
        "GameProperties": {
          "shape": "GamePropertyList",
          "documentation": "<p>A set of custom properties for a game session, formatted as key-value pairs. These properties are passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object that is created for a successful match. </p>"
        },
        "GameSessionData": {
          "shape": "GameSessionData",
          "documentation": "<p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the <a>GameSession</a> object with a request to start a new game session (see <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession\">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object that is created for a successful match. </p>"
        },
        "BackfillMode": {
          "shape": "BackfillMode",
          "documentation": "<p>The method that is used to backfill game sessions created with this matchmaking configuration. Specify MANUAL when your game manages backfill requests manually or does not use the match backfill feature. Specify AUTOMATIC to have GameLift create a <a>StartMatchBackfill</a> request whenever a game session has one or more open slots. Learn more about manual and automatic backfill in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html\">Backfill Existing Games with FlexMatch</a>.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateMatchmakingConfigurationOutput": {
      "type": "structure",
      "members": {
        "Configuration": {
          "shape": "MatchmakingConfiguration",
          "documentation": "<p>The updated matchmaking configuration.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateRuntimeConfigurationInput": {
      "type": "structure",
      "required": [
        "FleetId",
        "RuntimeConfiguration"
      ],
      "members": {
        "FleetId": {
          "shape": "FleetIdOrArn",
          "documentation": "<p>A unique identifier for a fleet to update runtime configuration for. You can use either the fleet ID or ARN value.</p>"
        },
        "RuntimeConfiguration": {
          "shape": "RuntimeConfiguration",
          "documentation": "<p>Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime Servers script. The runtime configuration lists the types of server processes to run on an instance and includes the following configuration settings: the server executable or launch script file, launch parameters, and the number of processes to run concurrently on each instance. A CreateFleet request must include a runtime configuration with at least one server process configuration.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "UpdateRuntimeConfigurationOutput": {
      "type": "structure",
      "members": {
        "RuntimeConfiguration": {
          "shape": "RuntimeConfiguration",
          "documentation": "<p>The runtime configuration currently in force. If the update was successful, this object matches the one in the request.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "UpdateScriptInput": {
      "type": "structure",
      "required": [
        "ScriptId"
      ],
      "members": {
        "ScriptId": {
          "shape": "ScriptIdOrArn",
          "documentation": "<p>A unique identifier for a Realtime script to update. You can use either the script ID or ARN value.</p>"
        },
        "Name": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>"
        },
        "Version": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>The version that is associated with a build or script. Version strings do not need to be unique.</p>"
        },
        "StorageLocation": {
          "shape": "S3Location",
          "documentation": "<p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the \"key\"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3 bucket must be in the same Region where you want to create a new script. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier version. </p>"
        },
        "ZipFile": {
          "shape": "ZipBlob",
          "documentation": "<p>A data object containing your Realtime scripts and dependencies as a zip file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.</p> <p>When using the AWS CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the string \"fileb://\" to indicate that the file data is a binary object. For example: <code>--zip-file fileb://myRealtimeScript.zip</code>.</p>"
        }
      }
    },
    "UpdateScriptOutput": {
      "type": "structure",
      "members": {
        "Script": {
          "shape": "Script",
          "documentation": "<p>The newly created script record with a unique script ID. The new script's storage location reflects an Amazon S3 location: (1) If the script was uploaded from an S3 bucket under your account, the storage location reflects the information that was provided in the <i>CreateScript</i> request; (2) If the script file was uploaded from a local zip file, the storage location reflects an S3 location controls by the Amazon GameLift service.</p>"
        }
      }
    },
    "ValidateMatchmakingRuleSetInput": {
      "type": "structure",
      "required": [
        "RuleSetBody"
      ],
      "members": {
        "RuleSetBody": {
          "shape": "RuleSetBody",
          "documentation": "<p>A collection of matchmaking rules to validate, formatted as a JSON string.</p>"
        }
      },
      "documentation": "<p>Represents the input for a request operation.</p>"
    },
    "ValidateMatchmakingRuleSetOutput": {
      "type": "structure",
      "members": {
        "Valid": {
          "shape": "BooleanModel",
          "documentation": "<p>A response indicating whether the rule set is valid.</p>"
        }
      },
      "documentation": "<p>Represents the returned data in response to a request operation.</p>"
    },
    "VpcPeeringAuthorization": {
      "type": "structure",
      "members": {
        "GameLiftAwsAccountId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the AWS account that you use to manage your Amazon GameLift fleet. You can find your Account ID in the AWS Management Console under account settings.</p>"
        },
        "PeerVpcAwsAccountId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p/>"
        },
        "PeerVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this authorization was issued. Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        },
        "ExpirationTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp indicating when this authorization expires (24 hours after issuance). Format is a number expressed in Unix time as milliseconds (for example \"1469498468.057\").</p>"
        }
      },
      "documentation": "<p>Represents an authorization for a VPC peering connection between the VPC for an Amazon GameLift fleet and another VPC on an account you have access to. This authorization must exist and be valid for the peering connection to be established. Authorizations are valid for 24 hours after they are issued.</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "VpcPeeringAuthorizationList": {
      "type": "list",
      "member": {
        "shape": "VpcPeeringAuthorization"
      }
    },
    "VpcPeeringConnection": {
      "type": "structure",
      "members": {
        "FleetId": {
          "shape": "FleetId",
          "documentation": "<p>A unique identifier for a fleet. This ID determines the ID of the Amazon GameLift VPC for your fleet.</p>"
        },
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p> The Amazon Resource Name (<a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a>) associated with the GameLift fleet resource for this connection. </p>"
        },
        "IpV4CidrBlock": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>CIDR block of IPv4 addresses assigned to the VPC peering connection for the GameLift VPC. The peered VPC also has an IPv4 CIDR block associated with it; these blocks cannot overlap or the peering connection cannot be created. </p>"
        },
        "VpcPeeringConnectionId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier that is automatically assigned to the connection record. This ID is referenced in VPC peering connection events, and is used when deleting a connection with <a>DeleteVpcPeeringConnection</a>. </p>"
        },
        "Status": {
          "shape": "VpcPeeringConnectionStatus",
          "documentation": "<p>The status information about the connection. Status indicates if a connection is pending, successful, or failed.</p>"
        },
        "PeerVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region where your fleet is deployed. Look up a VPC ID using the <a href=\"https://console.aws.amazon.com/vpc/\">VPC Dashboard</a> in the AWS Management Console. Learn more about VPC peering in <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html\">VPC Peering with Amazon GameLift Fleets</a>.</p>"
        },
        "GameLiftVpcId": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>A unique identifier for the VPC that contains the Amazon GameLift fleet for this connection. This VPC is managed by Amazon GameLift and does not appear in your AWS account. </p>"
        }
      },
      "documentation": "<p>Represents a peering connection between a VPC on one of your AWS accounts and the VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a pending connection that has not yet been established.</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>"
    },
    "VpcPeeringConnectionList": {
      "type": "list",
      "member": {
        "shape": "VpcPeeringConnection"
      }
    },
    "VpcPeeringConnectionStatus": {
      "type": "structure",
      "members": {
        "Code": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Code indicating the status of a VPC peering connection.</p>"
        },
        "Message": {
          "shape": "NonZeroAndMaxString",
          "documentation": "<p>Additional messaging associated with the connection status. </p>"
        }
      },
      "documentation": "<p>Represents status information for a VPC peering connection. Status is associated with a <a>VpcPeeringConnection</a> object. Status codes and messages are provided from EC2 (see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html\">VpcPeeringConnectionStateReason</a>). Connection status information is also communicated as a fleet <a>Event</a>.</p>"
    },
    "VpcSubnet": {
      "type": "string",
      "max": 24,
      "min": 15,
      "pattern": "^subnet-[0-9a-z]+$"
    },
    "VpcSubnets": {
      "type": "list",
      "member": {
        "shape": "VpcSubnet"
      },
      "max": 20,
      "min": 1
    },
    "WeightedCapacity": {
      "type": "string",
      "max": 3,
      "min": 1,
      "pattern": "^[\\u0031-\\u0039][\\u0030-\\u0039]{0,2}$"
    },
    "WholeNumber": {
      "type": "integer",
      "min": 0
    },
    "ZipBlob": {
      "type": "blob",
      "max": 5000000
    }
  },
  "documentation": "<fullname>Amazon GameLift Service</fullname> <p>GameLift provides solutions for hosting session-based multiplayer game servers in the cloud, including tools for deploying, operating, and scaling game servers. Built on AWS global computing infrastructure, GameLift helps you deliver high-performance, high-reliability, low-cost game servers while dynamically scaling your resource usage to meet player demand. </p> <p> <b>About GameLift solutions</b> </p> <p>Get more information on these GameLift solutions in the <a href=\"http://docs.aws.amazon.com/gamelift/latest/developerguide/\">Amazon GameLift Developer Guide</a>.</p> <ul> <li> <p>Managed GameLift -- GameLift offers a fully managed service to set up and maintain computing machines for hosting, manage game session and player session life cycle, and handle security, storage, and performance tracking. You can use automatic scaling tools to balance hosting costs against meeting player demand., configure your game session management to minimize player latency, or add FlexMatch for matchmaking.</p> </li> <li> <p>Managed GameLift with Realtime Servers – With GameLift Realtime Servers, you can quickly configure and set up game servers for your game. Realtime Servers provides a game server framework with core Amazon GameLift infrastructure already built in.</p> </li> <li> <p>GameLift FleetIQ – Use GameLift FleetIQ as a standalone feature while managing your own EC2 instances and Auto Scaling groups for game hosting. GameLift FleetIQ provides optimizations that make low-cost Spot Instances viable for game hosting. </p> </li> </ul> <p> <b>About this API Reference</b> </p> <p>This reference guide describes the low-level service API for Amazon GameLift. You can find links to language-specific SDK guides and the AWS CLI reference with each operation and data type topic. Useful links:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html\">GameLift API operations listed by tasks</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html\"> GameLift tools and resources</a> </p> </li> </ul>"
}
]===]))
