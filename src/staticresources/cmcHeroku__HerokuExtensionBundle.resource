{
  "recordTypeMap": {
      "0121x000002KqNlAAK": {
          "attributes": {
              "type": "RecordType",
              "url": "/services/data/v51.0/sobjects/RecordType/0121x000002KqNlAAK"
          },
          "Id": "0121x000002KqNlAAK",
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
                      "url": "/services/data/v51.0/sobjects/copado__Deployment__c/a0W1x000001oj2fEAA"
                  },
                  "copado__Active__c": true,
                  "copado__ApiName__c": "Heroku_Deploy",
                  "copado__Attach_Deployment_File__c": false,
                  "copado__Deployment_Completed_email_sent__c": false,
                  "copado__Do_Not_Update_Promotion__c": false,
                  "copado__Execution_Context__c": "Deployment",
                  "copado__Paused__c": false,
                  "copado__Send_Deployment_Complete_email__c": true,
                  "copado__Status__c": "Draft",
                  "Id": "a0W1x000001oj2fEAA",
                  "Name": "Heroku_Deploy",
                  "RecordTypeId": "0121x000002KqNlAAK"
              },
              {
                  "attributes": {
                      "type": "copado__Deployment__c",
                      "url": "/services/data/v51.0/sobjects/copado__Deployment__c/a0W1x000001oj3wEAA"
                  },
                  "copado__Active__c": true,
                  "copado__ApiName__c": "Heroku_Promote",
                  "copado__Attach_Deployment_File__c": false,
                  "copado__Deployment_Completed_email_sent__c": false,
                  "copado__Do_Not_Update_Promotion__c": false,
                  "copado__Execution_Context__c": "Deployment",
                  "copado__Paused__c": false,
                  "copado__Send_Deployment_Complete_email__c": true,
                  "copado__Status__c": "Draft",
                  "Id": "a0W1x000001oj3wEAA",
                  "Name": "Heroku_Promote",
                  "RecordTypeId": "0121x000002KqNlAAK"
              }
          ],
          "ObjectType": "copado__Deployment__c"
      },
      {
          "Records": [
              {
                  "attributes": {
                      "type": "copado__Step__c",
                      "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1x0000015Fe3EAE"
                  },
                  "copado__ApiName__c": "Heroku_Deploy_Collect Deployment Data",
                  "copado__CheckOnly__c": false,
                  "copado__dataJson__c": "{\"flowApiName\":\"copado.Get_Promotion_User_Story_Names\",\"type\":\"continue\",\"flowParameters\":[[\"jobId\",\"{!Deployment.JobId}\"]]}",
                  "copado__Deployment__c": "a0W1x000001oj2fEAA",
                  "copado__Manual_Task_Notified__c": false,
                  "copado__Notify_Task_Owner__c": "None",
                  "copado__Order__c": 1,
                  "copado__Read_Only__c": false,
                  "copado__Run_all_tests__c": false,
                  "copado__Status__c": "Not started",
                  "copado__Type__c": "Salesforce Flow",
                  "Id": "a1T1x0000015Fe3EAE",
                  "Name": "Collect Deployment Data"
              },
              {
                  "attributes": {
                      "type": "copado__Step__c",
                      "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1x0000015Fe4EAE"
                  },
                  "copado__ApiName__c": "Heroku_Deploy_Heroku Deploy",
                  "copado__CheckOnly__c": false,
                  "copado__dataJson__c": "{\"functionAPIName\":\"Heroku_Deploy\",\"functionParameters\":[{\"name\":\"git_json\",\"value\":\"{$RecordId.Repository.Credential}\"},{\"name\":\"promotion\",\"value\":\"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"},{\"name\":\"app_name\",\"value\":\"{$Destination.Property.app_name}\"},{\"name\":\"heroku_api_key\",\"value\":\"{$Pipeline.Property.heroku_api_key}\"},{\"name\":\"target_branch\",\"value\":\"{$RecordId.PrevStep.JSONResult.target_branch}\"}]}",
                  "copado__Deployment__c": "a0W1x000001oj2fEAA",
                  "copado__Manual_Task_Notified__c": false,
                  "copado__Notify_Task_Owner__c": "None",
                  "copado__Order__c": 2,
                  "copado__Read_Only__c": false,
                  "copado__Run_all_tests__c": false,
                  "copado__Status__c": "Not started",
                  "copado__Type__c": "Function",
                  "Id": "a1T1x0000015Fe4EAE",
                  "Name": "Heroku Deploy"
              },
              {
                  "attributes": {
                      "type": "copado__Step__c",
                      "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1x0000015Fe5EAE"
                  },
                  "copado__ApiName__c": "Heroku_Promote_Heroku Promote",
                  "copado__CheckOnly__c": false,
                  "copado__dataJson__c": "{\"functionAPIName\":\"Heroku_Promote\",\"functionParameters\":[{\"name\":\"git_json\",\"value\":\"{$RecordId.Repository.Credential}\"},{\"name\":\"user_stories\",\"value\":\"{$RecordId.PrevStep.JSONResult.user_stories}\"},{\"name\":\"promotion\",\"value\":\"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"},{\"name\":\"target_branch\",\"value\":\"{$RecordId.PrevStep.JSONResult.target_branch}\"},{\"name\":\"tag\",\"value\":\"{$RecordId.Step__r.Deployment__r.Promotion__r.Release__r.Version__c}\"},{\"name\":\"merge_strategy\",\"value\":\"theirs\"}]}",
                  "copado__Deployment__c": "a0W1x000001oj3wEAA",
                  "copado__Manual_Task_Notified__c": false,
                  "copado__Notify_Task_Owner__c": "None",
                  "copado__Order__c": 2,
                  "copado__Read_Only__c": false,
                  "copado__Run_all_tests__c": false,
                  "copado__Status__c": "Not started",
                  "copado__Type__c": "Function",
                  "Id": "a1T1x0000015Fe5EAE",
                  "Name": "Heroku Promote"
              },
              {
                  "attributes": {
                      "type": "copado__Step__c",
                      "url": "/services/data/v51.0/sobjects/copado__Step__c/a1T1x0000015Fe6EAE"
                  },
                  "copado__ApiName__c": "Heroku_Promote_Collect Promotion Data",
                  "copado__CheckOnly__c": false,
                  "copado__dataJson__c": "{\"flowApiName\":\"copado.Get_Promotion_User_Story_Names\",\"type\":\"continue\",\"flowParameters\":[[\"jobId\",\"{!Deployment.JobId}\"]]}",
                  "copado__Deployment__c": "a0W1x000001oj3wEAA",
                  "copado__Manual_Task_Notified__c": false,
                  "copado__Notify_Task_Owner__c": "None",
                  "copado__Order__c": 1,
                  "copado__Read_Only__c": false,
                  "copado__Run_all_tests__c": false,
                  "copado__Status__c": "Not started",
                  "copado__Type__c": "Salesforce Flow",
                  "Id": "a1T1x0000015Fe6EAE",
                  "Name": "Collect Promotion Data"
              }
          ],
          "ObjectType": "copado__Step__c"
      },
      {
          "Records": [
              {
                  "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v51.0/sobjects/copado__Function__c/a0g1x0000045mhDAAQ"
                  },
                  "copado__API_Name__c": "Heroku_Promote",
                  "copado__Image_Name__c": "us.gcr.io/copado/copado-function-core:v1",
                  "copado__Options__c": "[ ]",
                  "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$RecordId.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"user_stories\",\n  \"defaultValue\" : \"{$RecordId.PrevStep.JSONResult.user_stories}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$RecordId.PrevStep.JSONResult.target_branch}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"tag\",\n  \"defaultValue\" : \"{$RecordId.Step__r.Deployment__r.Promotion__r.Release__r.Version__c}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"merge_strategy\",\n  \"defaultValue\" : \"theirs\"\n} ]",
                  "copado__Script__c": "promotion_branch=\"promotion/$promotion\"\ngit_depth=${git_depth:-100}  # set a default git depth of 100 commits\nmerge_strategy=${merge_strategy-theirs} # set default merge strategy to ours (only if unset)\nif [ -n \"$merge_strategy\" ]; then merge_strategy_option=(-X \"$merge_strategy\"); else merge_strategy_option=(); fi\n\necho \"promotion branch: $promotion_branch\"\necho \"merge strategy: $merge_strategy\"\necho \"user stories: $user_stories\"\necho \"git_depth: $git_depth\"\n\ncopado --progress \"fetching $target_branch\"\ncopado-git-get --depth \"$git_depth\" \"$target_branch\"\ncopado-git-get --depth \"$git_depth\" --create \"$promotion_branch\"\n\nfor user_story in ${user_stories//,/}\ndo\n    echo \"merging feature/$user_story\"\n    copado-git-get --depth \"$git_depth\" \"feature/$user_story\"\n    git checkout \"$promotion_branch\"\n    git merge \"${merge_strategy_option[@]}\" -m \"auto resolved feature/$user_story win over $promotion_branch\" \"feature/$user_story\"\ndone\n\ncopado --progress \"pushing $promotion_branch $tag\"\n\nif [ -n \"$tag\" ]; then\n    git tag \"$tag\"\n    git push --atomic origin \"$promotion_branch\" \"$tag\"\nelse\n    echo \"not tag specified\"\n    git push origin \"$promotion_branch\"\nfi",
                  "copado__Timeout__c": 5,
                  "copado__Type__c": "Custom",
                  "Id": "a0g1x0000045mhDAAQ",
                  "Name": "Heroku Promote"
              },
              {
                  "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v51.0/sobjects/copado__Function__c/a0g1x0000045mhEAAQ"
                  },
                  "copado__API_Name__c": "Heroku_Deploy",
                  "copado__Description__c": "Deploy to heroku",
                  "copado__Image_Name__c": "us.gcr.io/copado/copado-multicloud-dpl:v1",
                  "copado__Options__c": "[ ]",
                  "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$RecordId.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$RecordId.Step__r.Deployment__r.Promotion__r.Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"app_name\",\n  \"defaultValue\" : \"{$Destination.Property.app_name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"heroku_api_key\",\n  \"defaultValue\" : \"{$Pipeline.Property.heroku_api_key}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$RecordId.PrevStep.JSONResult.target_branch}\"\n} ]",
                  "copado__Script__c": "branch=\"promotion/$promotion\"\ncopado --progress \"fetching $branch\"\ncopado-git-get \"$branch\"\ncopado --progress \"deploying $app_name\"\ndpl --provider=heroku --api_key=\"$heroku_api_key\" --app=\"$app_name\"\ncopado-git-get --depth 100 \"$target_branch\"\ngit merge \"$branch\"\ngit push origin \"$target_branch\"",
                  "copado__Timeout__c": 5,
                  "copado__Type__c": "Custom",
                  "Id": "a0g1x0000045mhEAAQ",
                  "Name": "Heroku Deploy"
              }
          ],
          "ObjectType": "copado__Function__c"
      }
  ],
  "blobsByUID": {}
}