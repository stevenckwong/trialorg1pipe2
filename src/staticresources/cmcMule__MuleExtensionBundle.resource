{
  "recordTypeMap": {
    "0121j000002nvOhAAI": {
      "attributes": {
        "type": "RecordType",
        "url": "/services/data/v51.0/sobjects/RecordType/0121j000002nvOhAAI"
      },
      "Id": "0121j000002nvOhAAI",
      "Description": "Group of steps to be executed in the future.",
      "DeveloperName": "Automation_Template",
      "Name": "Automation Template",
      "SobjectType": "copado__Deployment__c",
      "NamespacePrefix": "copado"
    }
  },
  "RecordSetBundles": [
    {
      "Records": [
        {
          "attributes": {
            "type": "copado__Deployment__c",
            "url": "/services/data/v51.0/sobjects/copado__Deployment__c/a0W1j000002RS4SEAW"
          },
          "copado__Active__c": true,
          "copado__ApiName__c": "Mule_Deploy",
          "copado__Attach_Deployment_File__c": false,
          "copado__Deployment_Completed_email_sent__c": false,
          "copado__Description__c": "Automation template to deploy Mule app",
          "copado__Do_Not_Update_Promotion__c": false,
          "copado__Execution_Context__c": "Deployment",
          "copado__Paused__c": false,
          "copado__Send_Deployment_Complete_email__c": true,
          "copado__Status__c": "In progress",
          "Id": "a0W1j000002RS4SEAW",
          "Name": "Mule_Deploy",
          "RecordTypeId": "0121j000002nvOhAAI"
        },
        {
          "attributes": {
            "type": "copado__Deployment__c",
            "url": "/services/data/v51.0/sobjects/copado__Deployment__c/a0W1j000002RS4TEAW"
          },
          "copado__Active__c": true,
          "copado__ApiName__c": "Mule_Promote",
          "copado__Attach_Deployment_File__c": false,
          "copado__Deployment_Completed_email_sent__c": false,
          "copado__Description__c": "Automation template to promote a mule app",
          "copado__Do_Not_Update_Promotion__c": false,
          "copado__Execution_Context__c": "Deployment",
          "copado__Paused__c": false,
          "copado__Send_Deployment_Complete_email__c": true,
          "copado__Status__c": "In progress",
          "Id": "a0W1j000002RS4TEAW",
          "Name": "Mule_Promote",
          "RecordTypeId": "0121j000002nvOhAAI"
        }
      ],
      "ObjectType": "copado__Deployment__c"
    },
    {
      "Records": [
        {
          "attributes": {
            "type": "copado__Step__c",
            "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1j000000Z98vEAC"
          },
          "copado__ApiName__c": "Mule_Deploy_Collect Promotion Data",
          "copado__CheckOnly__c": false,
          "copado__dataJson__c": "{\"flowApiName\":\"copado.Get_Promotion_User_Story_Names\",\"type\":\"continue\",\"flowParameters\":[[\"jobId\",\"{!Deployment.JobId}\"]]}",
          "copado__Deployment__c": "a0W1j000002RS4SEAW",
          "copado__Manual_Task_Notified__c": false,
          "copado__Notify_Task_Owner__c": "None",
          "copado__Order__c": 1,
          "copado__Read_Only__c": false,
          "copado__Run_all_tests__c": false,
          "copado__Status__c": "Not started",
          "copado__Type__c": "Salesforce Flow",
          "Id": "a1T1j000000Z98vEAC",
          "Name": "Collect Promotion Data"
        },
        {
          "attributes": {
            "type": "copado__Step__c",
            "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1j000000Z98wEAC"
          },
          "copado__ApiName__c": "Mule_Deploy_Mule_Deploy",
          "copado__CheckOnly__c": false,
          "copado__dataJson__c": "{\"functionAPIName\":\"Mule_Deploy\",\"functionParameters\":[{\"name\":\"git_json\",\"value\":\"{$RecordId.Repository.Credential}\"},{\"name\":\"promotion\",\"value\":\"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"},{\"name\":\"app_name\",\"value\":\"{$Destination.Property.Mule_App_Name}\"},{\"name\":\"client_id\",\"value\":\"{$Pipeline.Property.Mule_Client_Id}\"},{\"name\":\"client_secret\",\"value\":\"{$Pipeline.Property.Mule_Client_Secret}\"},{\"name\":\"environment_name\",\"value\":\"{$Destination.Property.Mule_Environment_Name}\"},{\"name\":\"target_branch\",\"value\":\"{$RecordId.PrevStep.JSONResult.target_branch}\"},{\"name\":\"worker_count\",\"value\":\"{$Destination.Property.Mule_Worker_Count}\"},{\"name\":\"worker_type\",\"value\":\"{$Destination.Property.Mule_Worker_Type}\"},{\"name\":\"skip_test\",\"value\":\"{$Destination.Property.Mule_Skip_Test}\"},{\"name\":\"runtime_version\",\"value\":\"{$Pipeline.Property.Mule_Runtime_Version}\"},{\"name\":\"enterprise_username\",\"value\":\"\"},{\"name\":\"enterprise_password\",\"value\":\"\"}]}",
          "copado__Deployment__c": "a0W1j000002RS4SEAW",
          "copado__Manual_Task_Notified__c": false,
          "copado__Notify_Task_Owner__c": "None",
          "copado__Order__c": 2,
          "copado__Read_Only__c": false,
          "copado__Run_all_tests__c": false,
          "copado__Status__c": "Not started",
          "copado__Type__c": "Function",
          "Id": "a1T1j000000Z98wEAC",
          "Name": "Mule_Deploy"
        },
        {
          "attributes": {
            "type": "copado__Step__c",
            "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1j000000Z98xEAC"
          },
          "copado__ApiName__c": "Mule_Promote_Collect Promotion Data",
          "copado__CheckOnly__c": false,
          "copado__dataJson__c": "{\"flowApiName\":\"copado.Get_Promotion_User_Story_Names\",\"type\":\"continue\",\"flowParameters\":[[\"jobId\",\"{!Deployment.JobId}\"]]}",
          "copado__Deployment__c": "a0W1j000002RS4TEAW",
          "copado__Manual_Task_Notified__c": false,
          "copado__Notify_Task_Owner__c": "None",
          "copado__Order__c": 1,
          "copado__Read_Only__c": false,
          "copado__Run_all_tests__c": false,
          "copado__Status__c": "Not started",
          "copado__Type__c": "Salesforce Flow",
          "Id": "a1T1j000000Z98xEAC",
          "Name": "Collect Promotion Data"
        },
        {
          "attributes": {
            "type": "copado__Step__c",
            "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1j000000Z98yEAC"
          },
          "copado__ApiName__c": "Mule_Promote_Copado Promote",
          "copado__CheckOnly__c": false,
          "copado__dataJson__c": "{\"functionAPIName\":\"Mule_Promote\",\"functionParameters\":[{\"name\":\"git_json\",\"value\":\"{$RecordId.Repository.Credential}\"},{\"name\":\"user_stories\",\"value\":\"{$RecordId.PrevStep.JSONResult.user_stories}\"},{\"name\":\"promotion\",\"value\":\"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"},{\"name\":\"target_branch\",\"value\":\"{$RecordId.PrevStep.JSONResult.target_branch}\"},{\"name\":\"tag\",\"value\":\"{$RecordId.Step__r.Deployment__r.Promotion__r.Release__r.Version__c}\"},{\"name\":\"merge_strategy\",\"value\":\"theirs\"}]}",
          "copado__Deployment__c": "a0W1j000002RS4TEAW",
          "copado__Manual_Task_Notified__c": false,
          "copado__Notify_Task_Owner__c": "None",
          "copado__Order__c": 2,
          "copado__Read_Only__c": false,
          "copado__Run_all_tests__c": false,
          "copado__Status__c": "Not started",
          "copado__Type__c": "Function",
          "Id": "a1T1j000000Z98yEAC",
          "Name": "Mule_Promote"
        }
      ],
      "ObjectType": "copado__Step__c"
    },
    {
      "Records": [
        {
          "attributes": {
            "type": "copado__Function__c",
            "url": "/services/data/v51.0/sobjects/copado__Function__c/a0g1j00000J2HhuAAF"
          },
          "copado__API_Name__c": "Mule_Deploy",
          "copado__Description__c": "A copado function to deploy mule app using maven\r\nIt uses OAuth floe to authenticate with mule app",
          "copado__Image_Name__c": "us.gcr.io/copado/copado-multicloud-mulesoft:v1",
          "copado__Options__c": "[ ]",
          "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$RecordId.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"app_name\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_App_Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"client_id\",\n  \"defaultValue\" : \"{$Pipeline.Property.Mule_Client_Id}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"client_secret\",\n  \"defaultValue\" : \"{$Pipeline.Property.Mule_Client_Secret}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"environment_name\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Environment_Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$RecordId.PrevStep.JSONResult.target_branch}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"worker_count\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Worker_Count}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"worker_type\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Worker_Type}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"skip_test\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Skip_Test}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"runtime_version\",\n  \"defaultValue\" : \"{$Pipeline.Property.Mule_Runtime_Version}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"enterprise_username\"\n}, {\n  \"required\" : false,\n  \"name\" : \"enterprise_password\"\n} ]",
          "copado__Script__c": "branch=\"promotion/$promotion\"\ncopado --progress \"fetching $branch\"\ncopado-git-get \"$branch\"\ncopado --progress \"deploying $app_name\"\ncopado --progress \"starting deployment\"\n\nmkdir -p /home/func/.m2\ncat << __EOF__ > /home/func/.m2/settings.xml\n    <servers>\n    <server>\n        <id>MuleRepository</id>\n        <username>$enterprise_username</username>\n        <password>$enterprise_password</password>\n    </server>\n</servers>\n__EOF__\n\n\nif [ \"$skip_test\" = \"true\" ]; then skip_test_option=(-DskipTests); else skip_test_option=(); fi\n\nmvn clean package deploy -DmuleDeploy -e -Dclientid=\"$client_id\" -Dclientsecret=\"$client_secret\" -Dappname=\"$app_name\" -Denvironment=\"$environment_name\" -DworkerCount=\"$worker_count\" -DworkerType=\"$worker_type\" -Druntime_version=\"$runtime_version\"  \"${skip_test_option[@]}\"\n\ncopado-git-get --depth 100 \"$target_branch\"\ngit merge \"$branch\"\ngit push origin \"$target_branch\"",
          "copado__Type__c": "Custom",
          "Id": "a0g1j00000J2HhuAAF",
          "Name": "Mule_Deploy"
        },
        {
          "attributes": {
            "type": "copado__Function__c",
            "url": "/services/data/v51.0/sobjects/copado__Function__c/a0g1j00000J2HhvAAF"
          },
          "copado__API_Name__c": "Mule_Promote",
          "copado__Description__c": "Creates promotion branch",
          "copado__Image_Name__c": "us.gcr.io/copado/copado-function-core:v1",
          "copado__Options__c": "[ ]",
          "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$RecordId.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"user_stories\",\n  \"defaultValue\" : \"{$RecordId.PrevStep.JSONResult.user_stories}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$RecordId.PrevStep.JSONResult.target_branch}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"tag\",\n  \"defaultValue\" : \"{$RecordId.Step__r.Deployment__r.Promotion__r.Release__r.Version__c}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"merge_strategy\",\n  \"defaultValue\" : \"theirs\"\n} ]",
          "copado__Script__c": "promotion_branch=\"promotion/$promotion\"\ngit_depth=${git_depth:-100}  # set a default git depth of 100 commits\nmerge_strategy=${merge_strategy-theirs} # set default merge strategy to ours (only if unset)\nif [ -n \"$merge_strategy\" ]; then merge_strategy_option=(-X \"$merge_strategy\"); else merge_strategy_option=(); fi\n\necho \"promotion branch: $promotion_branch\"\necho \"merge strategy: $merge_strategy\"\necho \"user stories: $user_stories\"\necho \"git_depth: $git_depth\"\n\ncopado --progress \"fetching $target_branch\"\ncopado-git-get --depth \"$git_depth\" \"$target_branch\"\ncopado-git-get --depth \"$git_depth\" --create \"$promotion_branch\"\n\nfor user_story in ${user_stories//,/}\ndo\n    echo \"merging feature/$user_story\"\n    copado-git-get --depth \"$git_depth\" \"feature/$user_story\"\n    git checkout \"$promotion_branch\"\n    git merge \"${merge_strategy_option[@]}\" -m \"auto resolved feature/$user_story win over $promotion_branch\" \"feature/$user_story\"\ndone\n\ncopado --progress \"pushing $promotion_branch $tag\"\n\nif [ -n \"$tag\" ]; then\n    git tag \"$tag\"\n    git push --atomic origin \"$promotion_branch\" \"$tag\"\nelse\n    echo \"not tag specified\"\n    git push origin \"$promotion_branch\"\nfi",
          "copado__Type__c": "Custom",
          "Id": "a0g1j00000J2HhvAAF",
          "Name": "Mule_Promote"
        }
      ],
      "ObjectType": "copado__Function__c"
    }
  ],
  "blobsByUID": {}
}