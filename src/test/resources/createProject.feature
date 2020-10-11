Feature: Project
  @Kev
  Scenario: As a user I want to create a user account.
    Given I send GET request 'api/authentication/token.json'with json
    """
    """
    Then I expected the response code 200

    And I expected the response body is equal
    """
    {
    "TokenString": "EXCLUDE",
    "UserEmail": "zkpain@yopmail.com",
    "ExpirationTime": "EXCLUDE"
    }
    """
    And I get the property value 'TokenString' and save on TOKEN


    # consumiendo el request
    When I send POST request 'api/user.json' with TOKEN and with json
    """
  {
    "Email": "zkpain@yopmail.com",
    "FullName": "Joe Doe k",
    "Password": "yop123"
  }
    """
    # verificar el response
    Then I expected the response code 200


    When I send PUT request 'api/user/0.json' with TOKEN and with json
    """
    {
    "FullName": "Kevin Herrera"
    }
    """

    # verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
    "Id": "EXCLUDE",
    "Email": "zkpain@yopmail.com",
    "Password": "EXCLUDE",
    "FullName": "Kevin Herrera",
    "TimeZone": 0,
    "IsProUser": false,
    "DefaultProjectId": "EXCLUDE",
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": 0,
    "FirstDayOfWeek": 0,
    "NewTaskDueDate": -1,
    "TimeZoneId": "EXCLUDE"
    }
    """
    When I send GET request 'api/user.json' with TOKEN and with json
    """
    """
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
    "Id":"EXCLUDE",
    "Email": "zkpain@yopmail.com",
    "Password": "EXCLUDE",
    "FullName": "Kevin Herrera",
    "TimeZone": 0,
    "IsProUser": false,
    "DefaultProjectId":"EXCLUDE",
    "AddItemMoreExpanded": false,
    "EditDueDateMoreExpanded": false,
    "ListSortType": 0,
    "FirstDayOfWeek": 0,
    "NewTaskDueDate": -1,
    "TimeZoneId": "EXCLUDE"
}
    """

  Scenario: As a user I want to create items
    Given I send GET request 'api/authentication/token.json'with json
    """
    """
    Then I expected the response code 200

    And I expected the response body is equal
    """
    {
    "TokenString": "EXCLUDE",
    "UserEmail": "zkpain@yopmail.com",
    "ExpirationTime": "EXCLUDE"
    }
    """
    And I get the property value 'TokenString' and save on TOKEN
 # consumiendo el request
    When I send POST request 'api/items.json' with TOKEN and with json
    """
    {
    "Content": "New Item"
    }
    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """
 {
    "Id": "EXCLUDE",
    "Content": "New Item",
    "ItemType": 1,
    "Checked": false,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": false,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
}
    """
    And I get the property value 'Id' and save on ID_ITEM
    And I get the property value 'Content' and save on NAME_ITEM

    When I send PUT request 'api/items/ID_ITEM.json' with TOKEN and with json
    """
  {
    "Checked": "true"
  }
    """

    # verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """

    {
    "Id": ID_ITEM,
    "Content": "NAME_ITEM",
    "ItemType": 1,
    "Checked": true,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": false,
    "Notes": "",
    "InHistory": true,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
}
    """
    When I send GET request 'api/items/ID_ITEM.json' with TOKEN and with json
    """

    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """

   {
    "Id": ID_ITEM,
    "Content": "NAME_ITEM",
    "ItemType": 1,
    "Checked": true,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": "EXCLUDE",
    "Notes": "",
    "InHistory": true,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
    }

    """
    When I send DELETE request 'api/items/ID_ITEM.json' with TOKEN and with json
    """
    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
    "Id": ID_ITEM,
    "Content": NAME_ITEM,
    "ItemType": 1,
    "Checked": true,
    "ProjectId": null,
    "ParentId": null,
    "Path": "",
    "Collapsed": false,
    "DateString": null,
    "DateStringPriority": 0,
    "DueDate": "",
    "Recurrence": null,
    "ItemOrder": "EXCLUDE",
    "Priority": 4,
    "LastSyncedDateTime": "EXCLUDE",
    "Children": [],
    "DueDateTime": null,
    "CreatedDate": "EXCLUDE",
    "LastCheckedDate": "EXCLUDE",
    "LastUpdatedDate": "EXCLUDE",
    "Deleted": true,
    "Notes": "",
    "InHistory": true,
    "SyncClientCreationId": null,
    "DueTimeSpecified": true,
    "OwnerId": 676070
    }
    """

  Scenario: As a user I want to create a project so that organize my task
    Given I send GET request 'api/authentication/token.json'with json
    """
    """
    Then I expected the response code 200

    And I expected the response body is equal
    """
    {
    "TokenString": "EXCLUDE",
    "UserEmail": "zkpain@yopmail.com",
    "ExpirationTime": "EXCLUDE"
    }
    """
    And I get the property value 'TokenString' and save on TOKEN
    # consumiendo el request
    When I send POST request 'api/projects.json' with TOKEN and with json
    """
    {
       "Content":"KEV",
       "Icon": 4
    }
    """
    # verificar el response
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": "EXCLUDE",
        "Content": "KEV",
        "ItemsCount": 0,
        "Icon": 4,
        "ItemType": 2,
        "ParentId": "EXCLUDE",
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """

    And I get the property value 'Id' and save on ID_PROJECT
    And I get the property value 'Content' and save on NAME_PROJECT

    When I send PUT request 'api/projects/ID_PROJECT.json' with TOKEN and with json
    """
    {
       "Content":"NAME_PROJECT UPDATE",
       "Icon": 4
    }
    """

    # verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": ID_PROJECT,
        "Content": "NAME_PROJECT UPDATE",
        "ItemsCount": 0,
        "Icon": 4,
        "ItemType": 2,
        "ParentId": "EXCLUDE",
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime": "EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    When I send GET request 'api/projects/ID_PROJECT.json' with TOKEN and with json
    """
    """
    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": ID_PROJECT,
        "Content": "NAME_PROJECT UPDATE",
        "ItemsCount": 0,
        "Icon": 4,
        "ItemType": 2,
        "ParentId": "EXCLUDE",
        "Collapsed": false,
        "ItemOrder": "EXCLUDE",
        "Children": [],
        "IsProjectShared": false,
        "ProjectShareOwnerName": null,
        "ProjectShareOwnerEmail": null,
        "IsShareApproved": false,
        "IsOwnProject": true,
        "LastSyncedDateTime":"EXCLUDE",
        "LastUpdatedDate": "EXCLUDE",
        "Deleted": false,
        "SyncClientCreationId": null
    }
    """
    When I send DELETE request 'api/projects/ID_PROJECT.json' with TOKEN and with json
    """
    """
    Then I expected the response code 200
